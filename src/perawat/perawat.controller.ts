import { Controller, Get, Post, Body } from '@nestjs/common';
import { PerawatService } from './perawat.service';

@Controller('perawat')
export class PerawatController {
  constructor(private readonly perawatService: PerawatService) {}

  // Endpoint untuk menambahkan perawat
  @Post('add')
  async addPerawat(
    @Body('nama') nama: string,
    @Body('poli') poli: string,
    @Body('no_hp') noHp: string,
    @Body('email') email: string,
  ): Promise<string> {
    try {
      await this.perawatService.addPerawat(nama, poli, noHp, email);
      return 'Perawat berhasil ditambahkan';
    } catch (error) {
      console.error(error);
      throw new Error('Gagal menambahkan perawat');
    }
  }

  // Endpoint untuk mendapatkan data perawat dengan poli terkait
  @Get('with-poli')
  async getPerawatWithPoli(): Promise<any> {
    return this.perawatService.getPerawatWithPoli();
  }
}
