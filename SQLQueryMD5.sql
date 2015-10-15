SET QUOTED_IDENTIFIER OFF;
GO
USE [ClinicaWeb];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

CREATE TRIGGER Trigger1 ON Usuarios 
 AFTER INSERT  
 AS   
 BEGIN
 DECLARE @primaryKeyField int 
 SELECT @primaryKeyField = IdUsuario FROM inserted
  UPDATE Usuarios
  SET Contraseņa = CONVERT(VARCHAR(50), HashBytes('MD5', Contraseņa), 2) 
  WHERE IdUsuario = @primaryKeyField 
 END  
