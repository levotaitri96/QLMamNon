USE [QuanLyMamNon]
GO
/****** Object:  Table [dbo].[Tbl_BaiViet]    Script Date: 4/30/2018 3:00:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_BaiViet](
	[maBaiViet] [nvarchar](20) NOT NULL,
	[noiDung] [nvarchar](2000) NULL,
	[hinhBV] [nvarchar](500) NULL,
	[maGV] [nvarchar](10) NULL,
	[ngayDang] [datetime] NULL,
 CONSTRAINT [PK_Tbl_BaiViet] PRIMARY KEY CLUSTERED 
(
	[maBaiViet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_ChiTietDiemDanh]    Script Date: 4/30/2018 3:00:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ChiTietDiemDanh](
	[maChiTietDiemDanh] [int] IDENTITY(1,1) NOT NULL,
	[trangThai] [nvarchar](10) NULL,
	[maDiemDanh] [int] NULL,
	[maGV] [nvarchar](10) NULL,
	[maHS] [int] NULL,
	[maLoai] [nvarchar](10) NULL,
	[maLop] [nvarchar](10) NULL,
 CONSTRAINT [PK_Tbl_ChiTietDiemDanh_1] PRIMARY KEY CLUSTERED 
(
	[maChiTietDiemDanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_ChiTietLuong]    Script Date: 4/30/2018 3:00:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ChiTietLuong](
	[maChiTietLuong] [int] IDENTITY(1,1) NOT NULL,
	[maLuong] [int] NOT NULL,
	[soNgayLam] [int] NULL,
	[soTien] [float] NULL,
	[maGV] [nvarchar](10) NULL,
 CONSTRAINT [PK_Tbl_ChiTietLuong] PRIMARY KEY CLUSTERED 
(
	[maChiTietLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_DiemDanh]    Script Date: 4/30/2018 3:00:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_DiemDanh](
	[maNamHoc] [nvarchar](10) NOT NULL,
	[ngayDiemDanh] [nvarchar](20) NOT NULL,
	[maThang] [nvarchar](50) NOT NULL,
	[maDiemDanh] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Tbl_DiemDanh_1] PRIMARY KEY CLUSTERED 
(
	[maDiemDanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_GiaoVien]    Script Date: 4/30/2018 3:00:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_GiaoVien](
	[maGV] [nvarchar](10) NOT NULL,
	[trinhDo] [nvarchar](20) NOT NULL,
	[hoTen] [nvarchar](50) NULL,
	[soDT] [nvarchar](20) NULL,
	[ngaySinh] [datetime] NULL,
	[email] [nvarchar](50) NULL,
	[diaChi] [nvarchar](70) NULL,
	[gioiTinh] [nvarchar](10) NULL,
	[hinhAnh] [nvarchar](500) NULL,
	[tonGiao] [nvarchar](50) NULL,
	[danToc] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[maGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_HocPhi]    Script Date: 4/30/2018 3:00:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_HocPhi](
	[tenHocPhi] [date] NOT NULL,
	[soNgayHoc] [int] NOT NULL,
	[maHS] [int] NOT NULL,
	[soTien] [nvarchar](20) NOT NULL,
	[maLoai] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Tbl_HocPhi] PRIMARY KEY CLUSTERED 
(
	[tenHocPhi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_HocSinh]    Script Date: 4/30/2018 3:00:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_HocSinh](
	[maHS] [int] IDENTITY(1,1) NOT NULL,
	[hoTenCha] [nvarchar](50) NULL,
	[hoTenMe] [nvarchar](50) NOT NULL,
	[hoTen] [nvarchar](50) NULL,
	[soDTNha] [nvarchar](50) NULL,
	[ngaySinh] [datetime] NULL,
	[email] [nvarchar](50) NULL,
	[diaChi] [nvarchar](70) NULL,
	[gioiTinh] [nvarchar](10) NULL,
	[hinhAnh] [nvarchar](500) NULL,
	[maLoai] [nvarchar](10) NULL,
	[tonGiao] [nvarchar](50) NULL,
	[danToc] [nvarchar](50) NULL,
	[ngheNghiepCha] [nvarchar](50) NULL,
	[ngheNghiepMe] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_HocSinh] PRIMARY KEY CLUSTERED 
(
	[maHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_LoaiLop]    Script Date: 4/30/2018 3:00:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_LoaiLop](
	[maLoai] [nvarchar](10) NOT NULL,
	[tenLoai] [nvarchar](50) NOT NULL,
	[soLuongLop] [int] NOT NULL,
	[hocPhi] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_LoaiLop] PRIMARY KEY CLUSTERED 
(
	[maLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_LopHoc]    Script Date: 4/30/2018 3:00:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_LopHoc](
	[maLop] [nvarchar](10) NOT NULL,
	[tenLop] [nvarchar](50) NOT NULL,
	[soLuongHS] [int] NOT NULL,
	[maLoai] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Tbl_LopHoc] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_NamHoc]    Script Date: 4/30/2018 3:00:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_NamHoc](
	[maNamHoc] [nvarchar](10) NOT NULL,
	[tenNamHoc] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Tbl_NamHoc] PRIMARY KEY CLUSTERED 
(
	[maNamHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_PhanCong]    Script Date: 4/30/2018 3:00:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PhanCong](
	[maNamHoc] [nvarchar](10) NOT NULL,
	[maLop] [nvarchar](10) NOT NULL,
	[maLoai] [nvarchar](10) NOT NULL,
	[maGV] [nvarchar](10) NOT NULL,
	[trangThai] [nvarchar](30) NULL,
 CONSTRAINT [PK_PhanCong] PRIMARY KEY CLUSTERED 
(
	[maNamHoc] ASC,
	[maLop] ASC,
	[maLoai] ASC,
	[maGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_PhanLop]    Script Date: 4/30/2018 3:00:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PhanLop](
	[maNamHoc] [nvarchar](10) NOT NULL,
	[maLop] [nvarchar](10) NOT NULL,
	[maLoai] [nvarchar](10) NOT NULL,
	[maHS] [int] NOT NULL,
 CONSTRAINT [PK_PhanLop] PRIMARY KEY CLUSTERED 
(
	[maNamHoc] ASC,
	[maLop] ASC,
	[maLoai] ASC,
	[maHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_TaiKhoan]    Script Date: 4/30/2018 3:00:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_TaiKhoan](
	[maTK] [nvarchar](10) NOT NULL,
	[loaiTK] [nvarchar](10) NULL,
	[matKhau] [nvarchar](50) NULL,
	[maGV] [nvarchar](10) NULL,
 CONSTRAINT [PK_Tbl_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[maTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_ThangHoc]    Script Date: 4/30/2018 3:00:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ThangHoc](
	[maThang] [nvarchar](50) NOT NULL,
	[tenThang] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_ThangHoc] PRIMARY KEY CLUSTERED 
(
	[maThang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_TienLuong]    Script Date: 4/30/2018 3:00:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_TienLuong](
	[maLuong] [int] IDENTITY(1,1) NOT NULL,
	[maThang] [nvarchar](50) NULL,
	[maNamHoc] [nvarchar](10) NULL,
 CONSTRAINT [PK_Tbl_TienLuong] PRIMARY KEY CLUSTERED 
(
	[maLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Tbl_ChiTietDiemDanh] ON 

INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (200, N'Có', 28, N'GV01', NULL, N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (201, N'Có', 28, N'GV02', NULL, N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (202, N'Vắng', 28, N'GV03', NULL, N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (203, N'Vắng', 28, N'GV04', NULL, N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (204, N'Có', 29, N'GV01', NULL, N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (205, N'Có', 29, N'GV02', NULL, N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (206, N'Có', 29, N'GV03', NULL, N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (207, N'Vắng', 29, N'GV04', NULL, N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (208, N'Có', 30, N'GV01', NULL, N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (209, N'Vắng', 30, N'GV02', NULL, N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (210, N'Có', 31, N'GV01', NULL, N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (211, N'Có', 31, N'GV02', NULL, N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (212, N'Vắng', 32, N'GV01', NULL, N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (213, N'Có', 32, N'GV02', NULL, N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (214, N'Có', 32, N'GV03', NULL, N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (215, N'Vắng', 32, N'GV04', NULL, N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (216, N'Vắng', 33, N'GV01', NULL, N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (217, N'Vắng', 33, N'GV02', NULL, N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (218, N'Vắng', 33, N'GV03', NULL, N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (219, N'Vắng', 33, N'GV04', NULL, N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (220, N'Vắng', 34, N'GV01', NULL, N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (221, N'Vắng', 34, N'GV02', NULL, N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (222, N'Vắng', 34, N'GV03', NULL, N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (223, N'Vắng', 34, N'GV04', NULL, N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (224, N'Có', 35, N'GV01', NULL, N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (225, N'Có', 35, N'GV02', NULL, N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (226, N'Vắng', 35, N'GV03', NULL, N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maHS], [maLoai], [maLop]) VALUES (227, N'Vắng', 35, N'GV04', NULL, N'L02', N'M02')
SET IDENTITY_INSERT [dbo].[Tbl_ChiTietDiemDanh] OFF
SET IDENTITY_INSERT [dbo].[Tbl_ChiTietLuong] ON 

INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (5, 5, 5, 200, N'GV01')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (6, 5, 5, 200, N'GV02')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (7, 5, 2, 150, N'GV03')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (8, 5, 0, 100, N'GV04')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (9, 6, 0, 200, N'GV01')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (10, 6, 0, 200, N'GV02')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (11, 6, 0, 150, N'GV03')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (12, 6, 0, 100, N'GV04')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (13, 8, 0, 200, N'GV01')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (14, 8, 0, 200, N'GV02')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (15, 8, 0, 150, N'GV03')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (16, 8, 0, 100, N'GV04')
SET IDENTITY_INSERT [dbo].[Tbl_ChiTietLuong] OFF
SET IDENTITY_INSERT [dbo].[Tbl_DiemDanh] ON 

INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'26', N'03', 28)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'27', N'03', 29)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'28', N'03', 30)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'29', N'03', 31)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'30', N'03', 32)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'01', N'04', 33)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'02', N'04', 34)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'04', N'04', 35)
SET IDENTITY_INSERT [dbo].[Tbl_DiemDanh] OFF
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [tonGiao], [danToc]) VALUES (N'GV01', N'Đại Học', N'Lê Võ Tài Trí', N'01658788708', CAST(N'1996-05-01 00:00:00.000' AS DateTime), N'nam@gmail.com', N'32 Lê lợi', N'Nam', N'Image.jpg', NULL, NULL)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [tonGiao], [danToc]) VALUES (N'GV02', N'Đại Học', N'Lê Nguyễn Trung Nhân', N'01634799710', CAST(N'1996-05-01 00:00:00.000' AS DateTime), N'nhan@gmail.com', N'45 Bình Thạnh', N'Nam', N'Image.jpg', NULL, NULL)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [tonGiao], [danToc]) VALUES (N'GV03', N'Cao Đẳng', N'Hà Tuấn Lâm', N'01468200139', CAST(N'1996-05-01 00:00:00.000' AS DateTime), N'lam@gmail.com', N'63 Gò Vấp', N'Nữ', N'Image.jpg', NULL, NULL)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [tonGiao], [danToc]) VALUES (N'GV04', N'Trung Cấp', N'Bùi Hoàng Nam', N'01489725148', CAST(N'1996-05-01 00:00:00.000' AS DateTime), N'nam@gmail.com', N'96 Quận 10', N'Nam', N'Image.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_HocSinh] ON 

INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (13, N'Trần Tuấn Nguyễn', N'Lê Thị Thương', N'Trần Việt Hoàng', N'012578692255', CAST(N'2014-02-05 00:00:00.000' AS DateTime), N'nam@gmail.com', N'65 lê lới', N'nam', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (14, N'Nguyễn Tuấn Kiệt', N'Trần Thị Bé', N'Nguyễn Hoàng Bách', N'0165799704', CAST(N'2013-06-09 00:00:00.000' AS DateTime), N'kiet@gmail.com', N'1/25 Gò Vấp', N'Nam', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (15, N'Bùi Hoàng', N'Nguyễn Thị Thoa', N'Bùi Thị Lệ', N'01664879925', CAST(N'2013-02-20 00:00:00.000' AS DateTime), N'Hoang@gmail.com', N'89 Võ Văn kiệt Quận 7', N'Nữ', N'Image.jpg', N'L02', NULL, NULL, NULL, NULL)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (16, N'Đặng Văn Ngữ', N'Nguyễn Thị A', N'Đặng Lê Diệu Ly', N'012578919', CAST(N'2015-09-22 00:00:00.000' AS DateTime), N'Ngu@gmail.com', N'65 Quận 7', N'Nữ', N'Image.jpg', N'L01', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_HocSinh] OFF
INSERT [dbo].[Tbl_LoaiLop] ([maLoai], [tenLoai], [soLuongLop], [hocPhi]) VALUES (N'L01', N'Mầm', 4, 2000000)
INSERT [dbo].[Tbl_LoaiLop] ([maLoai], [tenLoai], [soLuongLop], [hocPhi]) VALUES (N'L02', N'Chồi', 4, 2500000)
INSERT [dbo].[Tbl_LoaiLop] ([maLoai], [tenLoai], [soLuongLop], [hocPhi]) VALUES (N'L03', N'Lá', 4, 3000000)
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maLoai]) VALUES (N'M01', N'Mầm1', 20, N'L01')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maLoai]) VALUES (N'M02', N'Chồi1', 20, N'L02')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maLoai]) VALUES (N'M03', N'Lá1', 20, N'L03')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maLoai]) VALUES (N'M04', N'Mầm2', 20, N'L01')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maLoai]) VALUES (N'M05', N'Chồi2', 20, N'L02')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maLoai]) VALUES (N'M06', N'Lá2', 20, N'L03')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maLoai]) VALUES (N'M07', N'Mầm3', 20, N'L01')
INSERT [dbo].[Tbl_NamHoc] ([maNamHoc], [tenNamHoc]) VALUES (N'2017', N'2017-2018')
INSERT [dbo].[Tbl_NamHoc] ([maNamHoc], [tenNamHoc]) VALUES (N'2018', N'2018-2019')
INSERT [dbo].[Tbl_NamHoc] ([maNamHoc], [tenNamHoc]) VALUES (N'2019', N'2019-2020')
INSERT [dbo].[Tbl_NamHoc] ([maNamHoc], [tenNamHoc]) VALUES (N'2020', N'2020-2021')
INSERT [dbo].[Tbl_NamHoc] ([maNamHoc], [tenNamHoc]) VALUES (N'2021', N'2021-2022')
INSERT [dbo].[Tbl_PhanCong] ([maNamHoc], [maLop], [maLoai], [maGV], [trangThai]) VALUES (N'2018', N'M01', N'L01', N'GV01', NULL)
INSERT [dbo].[Tbl_PhanCong] ([maNamHoc], [maLop], [maLoai], [maGV], [trangThai]) VALUES (N'2018', N'M01', N'L01', N'GV02', NULL)
INSERT [dbo].[Tbl_PhanCong] ([maNamHoc], [maLop], [maLoai], [maGV], [trangThai]) VALUES (N'2018', N'M02', N'L02', N'GV03', NULL)
INSERT [dbo].[Tbl_PhanCong] ([maNamHoc], [maLop], [maLoai], [maGV], [trangThai]) VALUES (N'2018', N'M02', N'L02', N'GV04', NULL)
INSERT [dbo].[Tbl_PhanLop] ([maNamHoc], [maLop], [maLoai], [maHS]) VALUES (N'2018', N'M01', N'L01', 13)
INSERT [dbo].[Tbl_PhanLop] ([maNamHoc], [maLop], [maLoai], [maHS]) VALUES (N'2018', N'M01', N'L01', 14)
INSERT [dbo].[Tbl_PhanLop] ([maNamHoc], [maLop], [maLoai], [maHS]) VALUES (N'2018', N'M01', N'L01', 15)
INSERT [dbo].[Tbl_ThangHoc] ([maThang], [tenThang]) VALUES (N'01', N'Tháng 1')
INSERT [dbo].[Tbl_ThangHoc] ([maThang], [tenThang]) VALUES (N'02', N'Tháng 2')
INSERT [dbo].[Tbl_ThangHoc] ([maThang], [tenThang]) VALUES (N'03', N'Tháng 3')
INSERT [dbo].[Tbl_ThangHoc] ([maThang], [tenThang]) VALUES (N'04', N'Tháng 4')
INSERT [dbo].[Tbl_ThangHoc] ([maThang], [tenThang]) VALUES (N'05', N'Tháng 5')
INSERT [dbo].[Tbl_ThangHoc] ([maThang], [tenThang]) VALUES (N'06', N'Tháng 6')
INSERT [dbo].[Tbl_ThangHoc] ([maThang], [tenThang]) VALUES (N'07', N'Tháng 7')
INSERT [dbo].[Tbl_ThangHoc] ([maThang], [tenThang]) VALUES (N'08', N'Tháng 8')
INSERT [dbo].[Tbl_ThangHoc] ([maThang], [tenThang]) VALUES (N'09', N'Tháng 9')
INSERT [dbo].[Tbl_ThangHoc] ([maThang], [tenThang]) VALUES (N'10', N'Tháng 10')
INSERT [dbo].[Tbl_ThangHoc] ([maThang], [tenThang]) VALUES (N'11', N'Tháng 11')
INSERT [dbo].[Tbl_ThangHoc] ([maThang], [tenThang]) VALUES (N'12', N'Tháng 12')
SET IDENTITY_INSERT [dbo].[Tbl_TienLuong] ON 

INSERT [dbo].[Tbl_TienLuong] ([maLuong], [maThang], [maNamHoc]) VALUES (5, N'03', N'2018')
INSERT [dbo].[Tbl_TienLuong] ([maLuong], [maThang], [maNamHoc]) VALUES (6, N'04', N'2018')
INSERT [dbo].[Tbl_TienLuong] ([maLuong], [maThang], [maNamHoc]) VALUES (8, N'04', N'2019')
SET IDENTITY_INSERT [dbo].[Tbl_TienLuong] OFF
ALTER TABLE [dbo].[Tbl_BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_BaiViet_Tbl_GiaoVien] FOREIGN KEY([maGV])
REFERENCES [dbo].[Tbl_GiaoVien] ([maGV])
GO
ALTER TABLE [dbo].[Tbl_BaiViet] CHECK CONSTRAINT [FK_Tbl_BaiViet_Tbl_GiaoVien]
GO
ALTER TABLE [dbo].[Tbl_ChiTietDiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_ChiTietDiemDanh_Tbl_DiemDanh] FOREIGN KEY([maDiemDanh])
REFERENCES [dbo].[Tbl_DiemDanh] ([maDiemDanh])
GO
ALTER TABLE [dbo].[Tbl_ChiTietDiemDanh] CHECK CONSTRAINT [FK_Tbl_ChiTietDiemDanh_Tbl_DiemDanh]
GO
ALTER TABLE [dbo].[Tbl_ChiTietDiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_ChiTietDiemDanh_Tbl_GiaoVien] FOREIGN KEY([maGV])
REFERENCES [dbo].[Tbl_GiaoVien] ([maGV])
GO
ALTER TABLE [dbo].[Tbl_ChiTietDiemDanh] CHECK CONSTRAINT [FK_Tbl_ChiTietDiemDanh_Tbl_GiaoVien]
GO
ALTER TABLE [dbo].[Tbl_ChiTietDiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_ChiTietDiemDanh_Tbl_HocSinh] FOREIGN KEY([maHS])
REFERENCES [dbo].[Tbl_HocSinh] ([maHS])
GO
ALTER TABLE [dbo].[Tbl_ChiTietDiemDanh] CHECK CONSTRAINT [FK_Tbl_ChiTietDiemDanh_Tbl_HocSinh]
GO
ALTER TABLE [dbo].[Tbl_ChiTietDiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_ChiTietDiemDanh_Tbl_LoaiLop] FOREIGN KEY([maLoai])
REFERENCES [dbo].[Tbl_LoaiLop] ([maLoai])
GO
ALTER TABLE [dbo].[Tbl_ChiTietDiemDanh] CHECK CONSTRAINT [FK_Tbl_ChiTietDiemDanh_Tbl_LoaiLop]
GO
ALTER TABLE [dbo].[Tbl_ChiTietDiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_ChiTietDiemDanh_Tbl_LopHoc] FOREIGN KEY([maLop])
REFERENCES [dbo].[Tbl_LopHoc] ([maLop])
GO
ALTER TABLE [dbo].[Tbl_ChiTietDiemDanh] CHECK CONSTRAINT [FK_Tbl_ChiTietDiemDanh_Tbl_LopHoc]
GO
ALTER TABLE [dbo].[Tbl_ChiTietLuong]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_ChiTietLuong_Tbl_GiaoVien] FOREIGN KEY([maGV])
REFERENCES [dbo].[Tbl_GiaoVien] ([maGV])
GO
ALTER TABLE [dbo].[Tbl_ChiTietLuong] CHECK CONSTRAINT [FK_Tbl_ChiTietLuong_Tbl_GiaoVien]
GO
ALTER TABLE [dbo].[Tbl_ChiTietLuong]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_ChiTietLuong_Tbl_TienLuong] FOREIGN KEY([maLuong])
REFERENCES [dbo].[Tbl_TienLuong] ([maLuong])
GO
ALTER TABLE [dbo].[Tbl_ChiTietLuong] CHECK CONSTRAINT [FK_Tbl_ChiTietLuong_Tbl_TienLuong]
GO
ALTER TABLE [dbo].[Tbl_DiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_DiemDanh_Tbl_NamHoc] FOREIGN KEY([maNamHoc])
REFERENCES [dbo].[Tbl_NamHoc] ([maNamHoc])
GO
ALTER TABLE [dbo].[Tbl_DiemDanh] CHECK CONSTRAINT [FK_Tbl_DiemDanh_Tbl_NamHoc]
GO
ALTER TABLE [dbo].[Tbl_DiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_DiemDanh_Tbl_ThangHoc] FOREIGN KEY([maThang])
REFERENCES [dbo].[Tbl_ThangHoc] ([maThang])
GO
ALTER TABLE [dbo].[Tbl_DiemDanh] CHECK CONSTRAINT [FK_Tbl_DiemDanh_Tbl_ThangHoc]
GO
ALTER TABLE [dbo].[Tbl_HocPhi]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_HocPhi_Tbl_HocSinh] FOREIGN KEY([maHS])
REFERENCES [dbo].[Tbl_HocSinh] ([maHS])
GO
ALTER TABLE [dbo].[Tbl_HocPhi] CHECK CONSTRAINT [FK_Tbl_HocPhi_Tbl_HocSinh]
GO
ALTER TABLE [dbo].[Tbl_HocPhi]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_HocPhi_Tbl_LoaiLop] FOREIGN KEY([maLoai])
REFERENCES [dbo].[Tbl_LoaiLop] ([maLoai])
GO
ALTER TABLE [dbo].[Tbl_HocPhi] CHECK CONSTRAINT [FK_Tbl_HocPhi_Tbl_LoaiLop]
GO
ALTER TABLE [dbo].[Tbl_HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_HocSinh_Tbl_LoaiLop] FOREIGN KEY([maLoai])
REFERENCES [dbo].[Tbl_LoaiLop] ([maLoai])
GO
ALTER TABLE [dbo].[Tbl_HocSinh] CHECK CONSTRAINT [FK_Tbl_HocSinh_Tbl_LoaiLop]
GO
ALTER TABLE [dbo].[Tbl_LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_LopHoc_Tbl_LoaiLop] FOREIGN KEY([maLoai])
REFERENCES [dbo].[Tbl_LoaiLop] ([maLoai])
GO
ALTER TABLE [dbo].[Tbl_LopHoc] CHECK CONSTRAINT [FK_Tbl_LopHoc_Tbl_LoaiLop]
GO
ALTER TABLE [dbo].[Tbl_PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_PhanCong_Tbl_GiaoVien] FOREIGN KEY([maGV])
REFERENCES [dbo].[Tbl_GiaoVien] ([maGV])
GO
ALTER TABLE [dbo].[Tbl_PhanCong] CHECK CONSTRAINT [FK_Tbl_PhanCong_Tbl_GiaoVien]
GO
ALTER TABLE [dbo].[Tbl_PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_PhanCong_Tbl_LoaiLop] FOREIGN KEY([maLoai])
REFERENCES [dbo].[Tbl_LoaiLop] ([maLoai])
GO
ALTER TABLE [dbo].[Tbl_PhanCong] CHECK CONSTRAINT [FK_Tbl_PhanCong_Tbl_LoaiLop]
GO
ALTER TABLE [dbo].[Tbl_PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_PhanCong_Tbl_LopHoc] FOREIGN KEY([maLop])
REFERENCES [dbo].[Tbl_LopHoc] ([maLop])
GO
ALTER TABLE [dbo].[Tbl_PhanCong] CHECK CONSTRAINT [FK_Tbl_PhanCong_Tbl_LopHoc]
GO
ALTER TABLE [dbo].[Tbl_PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_PhanCong_Tbl_NamHoc] FOREIGN KEY([maNamHoc])
REFERENCES [dbo].[Tbl_NamHoc] ([maNamHoc])
GO
ALTER TABLE [dbo].[Tbl_PhanCong] CHECK CONSTRAINT [FK_Tbl_PhanCong_Tbl_NamHoc]
GO
ALTER TABLE [dbo].[Tbl_PhanLop]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_PhanLop_Tbl_HocSinh] FOREIGN KEY([maHS])
REFERENCES [dbo].[Tbl_HocSinh] ([maHS])
GO
ALTER TABLE [dbo].[Tbl_PhanLop] CHECK CONSTRAINT [FK_Tbl_PhanLop_Tbl_HocSinh]
GO
ALTER TABLE [dbo].[Tbl_PhanLop]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_PhanLop_Tbl_LoaiLop] FOREIGN KEY([maLoai])
REFERENCES [dbo].[Tbl_LoaiLop] ([maLoai])
GO
ALTER TABLE [dbo].[Tbl_PhanLop] CHECK CONSTRAINT [FK_Tbl_PhanLop_Tbl_LoaiLop]
GO
ALTER TABLE [dbo].[Tbl_PhanLop]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_PhanLop_Tbl_LopHoc] FOREIGN KEY([maLop])
REFERENCES [dbo].[Tbl_LopHoc] ([maLop])
GO
ALTER TABLE [dbo].[Tbl_PhanLop] CHECK CONSTRAINT [FK_Tbl_PhanLop_Tbl_LopHoc]
GO
ALTER TABLE [dbo].[Tbl_PhanLop]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_PhanLop_Tbl_NamHoc] FOREIGN KEY([maNamHoc])
REFERENCES [dbo].[Tbl_NamHoc] ([maNamHoc])
GO
ALTER TABLE [dbo].[Tbl_PhanLop] CHECK CONSTRAINT [FK_Tbl_PhanLop_Tbl_NamHoc]
GO
ALTER TABLE [dbo].[Tbl_TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_TaiKhoan_Tbl_GiaoVien] FOREIGN KEY([maGV])
REFERENCES [dbo].[Tbl_GiaoVien] ([maGV])
GO
ALTER TABLE [dbo].[Tbl_TaiKhoan] CHECK CONSTRAINT [FK_Tbl_TaiKhoan_Tbl_GiaoVien]
GO
ALTER TABLE [dbo].[Tbl_TienLuong]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_TienLuong_Tbl_NamHoc] FOREIGN KEY([maNamHoc])
REFERENCES [dbo].[Tbl_NamHoc] ([maNamHoc])
GO
ALTER TABLE [dbo].[Tbl_TienLuong] CHECK CONSTRAINT [FK_Tbl_TienLuong_Tbl_NamHoc]
GO
ALTER TABLE [dbo].[Tbl_TienLuong]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_TienLuong_Tbl_ThangHoc] FOREIGN KEY([maThang])
REFERENCES [dbo].[Tbl_ThangHoc] ([maThang])
GO
ALTER TABLE [dbo].[Tbl_TienLuong] CHECK CONSTRAINT [FK_Tbl_TienLuong_Tbl_ThangHoc]
GO
