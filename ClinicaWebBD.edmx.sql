
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 10/26/2015 09:12:56
-- Generated from EDMX file: C:\Users\ASUS\Desktop\Funlam-2015-02-Clinica-Web\Funlam-2015-02-Clinica-Web\ClinicaWebBD.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ClinicaWeb];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__Cita__Cedula__0519C6AF]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Cita] DROP CONSTRAINT [FK__Cita__Cedula__0519C6AF];
GO
IF OBJECT_ID(N'[dbo].[FK__TipoUsuar__Cedul__09DE7BCC]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TipoUsuario] DROP CONSTRAINT [FK__TipoUsuar__Cedul__09DE7BCC];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Cita]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cita];
GO
IF OBJECT_ID(N'[dbo].[TipoUsuario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoUsuario];
GO
IF OBJECT_ID(N'[dbo].[Usuario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuario];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Cita'
CREATE TABLE [dbo].[Cita] (
    [IdCita] int IDENTITY(1,1) NOT NULL,
    [Cedula] int  NOT NULL,
    [FechaCita] varchar(50)  NOT NULL,
    [HoraCita] varchar(50)  NOT NULL,
    [LugarCita] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'TipoUsuario'
CREATE TABLE [dbo].[TipoUsuario] (
    [Cedula] int  NULL,
    [IdTipoUsuario] int  NOT NULL,
    [NombreTipoUsuario] varchar(50)  NOT NULL
);
GO

-- Creating table 'Usuario'
CREATE TABLE [dbo].[Usuario] (
    [Cedula] int  NOT NULL,
    [NombreUsuario] varchar(50)  NOT NULL,
    [ApellidoUsuario] varchar(50)  NOT NULL,
    [Username] varchar(100)  NOT NULL,
    [contrasena] varchar(100)  NOT NULL,
    [Edad] int  NOT NULL,
    [Telefono] int  NULL,
    [Direccion] varchar(150)  NULL,
    [Email] varchar(150)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IdCita] in table 'Cita'
ALTER TABLE [dbo].[Cita]
ADD CONSTRAINT [PK_Cita]
    PRIMARY KEY CLUSTERED ([IdCita] ASC);
GO

-- Creating primary key on [IdTipoUsuario] in table 'TipoUsuario'
ALTER TABLE [dbo].[TipoUsuario]
ADD CONSTRAINT [PK_TipoUsuario]
    PRIMARY KEY CLUSTERED ([IdTipoUsuario] ASC);
GO

-- Creating primary key on [Cedula] in table 'Usuario'
ALTER TABLE [dbo].[Usuario]
ADD CONSTRAINT [PK_Usuario]
    PRIMARY KEY CLUSTERED ([Cedula] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Cedula] in table 'Cita'
ALTER TABLE [dbo].[Cita]
ADD CONSTRAINT [FK__Cita__Cedula__0519C6AF]
    FOREIGN KEY ([Cedula])
    REFERENCES [dbo].[Usuario]
        ([Cedula])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__Cita__Cedula__0519C6AF'
CREATE INDEX [IX_FK__Cita__Cedula__0519C6AF]
ON [dbo].[Cita]
    ([Cedula]);
GO

-- Creating foreign key on [Cedula] in table 'TipoUsuario'
ALTER TABLE [dbo].[TipoUsuario]
ADD CONSTRAINT [FK__TipoUsuar__Cedul__09DE7BCC]
    FOREIGN KEY ([Cedula])
    REFERENCES [dbo].[Usuario]
        ([Cedula])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__TipoUsuar__Cedul__09DE7BCC'
CREATE INDEX [IX_FK__TipoUsuar__Cedul__09DE7BCC]
ON [dbo].[TipoUsuario]
    ([Cedula]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------