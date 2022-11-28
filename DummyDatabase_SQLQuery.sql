USE [master]
GO
/****** Object:  Database [DummyDatabase]    Script Date: 28-11-2022 11:19:58 ******/
CREATE DATABASE [DummyDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DummyDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.DEVP_052_SQL2019\MSSQL\DATA\DummyDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DummyDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.DEVP_052_SQL2019\MSSQL\DATA\DummyDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DummyDatabase] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DummyDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DummyDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DummyDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DummyDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DummyDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DummyDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [DummyDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DummyDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DummyDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DummyDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DummyDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DummyDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DummyDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DummyDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DummyDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DummyDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DummyDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DummyDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DummyDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DummyDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DummyDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DummyDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DummyDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DummyDatabase] SET RECOVERY FULL 
GO
ALTER DATABASE [DummyDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [DummyDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DummyDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DummyDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DummyDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DummyDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DummyDatabase] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DummyDatabase] SET QUERY_STORE = OFF
GO
USE [DummyDatabase]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 28-11-2022 11:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 28-11-2022 11:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CategoryName] [nvarchar](max) NULL,
	[Units] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProfitReports]    Script Date: 28-11-2022 11:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfitReports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SaleId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[Discount] [float] NOT NULL,
	[UnitsSold] [float] NOT NULL,
	[Profit] [float] NOT NULL,
	[SaleMonth] [nvarchar](max) NULL,
	[SaleYear] [int] NOT NULL,
 CONSTRAINT [PK_ProfitReports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 28-11-2022 11:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[SaleId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[SaleDate] [nvarchar](max) NOT NULL,
	[SaleTime] [nvarchar](max) NULL,
	[CustomerName] [nvarchar](max) NOT NULL,
	[CustomerContact] [nvarchar](max) NOT NULL,
	[SellingPrice] [float] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Discount] [float] NOT NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[SaleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221126083844_addProductToDb', N'5.0.17')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221126084936_addProductToDbWithUnitsColumn', N'5.0.17')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221126115214_addSaleTableToDB', N'5.0.17')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221126142816_addReportTableToDB', N'5.0.17')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221127115143_updateReportTableToDB', N'5.0.17')
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Description], [CategoryName], [Units]) VALUES (6, N'note 10', 15000, N'', N'note', 0)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Description], [CategoryName], [Units]) VALUES (7, N'galaxy m31', 4000, N'', N'galaxy', 0)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Description], [CategoryName], [Units]) VALUES (8, N'moto g4', 12000, N'', N'moto', 0)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProfitReports] ON 
GO
INSERT [dbo].[ProfitReports] ([Id], [SaleId], [ProductId], [ProductName], [Discount], [UnitsSold], [Profit], [SaleMonth], [SaleYear]) VALUES (1, 0, 6, N'note 10', 12000, 6, 140000, N'oct', 2022)
GO
INSERT [dbo].[ProfitReports] ([Id], [SaleId], [ProductId], [ProductName], [Discount], [UnitsSold], [Profit], [SaleMonth], [SaleYear]) VALUES (2, 0, 6, N'note 10', 0, 3, 78000, N'nov', 2022)
GO
INSERT [dbo].[ProfitReports] ([Id], [SaleId], [ProductId], [ProductName], [Discount], [UnitsSold], [Profit], [SaleMonth], [SaleYear]) VALUES (3, 0, 6, N'note 10', 0, 2, 54000, N'sep', 2022)
GO
INSERT [dbo].[ProfitReports] ([Id], [SaleId], [ProductId], [ProductName], [Discount], [UnitsSold], [Profit], [SaleMonth], [SaleYear]) VALUES (4, 0, 7, N'galaxy m31', 0, 3, 20000, N'sep', 2022)
GO
INSERT [dbo].[ProfitReports] ([Id], [SaleId], [ProductId], [ProductName], [Discount], [UnitsSold], [Profit], [SaleMonth], [SaleYear]) VALUES (5, 0, 7, N'galaxy m31', 5000, 2, 7000, N'oct', 2022)
GO
INSERT [dbo].[ProfitReports] ([Id], [SaleId], [ProductId], [ProductName], [Discount], [UnitsSold], [Profit], [SaleMonth], [SaleYear]) VALUES (6, 0, 7, N'galaxy m31', 4000, 1, 2000, N'nov', 2022)
GO
INSERT [dbo].[ProfitReports] ([Id], [SaleId], [ProductId], [ProductName], [Discount], [UnitsSold], [Profit], [SaleMonth], [SaleYear]) VALUES (7, 0, 8, N'moto g4', 0, 2, 8000, N'nov', 2022)
GO
INSERT [dbo].[ProfitReports] ([Id], [SaleId], [ProductId], [ProductName], [Discount], [UnitsSold], [Profit], [SaleMonth], [SaleYear]) VALUES (8, 0, 8, N'moto g4', 0, 1, 4000, N'oct', 2022)
GO
INSERT [dbo].[ProfitReports] ([Id], [SaleId], [ProductId], [ProductName], [Discount], [UnitsSold], [Profit], [SaleMonth], [SaleYear]) VALUES (9, 0, 8, N'moto g4', 0, 3, 12000, N'sep', 2022)
GO
SET IDENTITY_INSERT [dbo].[ProfitReports] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales] ON 
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (3, N'note 10', N'20221127', N'17:55', N'abc', N'78944561230', 40000, 6, 0)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (4, N'note 10', N'20221121', N'17:55', N'xyz', N'78944561230', 38000, 6, 2000)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (5, N'note 10', N'20221112', N'17:55', N'pqr', N'78944561230', 35000, 6, 5000)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (6, N'note 10', N'20221012', N'17:55', N'pqr', N'78944561230', 36000, 6, 4000)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (7, N'note 10', N'20221018', N'17:55', N'pqr', N'78944561230', 39000, 6, 1000)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (8, N'note 10', N'20221009', N'17:55', N'pqr', N'78944561230', 42000, 6, 0)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (12, N'note 10', N'20220911', N'10:27', N'yui', N'string', 43000, 6, 0)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (13, N'note 10', N'20220913', N'12:27', N'opk', N'string', 41000, 6, 0)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (14, N'm31', N'20220912', N'9:27', N'omk', N'string', 10000, 7, 0)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (15, N'm31', N'20220924', N'17:27', N'omk', N'string', 10000, 7, 0)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (16, N'm31', N'20220926', N'15:17', N'olk', N'string', 12000, 7, 0)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (17, N'm31', N'20221016', N'14:12', N'ola', N'string', 8000, 7, 2000)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (18, N'm31', N'20221030', N'11:12', N'nola', N'string', 7000, 7, 3000)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (19, N'm31', N'20221124', N'7:12', N'noir', N'string', 6000, 7, 4000)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (20, N'g4', N'20221125', N'5:12', N'el', N'string', 16000, 8, 0)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (21, N'g4', N'20221120', N'4:12', N'eli', N'string', 16000, 8, 0)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (22, N'g4', N'20221029', N'4:02', N'lili', N'string', 16000, 8, 0)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (23, N'g4', N'20220926', N'3:02', N'mili', N'string', 16000, 8, 0)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (24, N'g4', N'20220916', N'13:02', N'keli', N'string', 16000, 8, 0)
GO
INSERT [dbo].[Sales] ([SaleId], [ProductName], [SaleDate], [SaleTime], [CustomerName], [CustomerContact], [SellingPrice], [ProductId], [Discount]) VALUES (25, N'g4', N'20220906', N'15:02', N'ken', N'string', 16000, 8, 0)
GO
SET IDENTITY_INSERT [dbo].[Sales] OFF
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Units]
GO
ALTER TABLE [dbo].[ProfitReports] ADD  DEFAULT ((0)) FOR [SaleYear]
GO
ALTER TABLE [dbo].[Sales] ADD  DEFAULT ((0)) FOR [ProductId]
GO
ALTER TABLE [dbo].[Sales] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [Discount]
GO
USE [master]
GO
ALTER DATABASE [DummyDatabase] SET  READ_WRITE 
GO
