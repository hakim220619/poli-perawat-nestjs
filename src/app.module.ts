import { Module } from '@nestjs/common';
import { AuthModule } from './auth/auth.module';
import { PerawatModule } from './perawat/perawat.module';
import { PoliModule } from './poli/poli.module';

@Module({
  imports: [AuthModule, PerawatModule, PoliModule],
})
export class AppModule {}
