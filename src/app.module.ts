import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { PrismaModule } from './prisma/prisma.module';
import { ArticlesModule } from './modules/articles/articles.module';
import { UsersModule } from './modules/users/users.module';
import { AuthModule } from './auth/auth.module';
import { TrucksModule } from './modules/trucks/trucks.module';
import { ShipmentsModule } from './modules/shipments/shipments.module';

@Module({
  imports: [
    PrismaModule,
    ArticlesModule,
    UsersModule,
    AuthModule,
    TrucksModule,
    ShipmentsModule
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
