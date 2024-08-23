import { Injectable, HttpException, HttpStatus } from '@nestjs/common';
import axios from 'axios';
import * as mysql from 'mysql2/promise';
import { databaseConfig } from '../config/database.config'; // Impor konfigurasi database

@Injectable()
export class PoliService {
  private readonly apiUrl = 'https://api-satusehat-stg.dto.kemkes.go.id/oauth2/v1/Location';
  private readonly dbConfig = databaseConfig; // Gunakan konfigurasi database

  async sendPoliData(accessToken: string, data: any): Promise<any> {
    const headers = {
      'Content-Type': 'application/json',
      'Authorization': `Bearer ${accessToken}`,
    };

    try {
      const response = await axios.post(this.apiUrl, data, { headers });
      
      // Simpan data ke database setelah berhasil mengirim data
      await this.saveToDatabase(data);

      // Log request dan respons
      await this.logRequest(this.apiUrl, JSON.stringify(data), response.status, response.data);

      return response.data;
    } catch (error) {
      console.error('Error sending poli data:', error);

      // Log error jika terjadi kesalahan
      await this.logRequest(this.apiUrl, JSON.stringify(data), error.response?.status || 500, error.message);

      throw new HttpException('Failed to send poli data', HttpStatus.BAD_REQUEST);
    }
  }

  // Fungsi untuk menyimpan data poli ke database
  private async saveToDatabase(data: any): Promise<void> {
    const connection = await mysql.createConnection(this.dbConfig);

    const query = `
      INSERT INTO poli (
        identifier_system, identifier_value, name, telecom_email, 
        telecom_url, physicalType_system, position_longitude, position_latitude, 
        position_altitude, managingOrganization_reference, status, description, 
        mode, telecom_phone, physicalType_code, physicalType_display
      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    `;

    const values = [
      data.identifier[0].system,
      data.identifier[0].value,
      data.name,
      data.telecom.find(t => t.system === 'email')?.value || null,
      data.telecom.find(t => t.system === 'url')?.value || null,
      data.physicalType.coding[0].system,
      data.position.longitude,
      data.position.latitude,
      data.position.altitude,
      data.managingOrganization.reference,
      data.status,
      data.description,
      data.mode,
      data.telecom.find(t => t.system === 'phone')?.value || null,
      data.physicalType.coding[0].code,
      data.physicalType.coding[0].display
    ];

    try {
      await connection.execute(query, values);
    } catch (error) {
      console.error('Error saving data to database:', error);
      throw new Error('Failed to save data to database');
    } finally {
      await connection.end();
    }
  }

  // Fungsi untuk mencatat log request ke database
  private async logRequest(url: string, request: string, statusCode: number, fullResponse: any): Promise<void> {
    const connection = await mysql.createConnection(this.dbConfig);

    const query = `
      INSERT INTO log_requests (
        url, request, status_code, full_response, created_at
      ) VALUES (?, ?, ?, ?, NOW())
    `;

    const values = [
      url,
      request,
      statusCode,
      JSON.stringify(fullResponse)
    ];

    try {
      await connection.execute(query, values);
    } catch (error) {
      console.error('Error logging request to database:', error);
      throw new Error('Failed to log request to database');
    } finally {
      await connection.end();
    }
  }
}
