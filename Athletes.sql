USE [master]
GO
/****** Object:  Database [Athletes]    Script Date: 24/06/2021 12:36:32 SA ******/
CREATE DATABASE [Athletes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Athletes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.CSDL\MSSQL\DATA\Athletes.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Athletes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.CSDL\MSSQL\DATA\Athletes_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Athletes] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Athletes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Athletes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Athletes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Athletes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Athletes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Athletes] SET ARITHABORT OFF 
GO
ALTER DATABASE [Athletes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Athletes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Athletes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Athletes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Athletes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Athletes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Athletes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Athletes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Athletes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Athletes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Athletes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Athletes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Athletes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Athletes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Athletes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Athletes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Athletes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Athletes] SET RECOVERY FULL 
GO
ALTER DATABASE [Athletes] SET  MULTI_USER 
GO
ALTER DATABASE [Athletes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Athletes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Athletes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Athletes] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Athletes] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Athletes', N'ON'
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 24/06/2021 12:36:32 SA ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 24/06/2021 12:36:32 SA ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLAgent$CSDL]    Script Date: 24/06/2021 12:36:32 SA ******/
CREATE LOGIN [NT SERVICE\SQLAgent$CSDL] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\ReportServer$CSDL]    Script Date: 24/06/2021 12:36:32 SA ******/
CREATE LOGIN [NT SERVICE\ReportServer$CSDL] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQL$CSDL]    Script Date: 24/06/2021 12:36:32 SA ******/
CREATE LOGIN [NT Service\MSSQL$CSDL] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 24/06/2021 12:36:32 SA ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [DESKTOP-PPOG0J8\NGUYEN DINH TIN]    Script Date: 24/06/2021 12:36:32 SA ******/
CREATE LOGIN [DESKTOP-PPOG0J8\NGUYEN DINH TIN] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 24/06/2021 12:36:32 SA ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'RzY3uwszdq7OrNE1muaB6HQ9V8l++fLXl2iKJlY3bz4=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 24/06/2021 12:36:32 SA ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'6w9V7v6eDaWWuQEzh2E7ZvGoXPZrE8CJRf4lOIWjT3A=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLAgent$CSDL]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQL$CSDL]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [DESKTOP-PPOG0J8\NGUYEN DINH TIN]
GO
USE [Athletes]
GO
/****** Object:  Table [dbo].[Achievement]    Script Date: 24/06/2021 12:36:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Achievement](
	[IDACHIEVE] [nchar](8) NOT NULL,
	[IDINFOR] [nchar](6) NOT NULL,
	[Achievement] [nvarchar](50) NOT NULL,
	[Time] [nchar](4) NOT NULL,
	[Certification] [nvarchar](10) NOT NULL,
	[Decision] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Achievement] PRIMARY KEY CLUSTERED 
(
	[IDACHIEVE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Health]    Script Date: 24/06/2021 12:36:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Health](
	[IDHELTH] [nchar](8) NOT NULL,
	[IDINFOR] [nchar](6) NOT NULL,
	[Height] [int] NOT NULL,
	[Weight] [int] NOT NULL,
	[Mentality] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Health] PRIMARY KEY CLUSTERED 
(
	[IDHELTH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Information]    Script Date: 24/06/2021 12:36:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Information](
	[IDINFOR] [nchar](6) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Nationality] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[PlaceOfBirth] [nvarchar](50) NOT NULL,
	[Phone] [char](10) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Sport] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Information] PRIMARY KEY CLUSTERED 
(
	[IDINFOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 24/06/2021 12:36:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Login] int identity(1,1),
	[UserName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sport]    Script Date: 24/06/2021 12:36:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sport](
	[Sport] [nvarchar](50) NOT NULL,
	[Amount] [int] NOT NULL,
	[Condition] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Sport] PRIMARY KEY CLUSTERED 
(
	[Sport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status]    Script Date: 24/06/2021 12:36:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[IDCONDITION] [nchar](8) NOT NULL,
	[IDINFOR] [nchar](6) NOT NULL,
	[Condition] [nvarchar](50) NOT NULL,
	[Time] [nvarchar](30) NOT NULL,
	[Place] [nvarchar](50) NOT NULL,
	[Note] [nvarchar](50) NULL,
 CONSTRAINT [PK_Condition_1] PRIMARY KEY CLUSTERED 
(
	[IDCONDITION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABB001-1', N'IBB001', N'HCV - Giai vo dich bong ban toan quoc', N'2018', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABB001-2', N'IBB001', N'HCD - Giai vo dich bong ban the gioi', N'2019', N'Quoc gia', N'01 QD/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABB002-1', N'IBB002', N'HCD - Giai vo dich toan quoc', N'2018', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABB101-1', N'IBB101', N'HCB - Giai vo dich toan quoc', N'2018', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABB101-2', N'IBB101', N'HCB - Giai vo dich bong ban the gioi', N'2019', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABB101-3', N'IBB101', N'HCV - Giai lien hoan cac CLB bong ban toan quoc', N'2018', N'CLB', N'01 QD/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABB102-1', N'IBB102', N'HCB - Giai lien hoan cac CLB bong ban toan quoc', N'2018', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABB102-2', N'IBB102', N'HCV - Giai vo dich bong ban the gioi', N'2019', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABB102-3', N'IBB102', N'HCV - Giai lien hoan cac CLB bong ban toan quoc', N'2020', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABB102-4', N'IBB102', N'HCB - Giai vo dich bong ban toan quoc', N'2020', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABC001-1', N'IBC001', N'HCV - Giai bong chuyen quoc gia', N'2018', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABC001-2', N'IBC001', N'HCB - Giai lien hoan bong chuyen toan quoc', N'2020', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABC002-1', N'IBC002', N'HCV- Giai bong chuyen quoc gia', N'2018', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABC002-2', N'IBC002', N'HCB - Giai bong chuyen the gioi', N'2019', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABC002-3', N'IBC002', N'HCB - Giai lien hoan bong chuyen toan quoc', N'2020', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABC003-1', N'IBC003', N'HCV - Giai lien hoan bong chuyen toan quoc', N'2020', N'CLB', N'01QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABC101-1', N'IBC101', N'HCV - Giai bong chuyen quoc gia', N'2018', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABC101-2', N'IBC101', N'HCB - Giai lien hoan bong chuyen toan quoc', N'2020', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABC102-1', N'IBC102', N'HCV - Giai lien hoan bong chuyen toan quoc', N'2020', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABC103-1', N'IBC103', N'HCB - Giai lien hoan bong chuyen toan quoc', N'2020', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD001-1', N'IBD001', N'HCV - Giai bong da AFF Cup', N'2018', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD001-2', N'IBD001', N'HCB - Giai lien hoan bong da toan quoc', N'2019', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD002-1', N'IBD002', N'HCV - Giai bong da AFF Cup', N'2018', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD002-2', N'IBD002', N'HCV - Giai lien hoan bong da toan quoc', N'2019', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD003-1', N'IBD003', N'HCV - Giai bong da AFF Cup', N'2018', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD003-2', N'IBD003', N'HCV- Giai lien hoan bong da toan quoc', N'2019', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD004-1', N'IBD004', N'HCV - Giai bong da AFF Cup', N'2018', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD004-2', N'IBD004', N'HCV - Giai lien hoan bong da toan quoc', N'2019', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD005-1', N'IBD005', N'HCV -Giai bong da AFF Cup', N'2018', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD101-1', N'IBD101', N'HCV - Giai bong da AFF Cup', N'2018', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD101-2', N'IBD101', N'HCV - Giai bong da SeaGame', N'2020', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD102-1', N'IBD102', N'HCV - Giai bong da AFF Cup', N'2018', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD102-2', N'IBD102', N'HCB - Giai lien hoan bong da toan quoc', N'2019', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD103-1', N'IBD103', N'HCB - Giai bong da AFF Cup', N'2018', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD103-2', N'IBD103', N'HCV - Giai bong da SeaGame', N'2020', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD104-1', N'IBD104', N'HCV - Giai bong da SeaGame', N'2020', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD105-1', N'IBD105', N'HCV - Giai bong da AFF Cup', N'2018', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD105-2', N'IBD105', N'HCB - Giai lien hoan bong da toan quoc', N'2019', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABD105-3', N'IBD105', N'HCV - Giai bong da SeaGame', N'2020', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABL001-1', N'IBL001', N'HCV - Giai boi loi Dong Nam A', N'2017', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABL001-2', N'IBL001', N'HCV - Giai boi loi toan quoc', N'2018', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABL001-3', N'IBL001', N'HCB - Giai boi loi Dong Nam A', N'2019', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABL001-4', N'IBL001', N'HCB - Giai giao luu boi loi toan quoc', N'2020', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABL002-1', N'IBL001', N'HCB - Giai bon loi toan quoc', N'2018', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABL002-2', N'IBL002', N'HCV - Giai giao luu boi loi toan quoc', N'2020', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABL101-1', N'IBL101', N'HCV - Giai giao luu boi loi toan quoc', N'2020', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABL102-1', N'IBL101', N'HCV - Giao boi loi toan quoc', N'2018', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABL102-2', N'IBL102', N'HCV - Giai boi loi Dong Nam A', N'2019', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABL103-1', N'IBL103', N'HCB - Giai boi loi toan quoc', N'2020', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABL103-2', N'IBL103', N'HCV - Giai giao luu boi loi', N'2020', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABL104-1', N'IBL104', N'HCB - Giai boi loi Dong Nam A', N'2019', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABL104-2', N'IBL104', N'HVD - Giai vo dich boi loi the gioi ', N'2020', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABR001-1', N'IBR001', N'HCD - Giai bong ro toan quoc', N'2018', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABR001-2', N'IBR001', N'HCB - Giai bong ro Dong Nam A', N'2019', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABR002-1', N'IBR002', N'HCB - Giai bong ro toan quoc', N'2018', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABR003-1', N'IBR003', N'HCV - Giai bong ro Dong Nam A', N'2019', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABR003-2', N'IBR003', N'HCB - Giai bong ro toan quoc', N'2020', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABR003-3', N'IBR003', N'HCV - Giai giao luu bong ro toan quoc', N'2020', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABR101-1', N'IBR101', N'HCV - Giai bong ro toan quoc', N'2018', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABR101-2', N'IBR101', N'HCD - Giai bong ro Dong Nam A', N'2019', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABR102-1', N'IBR102', N'HCB - Giai bong ro toan quoc', N'2018', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABR102-2', N'IBR102', N'HCD - Giai bong ro Dong Nam A', N'2019', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABR102-3', N'IBR102', N'HCB - Giai bong ro toan quoc', N'2020', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABR103-1', N'IBR103', N'HCV - Giai bong ro toan quoc', N'2018', N'CLB', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ABR103-2', N'IBR103', N'HCD - Giai bong ro Dong Nam A', N'2019', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ADK001-1', N'IDK001', N'HCB - Giai olympic chay tiep suc toan quoc', N'2018', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ADK001-2', N'IDK001', N'HCV - Giai olympic chay 100m the gioi', N'2018', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ADK001-3', N'IDK001', N'HCV - The van hoi toan quoc - chay 100m', N'2019', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ADK001-4', N'IDK001', N'HCB - Giai olympic chay 100m the gioi', N'2020', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ADK002-1', N'IDK002', N'HCB - The van hoi toan quoc - nhay xa', N'2019', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ADK002-2', N'IDK002', N'HCB - Giai olympic nhay xa the gioi', N'2020', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ADK003-1', N'IDK003', N'HCV - The van hoi toan quoc - Chay tiep suc', N'2019', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ADK101-1', N'IDK101', N'HCD - Giai olympic chay 100m the gioi', N'2018', N'Quoc gia', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ADK101-2', N'IDK101', N'HCD - The van hoi toan quoc - chay 100m', N'2020', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ADK102-1', N'IDK102', N'HCB - The van hoi toan quoc - chay 100m', N'2020', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Achievement] ([IDACHIEVE], [IDINFOR], [Achievement], [Time], [Certification], [Decision]) VALUES (N'ADK103-1', N'IDK103', N'HCV - The van hoi toan quoc - nhay xa', N'2020', N'Thanh pho', N'01 QĐ/VHTT')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBB001-1', N'IBB001', 160, 54, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBB002-1', N'IBB002', 162, 55, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBB101-1', N'IBB101', 170, 60, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBB102-1', N'IBB102', 177, 71, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBC001-1', N'IBC001', 165, 56, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBC002-1', N'IBC002', 170, 60, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBC003-1', N'IBC003', 159, 55, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBC101-1', N'IBC101', 159, 50, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBC102-1', N'IBC102', 180, 62, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBC103-1', N'IBC103', 178, 60, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBD001-1', N'IBD001', 160, 50, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBD002-1', N'IBD002', 161, 49, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBD003-1', N'IBD003', 159, 52, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBD004-1', N'IBD004', 159, 55, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBD005-1', N'IBD005', 155, 50, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBD101-1', N'IBD101', 175, 65, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBD102-1', N'IBD102', 177, 70, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBD103-1', N'IBD103', 180, 69, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBD104-1', N'IBD104', 179, 80, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBD105-1', N'IBD105', 182, 79, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBL001-1', N'IBL001', 169, 50, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBL002-1', N'IBL002', 166, 52, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBL101-1', N'IBL101', 180, 72, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBL102-1', N'IBL102', 177, 69, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBL103-1', N'IBL103', 178, 71, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBL104-1', N'IBL104', 182, 80, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBR001-1', N'IBR001', 168, 58, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBR002-1', N'IBR002', 166, 55, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBR003-1', N'IBR003', 167, 60, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBR101-1', N'IBR101', 182, 80, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBR102-1', N'IBR102', 179, 75, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HBR103-1', N'IBR103', 188, 88, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HDK001-1', N'IDK001', 167, 53, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HDK002-1', N'IDK002', 166, 49, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HDK003-1', N'IDK003', 165, 48, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HDK101-1', N'IDK101', 167, 50, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HDK102-1', N'IDK102', 175, 60, N'Tot')
INSERT [dbo].[Health] ([IDHELTH], [IDINFOR], [Height], [Weight], [Mentality]) VALUES (N'HDK103-1', N'IDK103', 172, 59, N'Tot')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBB001', N'Dang Dieu Hoai Tram', 0, N'Viet Nam', CAST(N'1999-04-23' AS Date), N'Quang Binh', N'0949239489', N'Tramdang99@gmail.com', N'Bong ban')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBB002', N'Tran Thi Dieu Hoai', 0, N'Viet Nam', CAST(N'1998-03-20' AS Date), N'Da Nang', N'0494394040', N'Hoaithidieu@gmail.com', N'Bong ban')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBB101', N'Thai Hoai Bao', 1, N'Viet Nam', CAST(N'1998-09-12' AS Date), N'Quang Nam', N'0944923891', N'Hoaibao98@gmail.cm', N'Bong ban')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBB102', N'Ngo Bao Nam', 1, N'Viet Nam', CAST(N'1999-04-30' AS Date), N'Da Nang', N'0940394320', N'Namngo99@gmail.com', N'Bong ban')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBC001', N'Tran Thi Nha Phuong', 0, N'Viet Nam', CAST(N'1997-05-30' AS Date), N'Quang Tri', N'0944912491', N'Phuongtran97@gmail.com', N'Bong chuyen')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBC002', N'Tran Thanh Thao', 0, N'Viet Nam', CAST(N'1999-04-12' AS Date), N'Quang Ngai', N'0984312934', N'Thanhthaotran99@gmail.com', N'Bong chuyen')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBC003', N'Tran Thi Thai Ngan', 0, N'Viet Nam', CAST(N'1999-01-23' AS Date), N'Quang Ngai', N'0978323914', N'Ngantran99@gmail.com', N'Bong chuyen')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBC101', N'Tran Thai Hoai Nam', 1, N'Viet Nam', CAST(N'1998-09-09' AS Date), N'Quang Tri', N'0933491195', N'Namthan98@gmail.com', N'Bong chuyen')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBC102', N'Tran Thanh Son', 1, N'Viet Nam', CAST(N'1999-08-12' AS Date), N'Quang Ngai', N'0923921249', N'Sonthanh99@gmail.com', N'Bong chuyen')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBC103', N'Nguyen Van Hoang Phu', 1, N'Viet Nam', CAST(N'1997-04-09' AS Date), N'Quang Binh', N'0948293911', N'Phuvan97@gmail.com', N'Bong chuyen')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBD001', N'Tran Thi Thanh', 0, N'Viet Nam', CAST(N'1999-01-21' AS Date), N'Thanh Hoa', N'0905923191', N'Thanhthanhtran@gmail.com', N'Bong da')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBD002', N'Nguyen Thi Thuy', 0, N'Viet Nam', CAST(N'2000-05-04' AS Date), N'Thanh Hoa', N'0293124910', N'Thuynguyen00@gmail.com', N'Bong da')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBD003', N'Nguyen Nhu Quynh', 0, N'Viet Nam', CAST(N'1998-07-30' AS Date), N'Da Nang', N'0293129459', N'Quynhnguyen98@gmail.com', N'Bong da')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBD004', N'Nguyen Thi Tien Duog', 0, N'Viet Nam', CAST(N'1999-05-29' AS Date), N'Quang Binh', N'0924841995', N'Duongthi99@gmail.com', N'Bong da')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBD005', N'Thai Thi Thuy', 0, N'Viet Nam', CAST(N'1998-04-20' AS Date), N'Quang Binh', N'0934834911', N'Thaithithuy@gmail.com', N'Bong da')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBD101', N'Nguyen Sinh Hung', 1, N'Viet Nam', CAST(N'2001-10-02' AS Date), N'Ha Tinh', N'0367123568', N'Hubo0210@gmail.com', N'Bong da')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBD102', N'Nguyen Thanh Hieu', 1, N'Viet Nam', CAST(N'2001-12-03' AS Date), N'Quang Nam', N'0234829139', N'Hieucute@gmail.com', N'Bong da')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBD103', N'Nguyen Dinh Tin', 1, N'Viet Nam', CAST(N'2001-11-11' AS Date), N'Da Nang', N'0906209570', N'ndtfourone2001@gmail.com', N'Bong da')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBD104', N'Nguyen Van Thanh Hieu', 1, N'Viet Nam', CAST(N'1999-05-05' AS Date), N'Ha Noi', N'0949381919', N'Thanhhieunguyen@gmail.com', N'Bong da')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBD105', N'Le Van Dai Dat', 1, N'Viet Nam', CAST(N'1999-06-24' AS Date), N'Hue', N'0948293194', N'Datrapper@gmail.com', N'Bong da')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBL001', N'Nguyen Thi Hoa', 0, N'Viet Nam', CAST(N'1998-05-20' AS Date), N'Hung Yen', N'0979358491', N'Hoaxinhgai98@gmail.com', N'Boi loi')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBL002', N'Pham Hong Van', 0, N'Viet Nam', CAST(N'1999-04-11' AS Date), N'Quang Binh', N'0948549234', N'Vanvanve99@gmail.com', N'Boi loi')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBL101', N'Pham Thanh Tai', 1, N'Viet Nam', CAST(N'1998-09-23' AS Date), N'Quang Ngai', N'0935459235', N'Taiboiloi@gmail.com', N'Boi loi')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBL102', N'Dang Thai Bao', 1, N'Viet Nam', CAST(N'1999-05-21' AS Date), N'Lang Son', N'0934939321', N'Thaibaodang99@gmail.com', N'Boi loi')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBL103', N'Ngo Hai Nam', 1, N'Viet Nam', CAST(N'1998-11-22' AS Date), N'Binh Dinh', N'0943329135', N'Namngo98@gmail.com', N'Boi loi')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBL104', N'Tran Cao Hai Nam', 1, N'Viet Nam', CAST(N'1997-03-20' AS Date), N'Hung Yen', N'0949343892', N'Tramcaonam97@gmail.com', N'Boi loi')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBR001', N'Nguyen Thi Thu Huong', 0, N'Viet Nam', CAST(N'1999-02-20' AS Date), N'Ho Chi Minh', N'0939491399', N'Huongnguyen99@gmail.com', N'Bong ro')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBR002', N'Nguyen Thi Ngoc', 0, N'Viet Nam', CAST(N'1998-10-02' AS Date), N'Thai Nguyen', N'0993849203', N'Ngocnguyen@gmail.com', N'Bong ro')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBR003', N'Nguyen Thai Thu Thuy', 0, N'Viet Nam', CAST(N'1999-10-20' AS Date), N'Hung Yen', N'0948493201', N'Congacon99@gmail.com', N'Bong ro')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBR101', N'Tran Thai Bao', 1, N'Viet Nam', CAST(N'1997-08-20' AS Date), N'Quang Nam', N'0932944190', N'Thaibaotran@gmail.com', N'Bong ro')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBR102', N'Thai Dinh Chien', 1, N'Viet Nam', CAST(N'1999-08-23' AS Date), N'Quang Nam', N'0930239410', N'Chiendinh99@gmail.com', N'Bong ro')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IBR103', N'Nguyen Dinh Chien', 1, N'Viet Nam', CAST(N'1998-09-03' AS Date), N'Quang Binh', N'0923940130', N'Chiensong@gmail.com', N'Bong ro')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IDK001', N'Nguyen Thi Le Hoa', 0, N'Viet Nam', CAST(N'1998-03-30' AS Date), N'Thai Binh', N'0439423045', N'Hoanguyen98@gmail.com', N'Dien kinh')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IDK002', N'Tran Thanh Tam', 0, N'Viet Nam', CAST(N'1996-06-30' AS Date), N'Thai Nguyen', N'0943049140', N'TamTran96@gmail.com', N'Dien kinh')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IDK003', N'Thai Thu Hang', 0, N'Viet Nam', CAST(N'1999-07-30' AS Date), N'Binh Duong', N'0348194103', N'Hangtran99@gmail.com', N'Dien kinh')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IDK101', N'Dang Phuoc Bao', 1, N'Viet Nam', CAST(N'1998-05-21' AS Date), N'Quang Binh', N'0945943429', N'Baodang98@gmail.com', N'Dien kinh')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IDK102', N'Nguyen Thanh Long', 1, N'Viet Nam', CAST(N'1997-09-03' AS Date), N'Ba Ria Vung Tau', N'0945923894', N'Longthanh97@gmail.com', N'Dien kinh')
INSERT [dbo].[Information] ([IDINFOR], [Name], [Gender], [Nationality], [DateOfBirth], [PlaceOfBirth], [Phone], [Email], [Sport]) VALUES (N'IDK103', N'Nguyen Bao Lam', 1, N'Viet Nam', CAST(N'1998-03-30' AS Date), N'Quang Nam', N'0940430234', N'Lambaothanh98@gmail.com', N'Dien kinh')
INSERT [dbo].[Login] ([Login], [UserName], [PassWord]) VALUES (N'1         ', N'tin123', N'123')
INSERT [dbo].[Login] ([Login], [UserName], [PassWord]) VALUES (N'2         ', N'hieu123', N'123')
INSERT [dbo].[Sport] ([Sport], [Amount], [Condition]) VALUES (N'Boi loi', 6, N'Can loai 2 VDV nam')
INSERT [dbo].[Sport] ([Sport], [Amount], [Condition]) VALUES (N'Bong ban', 4, N'Du')
INSERT [dbo].[Sport] ([Sport], [Amount], [Condition]) VALUES (N'Bong chuyen', 6, N'Du')
INSERT [dbo].[Sport] ([Sport], [Amount], [Condition]) VALUES (N'Bong da', 8, N'Can tuyen 2 VDV')
INSERT [dbo].[Sport] ([Sport], [Amount], [Condition]) VALUES (N'Bong ro', 6, N'Can tuyen 4 VDV')
INSERT [dbo].[Sport] ([Sport], [Amount], [Condition]) VALUES (N'Dien kinh', 6, N'Du')
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBB001-1', N'IBB001', N'Luyen tap', N'02-30/06/2021', N'Da Nang', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBB001-2', N'IBB001', N'Thi dau', N'01-03/07/2021', N'Ho Chi Minh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBB002-1', N'IBB002', N'Luyen tap', N'02-30/06/2021', N'Da Nang', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBB002-2', N'IBB002', N'Thi dau', N'01-03/07/2021', N'Ho Chi Minh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBB101-1', N'IBB101', N'Thi dau', N'01-15/06/2021', N'Ho Chi Minh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBB102-1', N'IBB102', N'Thi dau', N'01-15/06/2021', N'Ho Chi Minh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBC001-1', N'IBC001', N'Luyen tap', N'02-30/06/2021', N'Ho Chi Minh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBC002-1', N'IBC002', N'Luyen tap', N'02-30/06/2021', N'Ho Chi Minh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBC003-1', N'IBC003', N'Luyen tap', N'02-30/06/2021', N'Ho Chi Minh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBC101-1', N'IBC101', N'Luyen tap', N'02-30/06/2021', N'Ho Chi Minh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBC102-1', N'IBC102', N'Luyen tap', N'02-30/06/2021', N'Ho Chi Minh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBC103-1', N'IBC103', N'Nghi phep', N'02-10/06/2021', N'Ho Chi Minh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBC103-2', N'IBC103', N'Luyen tap', N'11-30/06/2021', N'Ho Chi Minh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBD001-1', N'IBD001', N'Thi dau', N'02-27/06/2021', N'Ha Noi', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBD002-1', N'IBD001', N'Thi dau', N'02-27/06/2021', N'Ha Noi', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBD003-1', N'IBD003', N'Thi dau', N'02-27/06/2021', N'Ha Noi', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBD004-1', N'IBD004', N'Chan thuong', N'02-20/06/2021', N'Ha Noi', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBD004-2', N'IBD004', N'Thi dau', N'20-27/06/2021', N'Ha Noi ', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBD005-1', N'IBD005', N'Thi dau', N'02-27/06/2021', N'Ha Noi', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBD101-1', N'IBD101', N'Thi dau', N'02-27/06/2021', N'Hai Phong', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBD102-1', N'IBD102', N'Thi dau', N'02-27/06/2021', N'Hai Phong', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBD103-1', N'IBD103', N'Thi dau', N'02-27/06/2021', N'Hai Phong', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBD104-1', N'IBD104', N'Thi dau', N'02-27/06/2021', N'Hai Phong', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBD105-1', N'IBD105', N'Thi dau', N'02-27/06/2021', N'Hai Phong', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBL001-1', N'IBL001', N'Nghi phep', N'02-15/06/2021', N'Hung Yen', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBL001-2', N'IBL001', N'Luyen tap', N'15-30/06/2021', N'Ho Chi Minh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBL002-1', N'IBL002', N'Nghi phep', N'02-15/06/2021', N'Quang Binh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBL002-2', N'IBL002', N'Luyen tap', N'15-30/06/2021', N'Ho Chi Minh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBL101-1', N'IBL101', N'Nghi phep', N'02-15/06/2021', N'Quang Ngai', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBL101-2', N'IBL101', N'Luyen tap', N'15-30/06/2021', N'Ho Chi Minh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBL102-1', N'IBL102', N'Chan thuong', N'02-30/06/2021', N'Ho Chi Minh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBL103-1', N'IBL103', N'Nghi phep', N'02-15/06/2021', N'Binh Dinh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBL103-2', N'IBL103', N'Luyen tap', N'15-30/06/2021', N'Ho Chi Minh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBL104-1', N'IBL104', N'Luyen tap', N'02-30/06/2021', N'Ho Chi Minh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBR001-1', N'IBR001', N'Thi dau', N'21/05-10/06/2021', N'Da Nang', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBR001-2', N'IBR001', N'Nghi phep', N'10-15/06/2021', N'Da Nang', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBR001-3', N'IBR001', N'Luyen tap', N'16-30/06/2021', N'Da Nang', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBR002-1', N'IBR002', N'Thi dau', N'21/05-10/06/2021', N'Da Nang', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBR002-2', N'IBR002', N'Nghi ngoi', N'10-15/06/2021', N'Da Nang', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBR002-3', N'IBR002', N'Luyen tap', N'16-30/06/2021', N'Da Nang', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBR003-1', N'IBR003', N'Thi dau', N'21/05-10/06/2021', N'Da Nang', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBR003-2', N'IBR003', N'Nghi phep', N'10-15/06/2021', N'Da Nang', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBR003-3', N'IBR003', N'Luyen tap', N'16-30/06/2021', N'Da Nang', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBR101-1', N'IBR101', N'Thi dau', N'02-20/06/2021', N'Da Nang', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBR101-2', N'IBR101', N'Nghi phep', N'20-30/06/2021', N'Quang Nam', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBR102-1', N'IBR102', N'Thi dau', N'02-20/06/2021', N'Da Nang', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBR102-2', N'IBR102', N'Nghi phep', N'20-30/06/2021', N'Quang Nam', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBR103-1', N'IBR103', N'Thi dau', N'02-20/06/2021', N'Da Nang', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CBR103-2', N'IBR103', N'Nghi phep', N'20-30/06/2021', N'Quang Binh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CDK001-1', N'IDK001', N'Nghi phep', N'01-15/06/2021', N'Da Nang', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CDK001-2', N'IDK001', N'Luyen tap', N'16-30/06/2021', N'Quang Nam', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CDK002-1', N'IDK002', N'Nghi phep', N'01-15/06/2021', N'Da Nang', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CDK002-2', N'IDK002', N'Luyen tap', N'16-30/06/2021', N'Quang Nam', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CDK003-1', N'IDK003', N'Nghi phep', N'01-15/06/2021', N'Da Nang', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CDK003-2', N'IDK002', N'Luyen tao', N'16-30/06/2021', N'Quang Nam', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CDK101-1', N'IDK101', N'Nghi phep', N'01-15/06/2021', N'Quang Binh', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CDK101-2', N'IDK101', N'Luyen tap', N'16-30/06/2021', N'Quang Nam', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CDK102-1', N'IDK102', N'Nghi phep', N'01-15/06/2021', N'Ba Ria Vung Tau', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CDK102-2', N'IDK102', N'Luyen tap', N'16-30/06/2021', N'Quang Nam', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CDK103-1', N'IDK103', N'Nghi phep', N'01-15/06/2021', N'Quang Nam', NULL)
INSERT [dbo].[Status] ([IDCONDITION], [IDINFOR], [Condition], [Time], [Place], [Note]) VALUES (N'CDK103-2', N'IDK103', N'Luyen tap', N'16-30/06/2021', N'Quang Nam', NULL)
ALTER TABLE [dbo].[Achievement]  WITH CHECK ADD  CONSTRAINT [FK_Achievement_Information] FOREIGN KEY([IDINFOR])
REFERENCES [dbo].[Information] ([IDINFOR])
GO
ALTER TABLE [dbo].[Achievement] CHECK CONSTRAINT [FK_Achievement_Information]
GO
ALTER TABLE [dbo].[Health]  WITH CHECK ADD  CONSTRAINT [FK_Health_Information] FOREIGN KEY([IDINFOR])
REFERENCES [dbo].[Information] ([IDINFOR])
GO
ALTER TABLE [dbo].[Health] CHECK CONSTRAINT [FK_Health_Information]
GO
ALTER TABLE [dbo].[Information]  WITH CHECK ADD  CONSTRAINT [FK_Information_Sport] FOREIGN KEY([Sport])
REFERENCES [dbo].[Sport] ([Sport])
GO
ALTER TABLE [dbo].[Information] CHECK CONSTRAINT [FK_Information_Sport]
GO
ALTER TABLE [dbo].[Status]  WITH CHECK ADD  CONSTRAINT [FK_Condition_Information] FOREIGN KEY([IDINFOR])
REFERENCES [dbo].[Information] ([IDINFOR])
GO
ALTER TABLE [dbo].[Status] CHECK CONSTRAINT [FK_Condition_Information]
GO
USE [master]
GO
ALTER DATABASE [Athletes] SET  READ_WRITE 
GO
