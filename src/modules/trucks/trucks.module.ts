import { Module } from '@nestjs/common';
import { TrucksService } from './trucks.service';
import { TrucksController } from './trucks.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [TrucksController],
  providers: [TrucksService],
  imports: [PrismaModule],
  exports: [TrucksService],
})
export class TrucksModule {}
