import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class TrucksService {
  constructor(private prisma: PrismaService) {}

  async getTruckLocation(plat: string, start: Date, end: Date) {
    return await this.prisma.mtGpsLastLocation.findMany({
      where: { PLATENO: plat, INSERT_DATE: { gte: start, lte: end } },
    });
  }

  async getTruckDetail(plat: string) {
    return await this.prisma.mmsVehicle.findFirst({
      where: { idTruck: plat },
    });
  }
}
