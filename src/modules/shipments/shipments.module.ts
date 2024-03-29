import { Module } from '@nestjs/common';
import { ShipmentsService } from './shipments.service';
import { ShipmentsController } from './shipments.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [ShipmentsController],
  providers: [ShipmentsService],
  imports: [PrismaModule],
  exports: [ShipmentsService],
})
export class ShipmentsModule {}
