USE [Comunidad_FCFM]
GO
ALTER TABLE [dbo].[Relacion_Materia_Carrera] DROP CONSTRAINT [FK_Relacion_Materia_Carrera_Materia]
GO
ALTER TABLE [dbo].[Relacion_Materia_Carrera] DROP CONSTRAINT [FK_Relacion_Materia_Carrera_Carrera]
GO
ALTER TABLE [dbo].[Relacion_Clase_Maestro] DROP CONSTRAINT [FK_Relacion_Clase_Maestro_Relacion_Materia_Carrera]
GO
ALTER TABLE [dbo].[Relacion_Clase_Maestro] DROP CONSTRAINT [FK_Relacion_Clase_Maestro_Maestro]
GO
ALTER TABLE [dbo].[Calificacion] DROP CONSTRAINT [FK_Calificacion_Maestro]
GO
/****** Object:  Table [dbo].[Relacion_Materia_Carrera]    Script Date: 27/04/2018 1:31:00 ******/
DROP TABLE [dbo].[Relacion_Materia_Carrera]
GO
/****** Object:  Table [dbo].[Relacion_Clase_Maestro]    Script Date: 27/04/2018 1:31:00 ******/
DROP TABLE [dbo].[Relacion_Clase_Maestro]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 27/04/2018 1:31:00 ******/
DROP TABLE [dbo].[Materia]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 27/04/2018 1:31:00 ******/
DROP TABLE [dbo].[Maestro]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 27/04/2018 1:31:00 ******/
DROP TABLE [dbo].[Carrera]
GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 27/04/2018 1:31:00 ******/
DROP TABLE [dbo].[Calificacion]
GO
USE [master]
GO
/****** Object:  Database [Comunidad_FCFM]    Script Date: 27/04/2018 1:31:00 ******/
DROP DATABASE [Comunidad_FCFM]
GO
/****** Object:  Database [Comunidad_FCFM]    Script Date: 27/04/2018 1:31:00 ******/
CREATE DATABASE [Comunidad_FCFM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Comunidad_FCFM', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Comunidad_FCFM.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Comunidad_FCFM_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Comunidad_FCFM_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Comunidad_FCFM] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Comunidad_FCFM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Comunidad_FCFM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET ARITHABORT OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Comunidad_FCFM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Comunidad_FCFM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Comunidad_FCFM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Comunidad_FCFM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Comunidad_FCFM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Comunidad_FCFM] SET  MULTI_USER 
GO
ALTER DATABASE [Comunidad_FCFM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Comunidad_FCFM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Comunidad_FCFM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Comunidad_FCFM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Comunidad_FCFM]
GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 27/04/2018 1:31:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificacion](
	[idCalificacion] [int] NOT NULL,
	[calificacion] [int] NULL,
	[fecha] [date] NULL,
	[idMaestro] [int] NULL,
 CONSTRAINT [PK_Calificacion] PRIMARY KEY CLUSTERED 
(
	[idCalificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 27/04/2018 1:31:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carrera](
	[idCarrera] [int] NOT NULL,
	[nombreCarrera] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[idCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 27/04/2018 1:31:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestro](
	[idMaestro] [int] NOT NULL,
	[nombreMaestro] [nchar](10) NULL,
 CONSTRAINT [PK_Maestro] PRIMARY KEY CLUSTERED 
(
	[idMaestro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Materia]    Script Date: 27/04/2018 1:31:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Materia](
	[idMateria] [int] NOT NULL,
	[nombreMateria] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Materia] PRIMARY KEY CLUSTERED 
(
	[idMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Relacion_Clase_Maestro]    Script Date: 27/04/2018 1:31:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relacion_Clase_Maestro](
	[idRelClase_Maestro] [int] NOT NULL,
	[idClase] [int] NOT NULL,
	[idMaestro] [int] NOT NULL,
 CONSTRAINT [PK_Relacion_Clase_Maestro] PRIMARY KEY CLUSTERED 
(
	[idRelClase_Maestro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Relacion_Materia_Carrera]    Script Date: 27/04/2018 1:31:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relacion_Materia_Carrera](
	[idRelMateria_Carrera] [int] NOT NULL,
	[idMateria] [int] NULL,
	[idCarrera] [int] NULL,
 CONSTRAINT [PK_Relacion_Materia_Carrera] PRIMARY KEY CLUSTERED 
(
	[idRelMateria_Carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Carrera] ([idCarrera], [nombreCarrera]) VALUES (1, N'LSTI')
INSERT [dbo].[Carrera] ([idCarrera], [nombreCarrera]) VALUES (2, N'LCC')
INSERT [dbo].[Carrera] ([idCarrera], [nombreCarrera]) VALUES (3, N'Matematicas')
INSERT [dbo].[Carrera] ([idCarrera], [nombreCarrera]) VALUES (4, N'Fisica')
INSERT [dbo].[Materia] ([idMateria], [nombreMateria]) VALUES (1, N'Base de Datos')
INSERT [dbo].[Materia] ([idMateria], [nombreMateria]) VALUES (2, N'Circuitos Digitales')
INSERT [dbo].[Materia] ([idMateria], [nombreMateria]) VALUES (3, N'Apresiacion de las Artes')
INSERT [dbo].[Relacion_Materia_Carrera] ([idRelMateria_Carrera], [idMateria], [idCarrera]) VALUES (1, 1, 1)
ALTER TABLE [dbo].[Calificacion]  WITH CHECK ADD  CONSTRAINT [FK_Calificacion_Maestro] FOREIGN KEY([idMaestro])
REFERENCES [dbo].[Maestro] ([idMaestro])
GO
ALTER TABLE [dbo].[Calificacion] CHECK CONSTRAINT [FK_Calificacion_Maestro]
GO
ALTER TABLE [dbo].[Relacion_Clase_Maestro]  WITH CHECK ADD  CONSTRAINT [FK_Relacion_Clase_Maestro_Maestro] FOREIGN KEY([idMaestro])
REFERENCES [dbo].[Maestro] ([idMaestro])
GO
ALTER TABLE [dbo].[Relacion_Clase_Maestro] CHECK CONSTRAINT [FK_Relacion_Clase_Maestro_Maestro]
GO
ALTER TABLE [dbo].[Relacion_Clase_Maestro]  WITH CHECK ADD  CONSTRAINT [FK_Relacion_Clase_Maestro_Relacion_Materia_Carrera] FOREIGN KEY([idClase])
REFERENCES [dbo].[Relacion_Materia_Carrera] ([idRelMateria_Carrera])
GO
ALTER TABLE [dbo].[Relacion_Clase_Maestro] CHECK CONSTRAINT [FK_Relacion_Clase_Maestro_Relacion_Materia_Carrera]
GO
ALTER TABLE [dbo].[Relacion_Materia_Carrera]  WITH CHECK ADD  CONSTRAINT [FK_Relacion_Materia_Carrera_Carrera] FOREIGN KEY([idCarrera])
REFERENCES [dbo].[Carrera] ([idCarrera])
GO
ALTER TABLE [dbo].[Relacion_Materia_Carrera] CHECK CONSTRAINT [FK_Relacion_Materia_Carrera_Carrera]
GO
ALTER TABLE [dbo].[Relacion_Materia_Carrera]  WITH CHECK ADD  CONSTRAINT [FK_Relacion_Materia_Carrera_Materia] FOREIGN KEY([idMateria])
REFERENCES [dbo].[Materia] ([idMateria])
GO
ALTER TABLE [dbo].[Relacion_Materia_Carrera] CHECK CONSTRAINT [FK_Relacion_Materia_Carrera_Materia]
GO
USE [master]
GO
ALTER DATABASE [Comunidad_FCFM] SET  READ_WRITE 
GO
