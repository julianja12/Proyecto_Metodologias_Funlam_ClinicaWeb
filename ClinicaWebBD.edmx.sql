
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 09/28/2015 21:45:57
-- Generated from EDMX file: D:\Julian docs\Ingenieria\Decimo Semestre\Linea de Produndizacion.net\Funlam-2015-02-Clinica-Web\Funlam-2015-02-Clinica-Web\ClinicaWebBD.edmx
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

IF OBJECT_ID(N'[dbo].[FK__Citas__IdUsuario__09DE7BCC]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Citas] DROP CONSTRAINT [FK__Citas__IdUsuario__09DE7BCC];
GO
IF OBJECT_ID(N'[dbo].[FK__TipoUsuar__IdUsu__0519C6AF]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TipoUsuario] DROP CONSTRAINT [FK__TipoUsuar__IdUsu__0519C6AF];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Citas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Citas];
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
    [IdUsuario] int  NULL,
    [IdCita] int  NOT NULL,
    [FechaCita] datetime  NOT NULL,
    [HoraCita] int  NOT NULL,
    [LugarCita] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'TipoUsuarios'
CREATE TABLE [dbo].[TipoUsuarios] (
    [IdUsuario] int  NULL,
    [IdTipoUsuario] int  NOT NULL,
    [NombreTipoUsuario] varchar(50)  NOT NULL
);
GO

-- Creating table 'Usuarios'
CREATE TABLE [dbo].[Usuarios] (
    [IdUsuario] int  NOT NULL,
    [NombreUsuario] varchar(50)  NOT NULL,
    [ApellidoUsuario] varchar(50)  NOT NULL,
    [Edad] int  NOT NULL,
    [Telefono] int  NOT NULL,
    [Direccion] nvarchar(250)  NULL,
    [Email] nvarchar(100)  NULL
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

-- Creating primary key on [IdUsuario] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [PK_Usuarios]
    PRIMARY KEY CLUSTERED ([IdUsuario] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [IdUsuario] in table 'Citas'
ALTER TABLE [dbo].[Citas]
ADD CONSTRAINT [FK__Citas__IdUsuario__09DE7BCC]
    FOREIGN KEY ([IdUsuario])
    REFERENCES [dbo].[Usuarios]
        ([IdUsuario])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__Citas__IdUsuario__09DE7BCC'
CREATE INDEX [IX_FK__Citas__IdUsuario__09DE7BCC]
ON [dbo].[Citas]
    ([IdUsuario]);
GO

-- Creating foreign key on [IdUsuario] in table 'TipoUsuarios'
ALTER TABLE [dbo].[TipoUsuarios]
ADD CONSTRAINT [FK__TipoUsuar__IdUsu__0519C6AF]
    FOREIGN KEY ([IdUsuario])
    REFERENCES [dbo].[Usuarios]
        ([IdUsuario])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__TipoUsuar__IdUsu__0519C6AF'
CREATE INDEX [IX_FK__TipoUsuar__IdUsu__0519C6AF]
ON [dbo].[TipoUsuarios]
    ([IdUsuario]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------