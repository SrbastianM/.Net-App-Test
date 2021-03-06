USE [master]
GO
/****** Object:  Database [DB_TEST]    Script Date: 1/03/2022 10:58:15 a. m. ******/
CREATE DATABASE [DB_TEST]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_TEST', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_TEST.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_TEST_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_TEST_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_TEST] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_TEST].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_TEST] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_TEST] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_TEST] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_TEST] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_TEST] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_TEST] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_TEST] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_TEST] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_TEST] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_TEST] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_TEST] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_TEST] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_TEST] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_TEST] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_TEST] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_TEST] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_TEST] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_TEST] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_TEST] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_TEST] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_TEST] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_TEST] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_TEST] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_TEST] SET  MULTI_USER 
GO
ALTER DATABASE [DB_TEST] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_TEST] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_TEST] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_TEST] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_TEST] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_TEST] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_TEST', N'ON'
GO
ALTER DATABASE [DB_TEST] SET QUERY_STORE = OFF
GO
USE [DB_TEST]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 1/03/2022 10:58:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[IATACode] [varchar](5) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[CountryIATACode] [varchar](2) NOT NULL,
	[StateName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 1/03/2022 10:58:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[IATACode] [varchar](2) NOT NULL,
	[Name] [varchar](50) NULL,
	[ID] [int] NOT NULL,
	[DIANCode] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Create_BD_Test i]    Script Date: 1/03/2022 10:58:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Create_BD_Test i](
	[column1] [nvarchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentificationDocuments]    Script Date: 1/03/2022 10:58:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentificationDocuments](
	[ID] [int] NOT NULL,
	[Name] [varchar](65) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThirdParties]    Script Date: 1/03/2022 10:58:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThirdParties](
	[ID] [int] NOT NULL,
	[FirstName] [varchar](200) NULL,
	[LastName] [varchar](200) NULL,
	[DocumentTypeID] [int] NOT NULL,
	[DocumentNumber] [varchar](50) NOT NULL,
	[CityIataCode] [varchar](5) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[FaxNumber] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[MobilePhoneNumber] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[CountryID] [int] NULL,
	[VerificationDigit] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Cities] ([IATACode], [Name], [CountryIATACode], [StateName]) VALUES (N'BAQ', N'Barranquilla', N'CO', N'Atlantico')
INSERT [dbo].[Cities] ([IATACode], [Name], [CountryIATACode], [StateName]) VALUES (N'BOG', N'Bogota', N'CO', N'Cundinamarca')
INSERT [dbo].[Cities] ([IATACode], [Name], [CountryIATACode], [StateName]) VALUES (N'BUE', N'Buenos Aires', N'AR', N'Buenos Aires')
INSERT [dbo].[Cities] ([IATACode], [Name], [CountryIATACode], [StateName]) VALUES (N'IQQ', N'IQUIQUE ', N'CL', N'Tarapacá')
INSERT [dbo].[Cities] ([IATACode], [Name], [CountryIATACode], [StateName]) VALUES (N'YYC', N'CALGARY ', N'CA', N'Southern Alberta')
GO
INSERT [dbo].[Countries] ([IATACode], [Name], [ID], [DIANCode]) VALUES (N'AR', N'Argentina', 13, N'017')
INSERT [dbo].[Countries] ([IATACode], [Name], [ID], [DIANCode]) VALUES (N'CA', N'Canada', 15, N'149')
INSERT [dbo].[Countries] ([IATACode], [Name], [ID], [DIANCode]) VALUES (N'CL', N'Chile', 5, N'211')
INSERT [dbo].[Countries] ([IATACode], [Name], [ID], [DIANCode]) VALUES (N'CO', N'Colombia', 2, N'169')
INSERT [dbo].[Countries] ([IATACode], [Name], [ID], [DIANCode]) VALUES (N'EC', N'Ecuador', 14, N'239')
GO
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'USE [master]')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'GO')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'/****** Object:  Database [Test]    Script Date: 2/12/2021 8:22:00 p. m. ******/')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'CREATE DATABASE [Test]')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'CONTAINMENT = NONE')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ON  PRIMARY')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'( NAME = N''Test'', FILENAME = N''C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Test.mdf'' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'LOG ON')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'( NAME = N''Test_log'', FILENAME = N''C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Test_log.ldf'' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'IF (1 = FULLTEXTSERVICEPROPERTY(''IsFullTextInstalled''))')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'begin')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'EXEC [Test].[dbo].[sp_fulltext_database] @action = ''enable''')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'end')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET ANSI_NULL_DEFAULT OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET ANSI_NULLS OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET ANSI_PADDING OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET ANSI_WARNINGS OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET ARITHABORT OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET AUTO_CLOSE OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET AUTO_SHRINK OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET AUTO_UPDATE_STATISTICS ON')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET CURSOR_CLOSE_ON_COMMIT OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET CURSOR_DEFAULT  GLOBAL')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET CONCAT_NULL_YIELDS_NULL OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET NUMERIC_ROUNDABORT OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET QUOTED_IDENTIFIER OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET RECURSIVE_TRIGGERS OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET  DISABLE_BROKER')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET DATE_CORRELATION_OPTIMIZATION OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET TRUSTWORTHY OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET ALLOW_SNAPSHOT_ISOLATION OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET PARAMETERIZATION SIMPLE')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET READ_COMMITTED_SNAPSHOT OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET HONOR_BROKER_PRIORITY OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET RECOVERY SIMPLE')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET  MULTI_USER')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET PAGE_VERIFY CHECKSUM')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET DB_CHAINING OFF')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF )')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET TARGET_RECOVERY_TIME = 60 SECONDS')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET DELAYED_DURABILITY = DISABLED')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'USE [Test]')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Cities]    Script Date: 2/12/2021 8:22:00 p. m. ******/')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'SET ANSI_NULLS ON')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'SET QUOTED_IDENTIFIER ON')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'CREATE TABLE [dbo].[Cities](')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[IATACode] [varchar](5) NOT NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[Name] [varchar](200) NOT NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[CountryIATACode] [varchar](2) NOT NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[StateName] [varchar](50) NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'(')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[IATACode] ASC')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N')WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N') ON [PRIMARY]')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Countries]    Script Date: 2/12/2021 8:22:00 p. m. ******/')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'CREATE TABLE [dbo].[Countries](')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[IATACode] [varchar](2) NOT NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[Name] [varchar](50) NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[ID] [int] IDENTITY(1,1) NOT NULL,')
GO
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[DIANCode] [varchar](50) NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'(')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[IATACode] ASC')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N')WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N') ON [PRIMARY]')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'GO')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'/****** Object:  Table [dbo].[IdentificationDocuments]    Script Date: 2/12/2021 8:22:00 p. m. ******/')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'SET ANSI_NULLS ON')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'SET QUOTED_IDENTIFIER ON')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'CREATE TABLE [dbo].[IdentificationDocuments](')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[ID] [int] IDENTITY(1,1) NOT NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[Name] [varchar](65) NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'CONSTRAINT [PK_IdentificationDocuments] PRIMARY KEY CLUSTERED')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[ID] ASC')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'/****** Object:  Table [dbo].[ThirdParties]    Script Date: 2/12/2021 8:22:00 p. m. ******/')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'CREATE TABLE [dbo].[ThirdParties](')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[FirstName] [varchar](200) NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[LastName] [varchar](200) NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[DocumentTypeID] [int] NOT NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[DocumentNumber] [varchar](50) NOT NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[CityIataCode] [varchar](5) NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[PhoneNumber] [varchar](50) NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[FaxNumber] [varchar](50) NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[Address] [varchar](100) NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[MobilePhoneNumber] [varchar](50) NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[Email] [varchar](50) NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[CountryID] [int] NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[VerificationDigit] [int] NULL,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'CONSTRAINT [PK_ThirdParties] PRIMARY KEY CLUSTERED')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N')WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'CONSTRAINT [IX_ThirdParties] UNIQUE NONCLUSTERED')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[DocumentTypeID] ASC,')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'[DocumentNumber] ASC')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Countries] FOREIGN KEY([CountryIATACode])')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'REFERENCES [dbo].[Countries] ([IATACode])')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_Countries]')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER TABLE [dbo].[ThirdParties]  WITH NOCHECK ADD  CONSTRAINT [FK_ThirdParties_Cities] FOREIGN KEY([CityIataCode])')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'REFERENCES [dbo].[Cities] ([IATACode])')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER TABLE [dbo].[ThirdParties] CHECK CONSTRAINT [FK_ThirdParties_Cities]')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER TABLE [dbo].[ThirdParties]  WITH NOCHECK ADD  CONSTRAINT [FK_ThirdParties_IdentificationDocuments] FOREIGN KEY([DocumentTypeID])')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'REFERENCES [dbo].[IdentificationDocuments] ([ID])')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER TABLE [dbo].[ThirdParties] CHECK CONSTRAINT [FK_ThirdParties_IdentificationDocuments]')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'USE [master]')
INSERT [dbo].[Create_BD_Test i] ([column1]) VALUES (N'ALTER DATABASE [Test] SET  READ_WRITE')
GO
INSERT [dbo].[IdentificationDocuments] ([ID], [Name]) VALUES (1, N'Carlos Andres Romero')
INSERT [dbo].[IdentificationDocuments] ([ID], [Name]) VALUES (2, N'Luis Alfonzo Jimenes')
INSERT [dbo].[IdentificationDocuments] ([ID], [Name]) VALUES (3, N'Jose Antonio Perez')
INSERT [dbo].[IdentificationDocuments] ([ID], [Name]) VALUES (4, N'Alejandra Martines Vega')
INSERT [dbo].[IdentificationDocuments] ([ID], [Name]) VALUES (5, N'Julian Bohorquez ')
GO
USE [master]
GO
ALTER DATABASE [DB_TEST] SET  READ_WRITE 
GO
