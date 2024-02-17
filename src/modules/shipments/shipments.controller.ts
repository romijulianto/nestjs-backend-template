import {
  Controller,
  Get,
  HttpStatus,
  NotFoundException,
  Param,
  Query,
} from '@nestjs/common';
import { ShipmentsService } from './shipments.service';
import {
  ApiOkResponse,
  ApiOperation,
  ApiQuery,
  ApiTags,
} from '@nestjs/swagger';
import {
  ApiResponse,
  ApiResponseCustomMessage,
} from 'src/common/dto/api-response.dto';

@Controller('shipments')
@ApiTags('shipments')
export class ShipmentsController {
  constructor(private readonly shipmentsService: ShipmentsService) {}

  @Get('/gate-out')
  @ApiOperation({
    summary: 'Get shipment gateout by spbu, plat, plantcode',
    description: 'Get shipment gateout',
  })
  @ApiOkResponse()
  @ApiQuery({ name: 'spbu', required: false })
  @ApiQuery({ name: 'plat', required: false })
  @ApiQuery({ name: 'tbbm', required: false })
  async findShipmentGateout(
    @Query('spbu') spbu: string = '',
    @Query('plat') plat: string = '',
    @Query('tbbm') tbbm: string = '',
  ): Promise<ApiResponse<any>> {
    const data = await this.shipmentsService.getShipmentGateout(
      spbu,
      plat,
      tbbm,
    );
    if (!data || data.length === 0) {
      throw new NotFoundException(
        `${ApiResponseCustomMessage.SHIPMENT_NOT_FOUND} ${spbu} ${plat} ${tbbm}`,
      ).getResponse();
    }

    return new ApiResponse(HttpStatus.OK, 'success', data);
  }

  @Get('/end-close')
  @ApiOperation({
    summary: 'Get shipment end-close by spbu, plat, plantcode',
    description: 'Get shipment end-close',
  })
  @ApiOkResponse()
  @ApiQuery({ name: 'spbu', required: false })
  @ApiQuery({ name: 'plat', required: false })
  @ApiQuery({ name: 'tbbm', required: false })
  async findShipmentEnd(
    @Query('spbu') spbu: string = '',
    @Query('plat') plat: string = '',
    @Query('tbbm') tbbm: string = '',
  ): Promise<ApiResponse<any>> {
    const data = await this.shipmentsService.getShipmentEnd(spbu, plat, tbbm);
    if (!data || data.length === 0) {
      throw new NotFoundException(
        `${ApiResponseCustomMessage.SHIPMENT_NOT_FOUND} ${spbu} ${plat} ${tbbm}`,
      ).getResponse();
    }

    return new ApiResponse(HttpStatus.OK, 'success', data);
  }
}
