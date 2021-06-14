USE [master]
GO
/****** Object:  Database [VDV]    Script Date: 6/15/2021 12:46:30 AM ******/
CREATE DATABASE [VDV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VDV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.CSDL\MSSQL\DATA\VDV.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'VDV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.CSDL\MSSQL\DATA\VDV_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [VDV] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VDV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VDV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VDV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VDV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VDV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VDV] SET ARITHABORT OFF 
GO
ALTER DATABASE [VDV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VDV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VDV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VDV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VDV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VDV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VDV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VDV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VDV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VDV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VDV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VDV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VDV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VDV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VDV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VDV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VDV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VDV] SET RECOVERY FULL 
GO
ALTER DATABASE [VDV] SET  MULTI_USER 
GO
ALTER DATABASE [VDV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VDV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VDV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VDV] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [VDV] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'VDV', N'ON'
GO
USE [VDV]
GO
/****** Object:  Table [dbo].[DanhSach]    Script Date: 6/15/2021 12:46:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DanhSach](
	[ID] [char](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[QuocTich] [nchar](20) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[NoiSinh] [char](20) NOT NULL,
	[SoDienThoai] [int] NOT NULL,
	[MonTheThao] [char](20) NOT NULL,
	[ChucVu] [char](10) NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DanhSach] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MonTheThao]    Script Date: 6/15/2021 12:46:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonTheThao](
	[MonTheThao] [char](20) NOT NULL,
	[SoLuongHT] [int] NOT NULL,
	[TinhTrang] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MonTheThao] PRIMARY KEY CLUSTERED 
(
	[MonTheThao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThanhTuu]    Script Date: 6/15/2021 12:46:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanhTuu](
	[ID] [char](10) NOT NULL,
	[HCV] [int] NOT NULL,
	[HCB] [int] NOT NULL,
	[HCD] [int] NOT NULL,
 CONSTRAINT [PK_LichThiDau] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BB-00     ', N'Pham Duc Huy', 1, N'Viet Nam            ', CAST(N'1995-01-20' AS Date), N'Hai Duong           ', 213129125, N'Bong ban            ', N'HLV BB    ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BB-10     ', N'Nguyen Thanh Thuy', 1, N'Viet Nam            ', CAST(N'1978-04-23' AS Date), N'Quang Ngai          ', 213912495, N'Bong ban            ', N'HLV BB Nam', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BB1001    ', N'Nguyen Thi Tuyet Dung', 0, N'Viet Nam            ', CAST(N'1993-12-11' AS Date), N'Ha Nam              ', 294985119, N'Bong ban            ', N'VDV       ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BB1002    ', N'Tran Thi Hong Nhung

', 0, N'Viet Nam            ', CAST(N'1992-10-28' AS Date), N'Ha Nam              ', 983219141, N'Bong ban            ', N'VDV       ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BB1101    ', N'Chuong Thanh Toan', 1, N'Viet Nam            ', CAST(N'1995-05-19' AS Date), N'Kien Giang          ', 906839315, N'Bong ban            ', N'VDV       ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BB1102    ', N'Nguyen Thanh Hieu', 1, N'Viet Nam            ', CAST(N'1998-05-23' AS Date), N'Ha Giang            ', 983473481, N'Bong ban            ', N'VDV       ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BC-00     ', N'Tran Dinh Tien', 1, N'Viet Nam            ', CAST(N'1963-05-15' AS Date), N'Nghe An             ', 902145185, N'Bong chuyen         ', N'HLV BC Nu ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BC-10     ', N'Li Huan Ning', 1, N'Trung Quoc          ', CAST(N'1953-06-13' AS Date), N'Bac Kinh            ', 903431516, N'Bong chuyen         ', N'HLV BC Nam', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BC1001    ', N'Huynh Nhu', 0, N'Viet Nam            ', CAST(N'1991-11-28' AS Date), N'Tra Vinh            ', 923128419, N'Bong chuyen         ', N'VDV       ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BC1002    ', N'Pham Thi Hai Yen', 0, N'Viet Nam            ', CAST(N'1994-11-09' AS Date), N'Ha Noi              ', 903434195, N'Bong chuyen         ', N'VDV       ', N'Luyen Tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BC1003    ', N'Dang Thi Kieu Trinh', 0, N'Viet Nam            ', CAST(N'1995-12-19' AS Date), N'Dong Tap            ', 923819492, N'Bong chuyen         ', N'VDV       ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BC1004    ', N'Tran Thi Kim Thanh', 0, N'Viet Nam            ', CAST(N'1993-09-18' AS Date), N'Long An             ', 938474188, N'Bong chuyen         ', N'VDV       ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BC1101    ', N'Tran Dinh Trong', 1, N'Viet Nam            ', CAST(N'1997-04-25' AS Date), N'Ha Noi              ', 213812852, N'Bong chuyen         ', N'VDV       ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BC1102    ', N'Tran Dinh Hai', 1, N'Viet Nam            ', CAST(N'1996-04-14' AS Date), N'Hai Duong           ', 124102434, N'Bong chuyen         ', N'VDV       ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BC1103    ', N'Tran Quang Tuan', 1, N'Viet Nam            ', CAST(N'1996-09-29' AS Date), N'Ha Noi              ', 905231245, N'Bong chuyen         ', N'VDV       ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BC1104    ', N'Tran Thanh Nhat Huy', 1, N'Viet Nam            ', CAST(N'1996-02-09' AS Date), N'Nghe An             ', 905232315, N'Bong chuyen         ', N'VDV       ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BC1105    ', N'Nguyen Dinh Thuan', 1, N'Viet Nam            ', CAST(N'1995-02-21' AS Date), N'Nghe An             ', 903413158, N'Bong chuyen         ', N'VDV       ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BD-00     ', N'Park Hang-Seo', 1, N'Han Quoc            ', CAST(N'1957-01-10' AS Date), N'Gyeongsang Nam      ', 493412341, N'Bong da             ', N'HLV BD Nam', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BD-01     ', N'Lee Young-jin', 1, N'Han Quoc            ', CAST(N'1963-10-27' AS Date), N'Seoul               ', 983941913, N'Bong da             ', N'Tro ly HLV', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BD-10     ', N'Mai Duc Chung', 1, N'Viet Nam            ', CAST(N'1950-04-28' AS Date), N'Tuyen Quang         ', 923285921, N'Bong da             ', N'HLV BD Nu ', N'Cong tac')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BD-11     ', N'Nguyen Anh Tuan', 1, N'Viet Nam            ', CAST(N'1966-05-20' AS Date), N'Ha Noi              ', 843191151, N'Bong da             ', N'Tro ly HLV', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BD1001    ', N'Vu Thi Thuy', 0, N'Viet Nam            ', CAST(N'1994-08-08' AS Date), N'Ha Nam              ', 944829151, N'Bong da             ', N'VDV       ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BD1002    ', N'Thai Dinh Duong', 0, N'Viet Nam            ', CAST(N'1993-08-13' AS Date), N'Moskva, Nga         ', 213129522, N'Bong da             ', N'VDV       ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BD1003    ', N'Nguyen Hai Hoa', 0, N'Viet Nam            ', CAST(N'1989-12-22' AS Date), N'Thai Nguyen         ', 923024819, N'Bong da             ', N'VDV       ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BD1004    ', N'Nguyen Thi Thu Thuy', 0, N'Viet Nam            ', CAST(N'1986-02-19' AS Date), N'Dong Thap           ', 998529424, N'Bong da             ', N'VDV       ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BD1005    ', N'Duong Thi Hoai', 0, N'Viet Nam            ', CAST(N'1995-05-16' AS Date), N'Thai Binh           ', 958343491, N'Bong da             ', N'VDV       ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BD1101    ', N'Doan Van Hau', 1, N'Viet Nam            ', CAST(N'1999-04-19' AS Date), N'Thai Binh           ', 905655421, N'Bong da             ', N'VDV       ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BD1102    ', N'Nguyen Quang Hai', 1, N'Viet Nam            ', CAST(N'1997-04-17' AS Date), N'Ha Noi              ', 906201231, N'Bong da             ', N'VDV       ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BD1103    ', N'Nguyen Van Toan ', 1, N'Viet Nam            ', CAST(N'1996-04-12' AS Date), N'Hai Duong           ', 239245482, N'Bong da             ', N'VDV       ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BD1104    ', N'Ha Duc Chinh', 1, N'Viet Nam            ', CAST(N'1997-09-22' AS Date), N'Phu Tho             ', 902324195, N'Bong da             ', N'VDV       ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BL-10     ', N'Tran Thi Kim Thanh

', 0, N'Viet Nam            ', CAST(N'1973-09-18' AS Date), N'Long An             ', 990434191, N'Boi loi             ', N'HLV BL Nu ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BL1001    ', N'Hoang Thi Loan', 0, N'Viet Nam            ', CAST(N'1995-02-06' AS Date), N'Ha Tay              ', 923285919, N'Boi loi             ', N'VDV       ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BL1002    ', N'Tran Hoang Tram', 0, N'Viet Nam            ', CAST(N'1994-04-20' AS Date), N'Ha Nam              ', 213124929, N'Boi loi             ', N'VDV       ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BL1101    ', N'Nguyen Nam', 1, N'Viet Nam            ', CAST(N'1999-09-24' AS Date), N'Ha Nam              ', 983493413, N'Boi loi             ', N'VDV       ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'BL1102    ', N'Nguyen Van Thanh Chung', 1, N'Viet Nam            ', CAST(N'1992-09-11' AS Date), N'Da Nang             ', 923849211, N'Boi loi             ', N'VDV       ', N'Luyen tap')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'CV-00     ', N'Le Quan Liem', 1, N'Viet Nam            ', CAST(N'1989-04-23' AS Date), N'Thai Nguyen         ', 283235923, N'Co vua              ', N'HLV CV Nam', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'CV-10     ', N'Tran Thanh Nhat', 1, N'Viet Nam            ', CAST(N'1966-04-12' AS Date), N'Long An             ', 238912458, N'Co vua              ', N'HLV CV Nu ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'CV1001    ', N'Nguyen Thi Thuy Hang', 0, N'Viet Nam            ', CAST(N'1997-11-19' AS Date), N'Quang Ngai          ', 923851910, N'Co vua              ', N'VDV       ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'CV1002    ', N'Truong Thanh Nga', 0, N'Viet Nam            ', CAST(N'1996-06-26' AS Date), N'Thai Nguyen         ', 928329419, N'Co vua              ', N'VDV       ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'CV1101    ', N'Truong Thanh Toan', 1, N'Viet Nam            ', CAST(N'1999-02-25' AS Date), N'Thai Binh           ', 934934918, N'Co vua              ', N'VDV       ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'CV1102    ', N'Tran Hoang Nhat Tan', 1, N'Viet Nam            ', CAST(N'1994-06-01' AS Date), N'Quang Ngai          ', 923819148, N'Co vua              ', N'VDV       ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'DK-00     ', N'Ha Thi Nhai', 0, N'Viet Nam            ', CAST(N'1978-03-15' AS Date), N'Lai Chau            ', 928349100, N'Dien kinh           ', N'HLV DK Nu ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'DK-10     ', N'Nguyen Thanh Son', 1, N'Viet Nam            ', CAST(N'1959-06-19' AS Date), N'Thai Binh           ', 934293481, N'Dien kinh           ', N'HLV DK Nam', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'DK1001    ', N'Chuong Thi Kieu

', 0, N'Viet Nam            ', CAST(N'1995-08-19' AS Date), N'Kien Giang          ', 293419491, N'Dien kinh           ', N'VDV       ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'DK1002    ', N'Nguyen Thi Tuyet Ngan

', 0, N'Viet Nam            ', CAST(N'2000-02-10' AS Date), N'Long An             ', 993843195, N'Dien kinh           ', N'VDV       ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'DK1101    ', N'Thai Van Hoai', 1, N'Viet Nam            ', CAST(N'1997-04-03' AS Date), N'Quang Nam           ', 932831945, N'Dien kinh           ', N'VDV       ', N'Thi dau')
INSERT [dbo].[DanhSach] ([ID], [HoTen], [GioiTinh], [QuocTich], [NgaySinh], [NoiSinh], [SoDienThoai], [MonTheThao], [ChucVu], [TrangThai]) VALUES (N'DK1102    ', N'Nguyen Sinh Hung', 1, N'Viet Nam            ', CAST(N'2000-05-28' AS Date), N'Ha Tinh             ', 948591241, N'Dien kinh           ', N'VDV       ', N'Thi dau')
INSERT [dbo].[MonTheThao] ([MonTheThao], [SoLuongHT], [TinhTrang]) VALUES (N'Boi loi             ', 5, N'Can tuyen 1 HLV BL Nam')
INSERT [dbo].[MonTheThao] ([MonTheThao], [SoLuongHT], [TinhTrang]) VALUES (N'Bong ban            ', 6, N'Du')
INSERT [dbo].[MonTheThao] ([MonTheThao], [SoLuongHT], [TinhTrang]) VALUES (N'Bong chuyen         ', 11, N'Can tuyen 1 VDV Nu')
INSERT [dbo].[MonTheThao] ([MonTheThao], [SoLuongHT], [TinhTrang]) VALUES (N'Bong da             ', 13, N'Can tuyen 1 VDV Nam')
INSERT [dbo].[MonTheThao] ([MonTheThao], [SoLuongHT], [TinhTrang]) VALUES (N'Co vua              ', 6, N'Du')
INSERT [dbo].[MonTheThao] ([MonTheThao], [SoLuongHT], [TinhTrang]) VALUES (N'Dien kinh           ', 8, N'Du')
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BB1001    ', 4, 5, 2)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BB1002    ', 3, 3, 5)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BB1101    ', 6, 3, 1)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BB1102    ', 5, 3, 2)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BC1001    ', 7, 2, 1)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BC1002    ', 5, 4, 0)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BC1003    ', 12, 7, 4)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BC1004    ', 9, 5, 3)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BC1101    ', 10, 4, 4)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BC1102    ', 9, 5, 6)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BC1103    ', 11, 4, 4)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BC1104    ', 11, 6, 4)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BC1105    ', 5, 6, 4)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BD1001    ', 6, 9, 3)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BD1002    ', 7, 5, 3)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BD1003    ', 7, 4, 6)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BD1004    ', 5, 4, 8)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BD1005    ', 10, 3, 1)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BD1101    ', 7, 8, 4)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BD1102    ', 11, 7, 2)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BD1103    ', 14, 4, 3)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BD1104    ', 8, 7, 4)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BL1001    ', 7, 4, 2)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BL1002    ', 11, 6, 1)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BL1101    ', 7, 5, 3)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'BL1102    ', 8, 6, 4)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'CV1001    ', 7, 8, 2)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'CV1002    ', 8, 4, 5)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'CV1101    ', 9, 5, 7)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'CV1102    ', 7, 4, 8)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'DK1001    ', 6, 4, 5)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'DK1002    ', 8, 4, 4)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'DK1101    ', 9, 5, 2)
INSERT [dbo].[ThanhTuu] ([ID], [HCV], [HCB], [HCD]) VALUES (N'DK1102    ', 11, 4, 2)
ALTER TABLE [dbo].[DanhSach]  WITH CHECK ADD  CONSTRAINT [FK_DanhSach_MonTheThao1] FOREIGN KEY([MonTheThao])
REFERENCES [dbo].[MonTheThao] ([MonTheThao])
GO
ALTER TABLE [dbo].[DanhSach] CHECK CONSTRAINT [FK_DanhSach_MonTheThao1]
GO
ALTER TABLE [dbo].[ThanhTuu]  WITH CHECK ADD  CONSTRAINT [FK_LichThiDau_DanhSach] FOREIGN KEY([ID])
REFERENCES [dbo].[DanhSach] ([ID])
GO
ALTER TABLE [dbo].[ThanhTuu] CHECK CONSTRAINT [FK_LichThiDau_DanhSach]
GO
USE [master]
GO
ALTER DATABASE [VDV] SET  READ_WRITE 
GO
