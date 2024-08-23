import { Injectable } from '@nestjs/common';
import * as mysql from 'mysql2/promise';
import { databaseConfig } from '../config/database.config'; // Impor konfigurasi database

@Injectable()
export class PerawatService {
  private readonly dbConfig = databaseConfig;

  // Metode untuk menambahkan perawat ke database
  async addPerawat(nama: string, poli: string, noHp: string, email: string): Promise<void> {
    let connection: mysql.Connection | undefined;

    try {
      connection = await mysql.createConnection(this.dbConfig);

      const query = `
        INSERT INTO perawat (nama, poli, no_hp, email, created_at)
        VALUES (?, ?, ?, ?, NOW())
      `;

      const values = [nama, poli, noHp, email];

      await connection.execute(query, values);
    } catch (error) {
      console.error('Error inserting perawat data:', error);
      throw new Error('Failed to insert perawat data');
    } finally {
      if (connection) {
        await connection.end();
      }
    }
  }

  // Metode untuk mendapatkan data perawat yang di-join dengan poli berdasarkan nama poli
  async getPerawatWithPoli(): Promise<any> {
    let connection: mysql.Connection | undefined;

    try {
      connection = await mysql.createConnection(this.dbConfig);

      const query = `
        SELECT 
          perawat.id AS perawat_id, 
          perawat.nama AS perawat_nama, 
          perawat.no_hp, 
          perawat.email, 
          poli.name AS poli_nama, 
          poli.identifier_system, 
          poli.identifier_value, 
          poli.telecom_email, 
          poli.telecom_url
        FROM perawat
        JOIN poli ON perawat.poli = poli.name;
      `;

      const [rows] = await connection.execute(query);
      return rows;
    } catch (error) {
      console.error('Error fetching perawat with poli data:', error);
      throw new Error('Failed to fetch perawat with poli data');
    } finally {
      if (connection) {
        await connection.end();
      }
    }
  }
}
