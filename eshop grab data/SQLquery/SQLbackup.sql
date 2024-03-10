DECLARE @BackupPath NVARCHAR(512);
SET @BackupPath = 'D:\Devel\SQLbackup\'; -- Zm��te cestu podle va�ich pot�eb

DECLARE @DateTimeStamp NVARCHAR(20);
SET @DateTimeStamp = REPLACE(CONVERT(NVARCHAR(20), GETDATE(), 104), '.', '');

DECLARE @BackupScript NVARCHAR(MAX);
SET @BackupScript = '';

SELECT @BackupScript = @BackupScript + 'BACKUP DATABASE [' + name + '] TO DISK = ''' + @BackupPath + name + '_' + @DateTimeStamp + '.bak'';' + CHAR(13)
FROM sys.databases
WHERE database_id > 4;

PRINT @BackupScript; -- Tento ��dek pouze vyp�e skript, kter� se m� spustit

-- Spu�t�n� z�lohovac�ho skriptu
EXEC sp_executesql @BackupScript;
