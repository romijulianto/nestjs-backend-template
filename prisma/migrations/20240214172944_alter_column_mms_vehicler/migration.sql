BEGIN TRY

BEGIN TRAN;

-- AlterTable
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [asuransiKadaluarsa] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [compartment1Flow] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [compartment2Flow] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [compartment3Flow] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [compartment4Flow] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [compartment5Flow] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [compartment6Flow] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [dateRegHeadTruck] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [deductibleInsurance] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [jmlSegel] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [jmlSumbu] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [jumlahBan] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [jumlahKompartemen] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kapasitasTangkiJalanBbm] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kapasitasTangkiJalanOli] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [karoseri] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [ketersediaan] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [keurKadaluarsa] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kimImkKadaluarsa] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen1Kepekaan] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen1RKosong] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen1TeraUlang] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen1Uom] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen1Vol] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen2Kepekaan] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen2RKosong] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen2TeraUlang] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen2Uom] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen2Vol] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen3Kepekaan] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen3RKosong] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen3TeraUlang] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen3Uom] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen3Vol] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen4Kepekaan] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen4RKosong] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen4TeraUlang] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen4Uom] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen4Vol] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen5Kepekaan] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen5RKosong] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen5TeraUlang] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen5Uom] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen5Vol] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen6Kepekaan] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen6RKosong] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen6TeraUlang] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen6Uom] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [kompartemen6Vol] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [loket] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [monthlyRate] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [mtCategory] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [rasioOwnUseBbm] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [siupKadaluarsa] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [stnkKadaluarsa] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [tanggalPembuatan] NVARCHAR(1000) NULL;
ALTER TABLE [dbo].[MmsVehicle] ALTER COLUMN [teraKadaluarsa] NVARCHAR(1000) NULL;

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
