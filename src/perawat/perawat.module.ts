import { Module } from '@nestjs/common';
import { PerawatService } from './perawat.service';
import { PerawatController } from './perawat.controller';

@Module({
  controllers: [PerawatController],
  providers: [PerawatService],
})
export class PerawatModule {}
