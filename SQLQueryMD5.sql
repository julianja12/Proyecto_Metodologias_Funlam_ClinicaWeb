	SET QUOTED_IDENTIFIER OFF;
	GO
	USE [ClinicaWeb];
	GO
	IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
	GO

	CREATE TRIGGER Trigger1 ON Usuario
	 AFTER INSERT  
	 AS   
	 BEGIN
	 DECLARE @primaryKeyField int 
	 SELECT @primaryKeyField = Cedula FROM inserted
	  UPDATE Usuario
	  SET contrasena = CONVERT(VARCHAR(50), HashBytes('MD5', contrasena), 2) 
	  WHERE Cedula = @primaryKeyField 
	 END  
