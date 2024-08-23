import { Controller, Post, Body, Headers, HttpException, HttpStatus } from '@nestjs/common';
import { PoliService } from './poli.service';

@Controller('poli')
export class PoliController {
  constructor(private readonly poliService: PoliService) {}

  @Post('send-data')
  async sendPoliData(
    @Headers('Authorization') authorization: string,
    @Body() data: any,
  ): Promise<any> {
    if (!authorization) {
      throw new HttpException('Authorization header is missing', HttpStatus.UNAUTHORIZED);
    }

    const accessToken = authorization.replace('Bearer ', '');
    return await this.poliService.sendPoliData(accessToken, data);
  }
}
