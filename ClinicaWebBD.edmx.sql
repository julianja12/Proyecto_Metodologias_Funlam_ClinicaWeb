
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 10/25/2015 16:08:55
-- Generated from EDMX file: C:\Users\JulianJa\Documents\Linea de Produndizacion.net\Funlam-2015-02-Clinica-Web\Funlam-2015-02-Clinica-Web\ClinicaWebBD.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Clinica];
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

-- Creating table 'Citas'
CREATE TABLE [dbo].[Citas] (
    [IdCita] int IDENTITY(1,1) NOT NULL,
    [Cedula] int  NOT NULL,
    [FechaCita] varchar(50)  NOT NULL,
    [HoraCita] varchar(50)  NOT NULL,
    [LugarCita] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'TipoUsuarios'
CREATE TABLE [dbo].[TipoUsuarios] (
    [Cedula] int  NULL,
    [IdTipoUsuario] int  NOT NULL,
    [NombreTipoUsuario] varchar(50)  NOT NULL
);
GO

-- Creating table 'Usuarios'
CREATE TABLE [dbo].[Usuarios] (
    [Cedula] int  NOT NULL,
    [NombreUsario] varchar(50)  NOT NULL,
    [ApellidoUsario] varchar(50)  NOT NULL,
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

-- Creating primary key on [IdCita] in table 'Citas'
ALTER TABLE [dbo].[Citas]
ADD CONSTRAINT [PK_Citas]
    PRIMARY KEY CLUSTERED ([IdCita] ASC);
GO

-- Creating primary key on [IdTipoUsuario] in table 'TipoUsuarios'
ALTER TABLE [dbo].[TipoUsuarios]
ADD CONSTRAINT [PK_TipoUsuarios]
    PRIMARY KEY CLUSTERED ([IdTipoUsuario] ASC);
GO

-- Creating primary key on [Cedula] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [PK_Usuarios]
    PRIMARY KEY CLUSTERED ([Cedula] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Cedula] in table 'Citas'
ALTER TABLE [dbo].[Citas]
ADD CONSTRAINT [FK__Cita__Cedula__0519C6AF]
    FOREIGN KEY ([Cedula])
    REFERENCES [dbo].[Usuarios]
        ([Cedula])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__Cita__Cedula__0519C6AF'
CREATE INDEX [IX_FK__Cita__Cedula__0519C6AF]
ON [dbo].[Citas]
    ([Cedula]);
GO

-- Creating foreign key on [Cedula] in table 'TipoUsuarios'
ALTER TABLE [dbo].[TipoUsuarios]
ADD CONSTRAINT [FK__TipoUsuar__Cedul__09DE7BCC]
    FOREIGN KEY ([Cedula])
    REFERENCES [dbo].[Usuarios]
        ([Cedula])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__TipoUsuar__Cedul__09DE7BCC'
CREATE INDEX [IX_FK__TipoUsuar__Cedul__09DE7BCC]
ON [dbo].[TipoUsuarios]
    ([Cedula]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------