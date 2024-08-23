import { Injectable } from '@nestjs/common';
import axios from 'axios';
import * as mysql from 'mysql2/promise';
import { databaseConfig } from '../config/database.config'; // Impor konfigurasi database

@Injectable()
export class AuthService {
  private readonly clientId = 'bbMQ5PMTHztJ2gDxAqIyunSAcMS4AzHJ98EPrcWL3h49zI7k';
  private readonly clientSecret = 'HmrAmvD1JdFQeTPu34DRWBbT4zkDIBuTesuKXYi73phNbXkJQZcVTOxGlrJc11o6';
  private readonly orgId = '100026305';

  private readonly dbConfig = databaseConfig; // Gunakan konfigurasi database dari database.config.ts

  async getToken(): Promise<string> {
    const url = 'https://api-satusehat-stg.dto.kemkes.go.id/oauth2/v1/accesstoken?grant_type=client_credentials';

    const headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
    };

    const data = `client_id=${this.clientId}&client_secret=${this.clientSecret}`;

    try {
      const response = await axios.post(url, data, { headers });
      await this.logRequest(url, data, response.status, response.data);
      return response.data.access_token;
    } catch (error) {
      console.error('Error fetching token:', error);
      await this.logRequest(url, data, error.response?.status || 500, error.message);
      throw new Error('Failed to fetch token');
    }
  }

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
