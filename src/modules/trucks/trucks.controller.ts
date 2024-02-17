import {
  Controller,
  Get,
  Param,
  Query,
  NotFoundException,
  HttpStatus,
  BadGatewayException,
} from '@nestjs/common';
import { TrucksService } from './trucks.service';
import { ApiOkResponse, ApiOperation, ApiTags } from '@nestjs/swagger';
import { TruckEntity } from './entities/truck.entity';
import {
  ApiResponse,
  ApiResponseCustomMessage,
} from 'src/common/dto/api-response.dto';

@Controller('trucks')
@ApiTags('trucks')
export class TrucksController {
  constructor(private readonly trucksService: TrucksService) {}

  @Get('')
  @ApiOperation({
    summary: 'Get history location truck by plat and time',
    description: 'Get history truck',
  })
  @ApiOkResponse({ type: [TruckEntity] })
  async findTruckLocation(
    @Query('plat') plat: string,
    @Query('startDate') start: Date,
    @Query('endDate') end: Date,
  ): Promise<ApiResponse<any>> {
    try {
      const data = (
        await this.trucksService.getTruckLocation(plat, start, end)
      ).map((truckData) => new TruckEntity(truckData));
      if (!data || data.length === 0) {
        throw new NotFoundException(
          `${ApiResponseCustomMessage.VEHICLE_NOT_FOUND} ${plat} ${start} ${end}`,
        ).getResponse();
      }
      return new ApiResponse(HttpStatus.OK, 'success', data);
    } catch (error) {
      throw new BadGatewayException();
    }
  }

  @Get('/detail')
  @ApiOperation({
    summary: 'Get detil truck by plat',
    description: 'Get detil truck',
  })
  @ApiOkResponse()
  async findTruckDetail(
    @Query('plat') plat: string,
  ): Promise<ApiResponse<any>> {
    try {
      const data = await this.trucksService.getTruckDetail(plat);

      if (!data) {
        throw new NotFoundException(
          `${ApiResponseCustomMessage.VEHICLE_NOT_FOUND} ${plat}`,
        ).getResponse();
      }
      return new ApiResponse(HttpStatus.OK, 'success', data);
    } catch (error) {
      throw new BadGatewayException();
    }
  }
}
