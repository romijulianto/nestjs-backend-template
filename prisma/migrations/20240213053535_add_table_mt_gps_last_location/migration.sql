BEGIN TRY

BEGIN TRAN;

-- CreateTable
CREATE TABLE [dbo].[MtGpsLastLocation] (
    [ASSET_ID] NVARCHAR(1000) NOT NULL,
    [EVENT_NAME] NVARCHAR(1000) NOT NULL,
    [FLEET_ID] NVARCHAR(1000) NOT NULL,
    [FLEET_NAME] NVARCHAR(1000) NOT NULL,
    [GPS_TIME] DATETIME2,
    [HEADING] NVARCHAR(1000) NOT NULL,
    [ID] NVARCHAR(1000) NOT NULL,
    [JALAN] NVARCHAR(1000) NOT NULL,
    [KABUPATEN] NVARCHAR(1000) NOT NULL,
    [KECAMATAN] NVARCHAR(1000) NOT NULL,
    [LATITUDE] NVARCHAR(1000) NOT NULL,
    [LONGITUDE] NVARCHAR(1000) NOT NULL,
    [ODOMETER] NVARCHAR(1000) NOT NULL,
    [PLATENO] NVARCHAR(1000) NOT NULL,
    [SPEED] FLOAT(53) NOT NULL,
    [ZONENAME] NVARCHAR(1000) NOT NULL,
    [INSERT_DATE] DATETIME2 NOT NULL,
    CONSTRAINT [MtGpsLastLocation_INSERT_DATE_key] UNIQUE NONCLUSTERED ([INSERT_DATE])
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