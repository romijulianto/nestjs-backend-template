import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class ShipmentsService {
  constructor(private prisma: PrismaService) {}

  async getShipmentGateout(spbu?: string, plat?: string, tbbm?: string) {
    const conditions = [];

    if (spbu) conditions.push({ spbu: spbu });
    if (plat) conditions.push({ mt: plat });
    if (tbbm) conditions.push({ plantCode: tbbm });

    let whereQuery = {};
    if (conditions.length === 1) {
      whereQuery = conditions[0];
    } else if (conditions.length > 1) {
      whereQuery = { AND: conditions };
    }

    return await this.prisma.shipmentGateOut.findMany({
      where: whereQuery,
    });
  }

  async getShipmentEnd(spbu?: string, plat?: string, tbbm?: string) {
    const conditions = [];

    if (spbu) conditions.push({ spbu: spbu });
    if (plat) conditions.push({ mt: plat });
    if (tbbm) conditions.push({ plantCode: tbbm });

    let whereQuery = {};
    if (conditions.length === 1) {
      whereQuery = conditions[0];
    } else if (conditions.length > 1) {
      whereQuery = { AND: conditions };
    }

    return await this.prisma.shipmentEndClose.findMany({
      where: whereQuery,
    });
  }
}
