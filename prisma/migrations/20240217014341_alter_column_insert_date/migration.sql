/*
  Warnings:

  - You are about to alter the column `insertDate` on the `MmsVehicle` table. The data in that column could be lost. The data in that column will be cast from `NVarChar(1000)` to `DateTime2`.
  - You are about to alter the column `insertDate` on the `ShipmentEndClose` table. The data in that column could be lost. The data in that column will be cast from `NVarChar(1000)` to `DateTime2`.
  - You are about to alter the column `insertDate` on the `ShipmentGateOut` table. The data in that column could be lost. The data in that column will be cast from `NVarChar(1000)` to `DateTime2`.

*/
BEGIN TRY

BEGIN TRAN;

-- AlterTable
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [insertDate] DATETIME2 NULL;

-- AlterTable
ALTER TABLE [dbo].[ShipmentEndClose] ALTER COLUMN [insertDate] DATETIME2 NULL;

-- AlterTable
ALTER TABLE [dbo].[ShipmentGateOut] ALTER COLUMN [insertDate] DATETIME2 NULL;

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
