USE [master]
GO
/****** Object:  Database [DienThoaiDiDong]    Script Date: 4/16/2016 8:16:57 AM ******/
CREATE DATABASE [DienThoaiDiDong]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DienThoaiDiDong', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DienThoaiDiDong.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DienThoaiDiDong_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DienThoaiDiDong_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DienThoaiDiDong] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DienThoaiDiDong].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DienThoaiDiDong] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET ARITHABORT OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DienThoaiDiDong] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DienThoaiDiDong] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DienThoaiDiDong] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DienThoaiDiDong] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DienThoaiDiDong] SET  MULTI_USER 
GO
ALTER DATABASE [DienThoaiDiDong] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DienThoaiDiDong] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DienThoaiDiDong] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DienThoaiDiDong] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DienThoaiDiDong] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DienThoaiDiDong]
GO
/****** Object:  Table [dbo].[giaodich]    Script Date: 4/16/2016 8:16:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giaodich](
	[giaodich_id] [nchar](10) NOT NULL,
	[giaodich_status] [nvarchar](50) NULL,
	[khachhang_id] [nchar](10) NULL,
	[tongtien] [int] NULL,
	[created] [int] NULL,
 CONSTRAINT [PK_giaodich] PRIMARY KEY CLUSTERED 
(
	[giaodich_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hoadon]    Script Date: 4/16/2016 8:16:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadon](
	[giaodich_id] [nchar](10) NOT NULL,
	[sanpham_id] [nchar](10) NOT NULL,
	[soluong] [int] NULL,
	[tongtien] [int] NULL,
 CONSTRAINT [PK_Hoadon] PRIMARY KEY CLUSTERED 
(
	[giaodich_id] ASC,
	[sanpham_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 4/16/2016 8:16:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[khachhang_id] [nchar](10) NOT NULL,
	[khachhang_name] [nvarchar](50) NULL,
	[khachhang_ns] [date] NULL,
	[khachhang_diachi] [nvarchar](50) NULL,
	[khachhang_sdt] [nchar](15) NULL,
	[khachhang_taikhoan] [nvarchar](50) NULL,
	[khachhang_matkhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_khachhang] PRIMARY KEY CLUSTERED 
(
	[khachhang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loaipk]    Script Date: 4/16/2016 8:16:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaipk](
	[loaipk_id] [nchar](10) NOT NULL,
	[loaipk_name] [nchar](50) NULL,
 CONSTRAINT [PK_loaipk] PRIMARY KEY CLUSTERED 
(
	[loaipk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phukien]    Script Date: 4/16/2016 8:16:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phukien](
	[phukien_id] [nchar](10) NOT NULL,
	[phukien_name] [nvarchar](100) NULL,
	[hinhanh1] [nvarchar](200) NULL,
	[hinhanh2] [nvarchar](200) NULL,
	[hinhanh4] [nvarchar](200) NULL,
	[hinhanh5] [nvarchar](200) NULL,
	[hinhanh3] [nvarchar](200) NULL,
	[chuthich] [nvarchar](500) NULL,
	[loaipk_id] [nchar](10) NULL,
	[gia_pk] [int] NULL,
 CONSTRAINT [PK_phukien] PRIMARY KEY CLUSTERED 
(
	[phukien_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 4/16/2016 8:16:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[sanpham_id] [nchar](10) NOT NULL,
	[sanpham_name] [nvarchar](50) NULL,
	[gia_sanpham] [int] NULL,
	[soluong_sp] [int] NULL,
	[theloai_id] [nvarchar](50) NULL,
	[hinhanh_sp] [text] NULL,
	[hinhanh_sp1] [text] NULL,
	[hinhanh_sp3] [text] NULL,
	[hinhanh_sp4] [text] NULL,
	[kichthuoc_hinhanh] [text] NULL,
	[camera_truoc] [text] NULL,
	[camera_sau] [text] NULL,
	[he_dieu_hanh] [nvarchar](200) NULL,
	[cpu] [nvarchar](200) NULL,
	[ram] [nvarchar](200) NULL,
	[bo_nho_trong] [nvarchar](200) NULL,
	[the_nho] [nvarchar](200) NULL,
	[sim] [nvarchar](200) NULL,
	[ket_noi] [nvarchar](200) NULL,
	[pin] [nvarchar](100) NULL,
 CONSTRAINT [PK_sanpham] PRIMARY KEY CLUSTERED 
(
	[sanpham_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[theloaisp]    Script Date: 4/16/2016 8:16:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[theloaisp](
	[theloai_id] [nvarchar](50) NOT NULL,
	[theloai_name] [nvarchar](50) NULL,
	[parent_id] [nchar](10) NULL,
 CONSTRAINT [PK_theloaisp] PRIMARY KEY CLUSTERED 
(
	[theloai_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[giaodich] ([giaodich_id], [giaodich_status], [khachhang_id], [tongtien], [created]) VALUES (N'DD01      ', NULL, NULL, NULL, NULL)
INSERT [dbo].[giaodich] ([giaodich_id], [giaodich_status], [khachhang_id], [tongtien], [created]) VALUES (N'DD02      ', NULL, NULL, NULL, NULL)
INSERT [dbo].[giaodich] ([giaodich_id], [giaodich_status], [khachhang_id], [tongtien], [created]) VALUES (N'DD03      ', NULL, NULL, NULL, NULL)
INSERT [dbo].[giaodich] ([giaodich_id], [giaodich_status], [khachhang_id], [tongtien], [created]) VALUES (N'DD04      ', NULL, NULL, NULL, NULL)
INSERT [dbo].[giaodich] ([giaodich_id], [giaodich_status], [khachhang_id], [tongtien], [created]) VALUES (N'DD05      ', NULL, NULL, NULL, NULL)
INSERT [dbo].[giaodich] ([giaodich_id], [giaodich_status], [khachhang_id], [tongtien], [created]) VALUES (N'DD06      ', NULL, NULL, NULL, NULL)
INSERT [dbo].[giaodich] ([giaodich_id], [giaodich_status], [khachhang_id], [tongtien], [created]) VALUES (N'DD07      ', NULL, NULL, NULL, NULL)
INSERT [dbo].[giaodich] ([giaodich_id], [giaodich_status], [khachhang_id], [tongtien], [created]) VALUES (N'DD08      ', NULL, NULL, NULL, NULL)
INSERT [dbo].[giaodich] ([giaodich_id], [giaodich_status], [khachhang_id], [tongtien], [created]) VALUES (N'DD09      ', NULL, NULL, NULL, NULL)
INSERT [dbo].[giaodich] ([giaodich_id], [giaodich_status], [khachhang_id], [tongtien], [created]) VALUES (N'DD10      ', NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH01      ', N'Lê thị Thanh Huyền', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH02      ', N'Trần thị Ngọc', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH03      ', N'Dương Thị Anh', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH04      ', N'Vũ Thị Hằng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH05      ', N'Nguyễn Thanh Tùng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH06      ', N'Đinh Ngọc Tân', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH07      ', N'Trịnh Văn Huy', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH08      ', N'Lưu Trường Giang', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH09      ', N'Mai Huy Thế', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH10      ', N'Nguyễn Thùy Linh', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH11      ', N'Nguyễn Ánh Nguyệt', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH12      ', N'Trần Thị Qúy', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH13      ', N'Phạm Thu Cúc', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH14      ', N'Nguyễn Thị Lan Phương', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH15      ', N'Nguyễn Thị Diệu Anh', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH16      ', N'Nguyễn Hồng Phúc', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH17      ', N'Nguyễn Việt Dũng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH18      ', N'Hoàng Trí Dũng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH19      ', N'Vương Đăng Đoàn', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH20      ', N'Nguyễn Thị Liên', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH21      ', N'Phạm Thị Mến', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH22      ', N'Nguyễn Minh Ngọc', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH23      ', N'Dương Thị Hồng Công', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH24      ', N'Nguyễn Thị Phượng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH25      ', N'Nguyễn Thị Cúc', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH26      ', N'Nguyễn Thanh Thiên', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH27      ', N'Lê Thị Trang', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH28      ', N'Lê Văn Tuấn', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH29      ', N'Nguyễn Văn Tân', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH30      ', N'Phạm Tất Đạt', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (N'KH31      ', N'Nguyễn Mai Châu', CAST(N'1995-10-01' AS Date), N'Hà Nội', N'09465233       ', N'ChauMTA', N'10102707')
INSERT [dbo].[loaipk] ([loaipk_id], [loaipk_name]) VALUES (N'LPK01     ', N'Tai Nghe                                          ')
INSERT [dbo].[loaipk] ([loaipk_id], [loaipk_name]) VALUES (N'LPK02     ', N'Ốp lưng                                           ')
INSERT [dbo].[loaipk] ([loaipk_id], [loaipk_name]) VALUES (N'LPK03     ', N'Cáp Xạc                                           ')
INSERT [dbo].[loaipk] ([loaipk_id], [loaipk_name]) VALUES (N'LPK04     ', N'Thẻ nhớ                     Thẻ Nhớ               ')
INSERT [dbo].[loaipk] ([loaipk_id], [loaipk_name]) VALUES (N'LPK05     ', N'Tai Nghe                                          ')
INSERT [dbo].[loaipk] ([loaipk_id], [loaipk_name]) VALUES (N'LPK06     ', N'Gậy Chụp Ảnh                                      ')
INSERT [dbo].[loaipk] ([loaipk_id], [loaipk_name]) VALUES (N'LPK08     ', N'Pin                                               ')
INSERT [dbo].[loaipk] ([loaipk_id], [loaipk_name]) VALUES (N'LPK09     ', N'Miếng Dán Màn Hình                                ')
INSERT [dbo].[phukien] ([phukien_id], [phukien_name], [hinhanh1], [hinhanh2], [hinhanh4], [hinhanh5], [hinhanh3], [chuthich], [loaipk_id], [gia_pk]) VALUES (N'PK01      ', N'Tai nghe chụp tai Genius HS-200C', N'tai-nghe-chup-tai-genius-hs-200c-1-300x300.jpg', NULL, NULL, NULL, NULL, N'Thiết kế đơn giản và tiện dụng.
Lớp đệm tai mềm cho cảm giác thoải mái khi đeo.
Chất lượng âm thanh Stereo sống động.
Tích hợp Micro đàm thoại.
Tương thích với hầu hết các thiết bị điện tử.', N'LPK01     ', 110000)
INSERT [dbo].[phukien] ([phukien_id], [phukien_name], [hinhanh1], [hinhanh2], [hinhanh4], [hinhanh5], [hinhanh3], [chuthich], [loaipk_id], [gia_pk]) VALUES (N'PK02      ', N'Tai nghe EP Kanen IP-226', N'Tai nghe EP Kanen IP-226.jpg', NULL, NULL, NULL, NULL, N'Thiết kế đơn giản, trẻ trung và hợp thời trang.
Chất lượng âm tai nghe truyền tải khá ấm và nịnh tai.
Thiết kế dây dẹp chống rối.
Có phím điều khiển thuận tiện cho người dùng.
Có khả năng tương thích tốt với các dòng điện thoại.', N'LPK01     ', 160000)
INSERT [dbo].[phukien] ([phukien_id], [phukien_name], [hinhanh1], [hinhanh2], [hinhanh4], [hinhanh5], [hinhanh3], [chuthich], [loaipk_id], [gia_pk]) VALUES (N'PK03      ', N'Tai nghe chup tai Kanen IP-350', N'Tai nghe chup tai Kanen IP-350.jpg', N'tai-nghe-chup-tai-kanen-ip-3503.jpg', NULL, NULL, N'tai-nghe-chup-tai-kanen-ip-3505.jpg', N'Thiết kế trẻ trung và hiện đại.
Âm thanh chất lượng, sống động.
Lớp đệm tai mềm và bám tai cho cảm giác thoải mái khi đeo.
Jack 3.5mm tiện dụng, phù hợp với đa số dòng máy.', N'LPK01     ', 160000)
INSERT [dbo].[phukien] ([phukien_id], [phukien_name], [hinhanh1], [hinhanh2], [hinhanh4], [hinhanh5], [hinhanh3], [chuthich], [loaipk_id], [gia_pk]) VALUES (N'PK04      ', N'Tai nghe chup tai Kanen IP-2050', N'Tai nghe chup tai Kanen IP-2050.jpg', N'tai-nghe-chup-tai-kanen-ip-20501.jpg', NULL, NULL, N'tai-nghe-chup-tai-kanen-ip-20506.jpg', N'hiết kế trẻ trung, có thể gấp gọn rất tiện dụng.
Chất lượng âm thanh trung thực, sống động.
Chất liệu cao cấp và bền bỉ.
Tương thích với hầu hết các thiết bị nghe nhạc.', N'LPK01     ', 320000)
INSERT [dbo].[phukien] ([phukien_id], [phukien_name], [hinhanh1], [hinhanh2], [hinhanh4], [hinhanh5], [hinhanh3], [chuthich], [loaipk_id], [gia_pk]) VALUES (N'PK05      ', N'Ốp lưng HTC 826 Dual Nhựa X Mobile', N'Ốp lưng HTC 826 Dual Nhựa X Mobile.jpg', N'Ốp lưng HTC 826 Dual Nhựa X Mobile_3.jpg', NULL, NULL, NULL, N'Chất liệu nhựa cứng bền bỉ
Thiết kế vừa vặn và ôm sát thân máy
Êm ái khi cầm tay', N'LPK02     ', 50000)
INSERT [dbo].[phukien] ([phukien_id], [phukien_name], [hinhanh1], [hinhanh2], [hinhanh4], [hinhanh5], [hinhanh3], [chuthich], [loaipk_id], [gia_pk]) VALUES (N'PK06      ', N'Ốp lưng Xperia Z5 Compact Nhựa dẻo Nude', N'Ốp lưng Xperia Z5 Compact Nhựa dẻo Nude...jpg', N'Ốp lưng Xperia Z5 Compact Nhựa dẻo Nude.jpg', N'Ốp lưng Xperia Z5 Compact Nhựa dẻo Nude_2.jpg', N'Ốp lưng Xperia Z5 Compact Nhựa dẻo Nude_3.jpg', NULL, N'Chất liệu nhựa dẻo cao cấp thời trang và đẹp mắt
Thiết kế vừa vặn và ôm sát thân máy
Dễ dàng tháo/lắp ốp vào máy', N'LPK02     ', 50000)
INSERT [dbo].[phukien] ([phukien_id], [phukien_name], [hinhanh1], [hinhanh2], [hinhanh4], [hinhanh5], [hinhanh3], [chuthich], [loaipk_id], [gia_pk]) VALUES (N'PK07      ', N'Ốp lưng Oppo Joy 3 Nhựa in Biển Xanh', N'op-lung-oppo-joy-3-nhua-in-bien-xanh-300x300.jpg', N'op-lung-oppo-joy-3-nhua-in-bien-xanh-org-1.jpg', N'op-lung-oppo-joy-3-nhua-in-bien-xanh-org-8.jpg', NULL, NULL, N'Chất liệu nhựa dẻo cao cấp
Vừa vặn với Oppo Joy 3
Giá tốt nhất', N'LPK02     ', 60000)
INSERT [dbo].[phukien] ([phukien_id], [phukien_name], [hinhanh1], [hinhanh2], [hinhanh4], [hinhanh5], [hinhanh3], [chuthich], [loaipk_id], [gia_pk]) VALUES (N'PK08      ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[phukien] ([phukien_id], [phukien_name], [hinhanh1], [hinhanh2], [hinhanh4], [hinhanh5], [hinhanh3], [chuthich], [loaipk_id], [gia_pk]) VALUES (N'PK09      ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[phukien] ([phukien_id], [phukien_name], [hinhanh1], [hinhanh2], [hinhanh4], [hinhanh5], [hinhanh3], [chuthich], [loaipk_id], [gia_pk]) VALUES (N'PK10      ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP001     ', N'Iphone 5S 16GB', 8490000, 3, N'TL02', N'iphone5s.jpg', NULL, NULL, NULL, NULL, N'1,2MP', N'8MP', N'iOs9', N'Apple A7 2 nhân 64bit, 1.3GHz', N'1GB', N'16GB', N'Không', N'1 sim,nano sim', N'wiffi,3G,4G LTE cat4', N'1560 mAh')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP002     ', N'OPPO NEO7', 3990000, 2, N'TL03', N'OPPO NEO 7 - A33W.jpg', NULL, NULL, NULL, NULL, N'5MP', N'8MP', N'Android 5.1', N' MTK 6582 4 nhân 32bit, 1.3GHz', N'1GB', N'16GB', N'MicroSD(T-Flash) 32GB', N'2 sim 2 sóng 1nano+1 Micro', N'wiffi,3G,không hỗ trợ 4G', N'2420mAh')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP003     ', N'Samsung Galaxy S6 Edge Plus', 19990000, 4, N'TL01', N'samsung-galaxy-s6-edge-plus-12-200x200.jpg', NULL, NULL, NULL, NULL, N'5MP', N'16MP', N'Android 5.1', N'Exynos 7420 8 nhân 64bit,4 nhân 1.5GHz Cortex-A53& 4 nhân 2.1GHz Cortex A57', N'4GB', N'32GB', N'không', N'1 sim,nano sim', N'wiffi,3G,4G LTE Cat6', N'3000 mAh')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP004     ', N'Iphone 6S 16GB', 18890000, 1, N'TL02', N'iphone-6s-plus-16gb-200x200.jpg', NULL, NULL, NULL, NULL, N'5MP', N'12MP', N'iOS9', N'Apple A9 2 nhân 64bit, 1.8GHz', N'2GB', N'16GB', N'Không', N'1 sim,nano sim', N'wiffi,3G,4G LTE Cat6', N'1715mAh')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP005     ', N'Iphone 4S 8GB', 3990000, 5, N'TL02', N'iphone-4s-8gb-300-nowatermark-190x190.jpg', NULL, NULL, NULL, NULL, N'VGA 0.3MP', N'8MP', N'iOS 8.0', N'Apple A5 2 nhân 32bit,1GHz', N'512MB', N'8GB', N'KHông', N'1 sim,micro sim', N'wifi,3G,không hỗ trợ 4G', N'1420mAh')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP006     ', N'HTC ONE E9 DUAL SIM', 749000, 3, N'TL05', N'htc-one-e9-dual-hero-product-400x533.png', NULL, NULL, NULL, NULL, N'4Ultra Pixel', N'13MP', N'Android 5.0', N'MTK 6795 Helio x10 8 nhân 64bit ,2GHz', N'2GB', N'16GB', N'MicroSD T-Flash 2TB', N'2 sim 2 sóng,nano sim', N'wiffi,3G,có hỗ trợ 4G', N'2080mAh')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP007     ', N'HTC ONE E8 DUAL', 6390000, 5, N'TL05', N'htc-one-e8-dual-new-200x200.jpg', NULL, NULL, NULL, NULL, N'5MP', N'13MP', N'Android 5.1', N'Qualcomm Snapdragon 801 4 nhân 32bit, 2.5GHz', N'2GB', N'16GB', N'MicroSD T-Flash 128GB', N'2 sim 2 sóng,nano sim', N'wiffi,3G,4G LTE Cat4', N'2600mA')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP008     ', N'HTC DESIRE 728G', 4990000, 1, N'TL05', N'htc-desire-728-11-200x200.jpg', NULL, NULL, NULL, NULL, N'5MP', N'13MP', N'Android 5.1', N'MTK 6753 8 nhân 64bit,1.3GHz', N'1,5GB', N'16GB', N'MicroSD 2TB', N'2 sim 2 sóng,nano sim', N'wiffi,3G,không hỗ trợ 4G', N'2800 mAh')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP009     ', N'HTC DESIRE 620G', 3790000, 5, N'TL05', N'htc-desire-620g-nowatermark-190x190.jpg', NULL, NULL, NULL, NULL, N'5MP', N'8MP', N'Android 4.4', N'MT 6592 8 nhân 32bit,1.7GHz', N'1GB', N'8GB', N'MicroSD(T-Flash) 32Gb', N'2 sim 2 sóng micro sim', N'wiffi,3G,không hỗ trợ 4G', N'2100mAh')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP010     ', N'HTC DESIRE 626G', 3790000, 3, N'TL05', N'htc-desire-626g-300-nowatermark-200x200.jpg', NULL, NULL, NULL, NULL, N'5MP', N'13MP', N'Android 4.4', N'MTK 6752 8 nhân 62bit ,1.7GHz', N'1GB', N'8GB', N'MicroSD 32GB', N'2 sim 2 sóng,nano sim', N'wiffi,3G,không hỗ trợ 4G', N'2000')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP011     ', N'HTC DESIRE 820G', 3990000, 2, N'TL05', N'htc-desire-820g-global-sketchfab-white-gray-443x425.png', NULL, NULL, NULL, NULL, N'8MP', N'3MP', N'Android 4.4', N'MT 6592 8 nhân 32bit, 1.7GHz', N'1GB', N'16GB', N'MicroSD(t-Flash) 32GB', N'2 sim 2 sóng ,nano sim', N'wiffi,3G,không hỗ trợ 4G', N'2600mAh')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP012     ', N'OPPO R7 PLUS', 11490000, 4, N'TL03', N'oppo-r7-plus-18-200x200.jpg', NULL, NULL, NULL, NULL, N'8MP', N'13MP', N'Android 5.1', N' Snapdragon 615 8 nhân 64bit,Quad-core 1.5GHz+Quad-core 1GHz', N'3GB', N'32GB', N'MicroSD(T-Flash) 128GB', N' 2 sim,sim 2 chung khe cắm thẻ nhớ,nano sim', N'wiffi,3G,4G LTE Cat4', N'4100mAh')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP013     ', N'OPPO R7S', 8990000, 3, N'TL03', N'oppo-r7s-1-400x533-400x533.png', NULL, NULL, NULL, NULL, N'8MP', N'13MP', N'Android 5.1', N'Snapdragon 615 8 nhân 64bit,Quad-core 1.5GHz+Quad-core 1GHz', N'4GB', N'32GB', N'MicroSD(T-Flash)1282GB', N'2 sim,sim 2 chung khe cắm thẻ nhớ,1 nano sim 1 micro sim', N'wiffi,3G,4G LTE Cat4', N'3070mAh')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP014     ', N'OPPO F1', 5990000, 4, N'TL03', N'oppo-f1-hero-460x529.png', NULL, NULL, NULL, NULL, N'8MP', N'13MP', N'Android 5.1', N'Qualcomm Snapdragon 8 nhân 64bit, 1.5GHz', N'3GB', N'16GB', N'MicroSD 128GB', N'2 sim,sim 2 chung khe cắm thẻ nhớ,1 nano sim +1 micro sim', N'wiffi,3G,không hỗ trợ 4G', N'2500mAh')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP015     ', N'OPPO R7 LITE', 5990000, 4, N'TL03', N'oppo-r7-detail-400x533.png', NULL, NULL, NULL, NULL, N'8MP', N'13MP', N'Android 5.1', N'Snapdragon 615 8 nhân 64bit,4 nhân 1.3GHz+ 4 nhân 1.0GHz', N'4GB', N'16GB', N'MicroSD(T-Flash) 128GBl', N'2 sim,sim2 chung khe cắm thẻ nhớ,1 nano sim 1 micro sim', N'wiffi,3G,4G LTE Cat4', N'2320mAh')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP016     ', N'OPPO MIROR 5', 4900000, 5, N'TL03', N'oppo-mirror-5-hp-400x533.png', NULL, NULL, NULL, NULL, N'5MP', N'8MP', N'Android 5.1', N'Qualcomm Snapdragon 410 4 nhân 64bit,1.2GHz', N'2GB', N'16GB', N'MicroSD(T-Flash) 128GB', N'2 sim 2 sóng,1 nano+1 micro', N'Không hỗ trợ 4G', N'2420mAh')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP017     ', N'OPPO NEO 5', 2690000, 5, N'TL03', N'oppo-neo-5-16gb-200x200.jpg', NULL, NULL, NULL, NULL, N'2MP', N'8MP', N'Android 4.4', N'MTK 6582 4 nhân 32bit,1.3GHz ', N'1GB', N'8GB', N'MicroSD(T-Flash) 32GB', N'2 sim 2 sóng,1 nano+1 micro', N'wiffi,3G,không hỗ trợ 4G', N'2000mAh')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP018     ', N'OPPO JOY 3', 2490000, 3, N'TL03', N'oppo-joy-3-16gb-400x533.png', NULL, NULL, NULL, NULL, N'2MP', N'5MP', N'Android 4.4', N'MTK 6582M 4 nhân 32bit,1.3GHz', N'1GB', N'4GB', N'MicroSD(T-Flash) 32 GB', N'2 sim 2 sóng,nano sim', N'wiffi,3G,không hỗ trỡ 4G', N'2000mAh')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP019     ', N'OPPO JOY R1011', 1990000, 1, N'TL03', N'oppo-joy-plus-r1011-533-400x533.png', NULL, NULL, NULL, NULL, N'null', N'3MP', N'Android 4.4', N'2 nhân,1.3GHz', N'1GB', N'null', N'Null', N'2 sim', N'null', N'1700mAh')
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP020     ', N'SONY XPERIA Z5 PREMIUM', 19990000, 2, N'TL04', N'sony-xperia-z5-premium-17-200x200.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP021     ', N'SONY XPERIA Z5 DUAL', 13990000, 3, N'TL04', N'sony-xperia-z5-dual-400x460.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP022     ', N'SONY XPERIA M5 DUAL', 9490000, 4, N'TL04', N'sony-xperia-m5-dual-hero-400x534.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP023     ', N'SONY XPERIA M4 AQUA', 4990000, 4, N'TL04', N'sony-xperia-m4-aqua-lte-10-200x200.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP024     ', N'SONY XPERIA C5 DUAL ULTRA', 7990000, 5, N'TL04', N'sony-xperia-c5-ultra-200x200.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP025     ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP026     ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP027     ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP028     ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP029     ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin]) VALUES (N'SP030     ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name],[phukien], [parent_id]) VALUES (N'TL01', N'SAMSUNG ','0', NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name],[phukien], [parent_id]) VALUES (N'TL02', N'IPHONE','0', NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name],[phukien], [parent_id]) VALUES (N'TL03', N'OPPO','0', NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name],[phukien], [parent_id]) VALUES (N'TL04', N'SONY','0', NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name],[phukien], [parent_id]) VALUES (N'TL05', N'HTC','0', NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name],[phukien], [parent_id]) VALUES (N'TL06', N'SKY','0', NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name],[phukien], [parent_id]) VALUES (N'TL07', N'LG','0', NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name],[phukien], [parent_id]) VALUES (N'TL08', N'ASUS','0', NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name],[phukien], [parent_id]) VALUES (N'TL09', N'NOKIA','0', NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name],[phukien], [parent_id]) VALUES (N'TL10', N'MÁY TÍNH BẢNG','0', NULL)
ALTER TABLE [dbo].[giaodich]  WITH CHECK ADD  CONSTRAINT [FK_giaodich_khachhang] FOREIGN KEY([khachhang_id])
REFERENCES [dbo].[khachhang] ([khachhang_id])
GO
ALTER TABLE [dbo].[giaodich] CHECK CONSTRAINT [FK_giaodich_khachhang]
GO
ALTER TABLE [dbo].[Hoadon]  WITH CHECK ADD  CONSTRAINT [FK_Hoadon_giaodich] FOREIGN KEY([giaodich_id])
REFERENCES [dbo].[giaodich] ([giaodich_id])
GO
ALTER TABLE [dbo].[Hoadon] CHECK CONSTRAINT [FK_Hoadon_giaodich]
GO
ALTER TABLE [dbo].[Hoadon]  WITH CHECK ADD  CONSTRAINT [FK_Hoadon_sanpham] FOREIGN KEY([sanpham_id])
REFERENCES [dbo].[sanpham] ([sanpham_id])
GO
ALTER TABLE [dbo].[Hoadon] CHECK CONSTRAINT [FK_Hoadon_sanpham]
GO
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_theloaisp] FOREIGN KEY([theloai_id])
REFERENCES [dbo].[theloaisp] ([theloai_id])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_theloaisp]
GO
USE [master]
GO
ALTER DATABASE [DienThoaiDiDong] SET  READ_WRITE 
GO
