--- Encryption 
USE master;
GO
SELECT *
FROM sys.symmetric_keys
WHERE name = '##MS_ServiceMasterKey##';
GO

USE RetailStore;
GO
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Password123';
GO

USE RetailStore;
GO
CREATE CERTIFICATE Certificate1
WITH SUBJECT = 'Protect Data';
GO

USE RetailStore;
GO
CREATE SYMMETRIC KEY SymmetricKey1 
 WITH ALGORITHM = AES_128 
 ENCRYPTION BY CERTIFICATE Certificate1;
GO

USE RetailStore;
GO
ALTER TABLE EMPLOYEE 
ADD SSN_First_Five_encrypt varbinary(MAX) NULL
GO

USE RetailStore;
GO
-- Opens the symmetric key for use
OPEN SYMMETRIC KEY SymmetricKey1
DECRYPTION BY CERTIFICATE Certificate1;
GO
UPDATE EMPLOYEE
SET SSN_First_Five_encrypt = EncryptByKey (Key_GUID('SymmetricKey1'),SSN_First_Five)
FROM dbo.EMPLOYEE;
GO
-- Closes the symmetric key
CLOSE SYMMETRIC KEY SymmetricKey1;
GO

