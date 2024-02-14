/*
  Warnings:

  - Added the required column `insertDate` to the `ShipmentGateOut` table without a default value. This is not possible if the table is not empty.

*/
BEGIN TRY

BEGIN TRAN;

-- AlterTable
ALTER TABLE [dbo].[ShipmentGateOut] ADD [insertDate] DATETIME2 NOT NULL;

-- CreateTable
CREATE TABLE [dbo].[ShipmentEndCloe] (
    [id] NVARCHAR(1000) NOT NULL,
    [plantCode] NVARCHAR(1000) NOT NULL,
    [createDate] DATETIME2 NOT NULL,
    [nomorLo] NVARCHAR(1000) NOT NULL,
    [kodeProduk] NVARCHAR(1000) NOT NULL,
    [produk] NVARCHAR(1000) NOT NULL,
    [klDo] NVARCHAR(1000) NOT NULL,
    [spbu] NVARCHAR(1000) NOT NULL,
    [shipTo] NVARCHAR(1000) NOT NULL,
    [jarak] NVARCHAR(1000) NOT NULL,
    [sonumber] NVARCHAR(1000) NOT NULL,
    [gisStatus] NVARCHAR(1000) NOT NULL,
    [extraInfo] NVARCHAR(1000) NOT NULL,
    [gateoutTime] DATETIME2 NOT NULL,
    [jmlsegel] INT NOT NULL,
    [kernet] NVARCHAR(1000) NOT NULL,
    [lastUpdate] DATETIME2 NOT NULL,
    [mt] NVARCHAR(1000) NOT NULL,
    [mysapshipmentnum] NVARCHAR(1000) NOT NULL,
    [mysapstatus] NVARCHAR(1000) NOT NULL,
    [nipKernet] NVARCHAR(1000) NOT NULL,
    [nipSupir] NVARCHAR(1000) NOT NULL,
    [segel] NVARCHAR(1000) NOT NULL,
    [shipmentDate] DATETIME2 NOT NULL,
    [shipmentEnd] DATETIME2 NOT NULL,
    [shipmentId] INT NOT NULL,
    [siodId] NVARCHAR(1000) NOT NULL,
    [siodState] NVARCHAR(1000) NOT NULL,
    [stateDetail] INT NOT NULL,
    [supir] NVARCHAR(1000) NOT NULL,
    [insertDate] DATETIME2 NOT NULL,
    CONSTRAINT [ShipmentEndCloe_pkey] PRIMARY KEY CLUSTERED ([id]),
    CONSTRAINT [ShipmentEndCloe_id_key] UNIQUE NONCLUSTERED ([id])
);

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
