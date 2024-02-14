BEGIN TRY

BEGIN TRAN;

-- AlterTable
ALTER TABLE [dbo].[MmsVehicle] DROP CONSTRAINT [MmsVehicle_insertDate_df];
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [insertDate] NVARCHAR(1000) NULL;

-- AlterTable
ALTER TABLE [dbo].[ShipmentEndClose] ALTER COLUMN [insertDate] NVARCHAR(1000) NULL;

-- AlterTable
ALTER TABLE [dbo].[ShipmentGateOut] ALTER COLUMN [insertDate] NVARCHAR(1000) NULL;

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
