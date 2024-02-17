import { ApiProperty } from '@nestjs/swagger';
import { MtGpsLastLocation } from '@prisma/client';

export class TruckEntity implements MtGpsLastLocation {
  @ApiProperty()
  ASSET_ID: string;

  @ApiProperty()
  EVENT_NAME: string;

  @ApiProperty()
  FLEET_ID: string;

  @ApiProperty()
  FLEET_NAME: string;

  @ApiProperty()
  GPS_TIME: Date;

  @ApiProperty()
  HEADING: string;

  @ApiProperty()
  ID: string;

  @ApiProperty()
  JALAN: string;

  @ApiProperty()
  KABUPATEN: string;

  @ApiProperty()
  KECAMATAN: string;

  @ApiProperty()
  LATITUDE: string;

  @ApiProperty()
  LONGITUDE: string;

  @ApiProperty()
  ODOMETER: string;

  @ApiProperty()
  PLATENO: string;

  @ApiProperty()
  SPEED: number;

  @ApiProperty()
  ZONENAME: string;

  @ApiProperty()
  INSERT_DATE: Date;

  constructor(partial: Partial<TruckEntity>) {
    Object.assign(this, partial);
  }
}
