USE [QuanLyMamNon]
GO
/****** Object:  Table [dbo].[Tbl_BaiViet]    Script Date: 3/20/2018 2:05:04 PM ******/
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
/****** Object:  Table [dbo].[Tbl_DiemDanh]    Script Date: 3/20/2018 2:05:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_DiemDanh](
	[maNamHoc] [nvarchar](10) NOT NULL,
	[ngayDiemDanh] [date] NOT NULL,
	[maHS] [nvarchar](10) NOT NULL,
	[maLop] [nvarchar](10) NOT NULL,
	[maLoai] [nvarchar](10) NOT NULL,
	[trangThai] [nvarchar](10) NULL,
	[maGV] [nvarchar](10) NOT NULL,
	[maThang] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_DiemDanh] PRIMARY KEY CLUSTERED 
(
	[maNamHoc] ASC,
	[ngayDiemDanh] ASC,
	[maHS] ASC,
	[maLop] ASC,
	[maLoai] ASC,
	[maGV] ASC,
	[maThang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_GiaoVien]    Script Date: 3/20/2018 2:05:05 PM ******/
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
 CONSTRAINT [PK_Tbl_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[maGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_HocPhi]    Script Date: 3/20/2018 2:05:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_HocPhi](
	[tenHocPhi] [date] NOT NULL,
	[soNgayHoc] [int] NOT NULL,
	[maHS] [nvarchar](10) NOT NULL,
	[soTien] [nvarchar](20) NOT NULL,
	[maLoai] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Tbl_HocPhi] PRIMARY KEY CLUSTERED 
(
	[tenHocPhi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_HocSinh]    Script Date: 3/20/2018 2:05:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_HocSinh](
	[maHS] [nvarchar](10) NOT NULL,
	[hoTenCha] [nvarchar](50) NOT NULL,
	[hoTenMe] [nvarchar](50) NOT NULL,
	[hoTen] [nvarchar](10) NULL,
	[soDTNha] [int] NULL,
	[ngaySinh] [datetime] NULL,
	[email] [nvarchar](50) NULL,
	[diaChi] [nvarchar](70) NULL,
	[gioiTinh] [nvarchar](10) NULL,
	[hinhAnh] [nvarchar](500) NULL,
 CONSTRAINT [PK_Tbl_HocSinh] PRIMARY KEY CLUSTERED 
(
	[maHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_LoaiLop]    Script Date: 3/20/2018 2:05:05 PM ******/
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
/****** Object:  Table [dbo].[Tbl_LopHoc]    Script Date: 3/20/2018 2:05:05 PM ******/
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
/****** Object:  Table [dbo].[Tbl_NamHoc]    Script Date: 3/20/2018 2:05:05 PM ******/
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
/****** Object:  Table [dbo].[Tbl_PhanCong]    Script Date: 3/20/2018 2:05:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PhanCong](
	[maNamHoc] [nvarchar](10) NOT NULL,
	[maLop] [nvarchar](10) NOT NULL,
	[maLoai] [nvarchar](10) NOT NULL,
	[maGV] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_PhanCong] PRIMARY KEY CLUSTERED 
(
	[maNamHoc] ASC,
	[maLop] ASC,
	[maLoai] ASC,
	[maGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_PhanLop]    Script Date: 3/20/2018 2:05:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PhanLop](
	[maNamHoc] [nvarchar](10) NOT NULL,
	[maLop] [nvarchar](10) NOT NULL,
	[maLoai] [nvarchar](10) NOT NULL,
	[maHS] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_PhanLop] PRIMARY KEY CLUSTERED 
(
	[maNamHoc] ASC,
	[maLop] ASC,
	[maLoai] ASC,
	[maHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_TaiKhoan]    Script Date: 3/20/2018 2:05:05 PM ******/
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
/****** Object:  Table [dbo].[Tbl_ThangHoc]    Script Date: 3/20/2018 2:05:05 PM ******/
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
/****** Object:  Table [dbo].[Tbl_TienLuong]    Script Date: 3/20/2018 2:05:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_TienLuong](
	[tenThangLuong] [date] NOT NULL,
	[heSoLuong] [float] NOT NULL,
	[soNgayLam] [int] NOT NULL,
	[luongNgay] [int] NOT NULL,
	[maGV] [nvarchar](10) NOT NULL,
	[soTien] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_TienLuong] PRIMARY KEY CLUSTERED 
(
	[tenThangLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh]) VALUES (N'GV01', N'Đại Học', N'Lê Võ Tài Trí', N'1658788708', CAST(N'1996-05-01 00:00:00.000' AS DateTime), N'nam@gmail.com', N'32 Lê lợi', N'Nam', N'tuan')
ALTER TABLE [dbo].[Tbl_BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_BaiViet_Tbl_GiaoVien] FOREIGN KEY([maGV])
REFERENCES [dbo].[Tbl_GiaoVien] ([maGV])
GO
ALTER TABLE [dbo].[Tbl_BaiViet] CHECK CONSTRAINT [FK_Tbl_BaiViet_Tbl_GiaoVien]
GO
ALTER TABLE [dbo].[Tbl_DiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_DiemDanh_Tbl_GiaoVien] FOREIGN KEY([maGV])
REFERENCES [dbo].[Tbl_GiaoVien] ([maGV])
GO
ALTER TABLE [dbo].[Tbl_DiemDanh] CHECK CONSTRAINT [FK_Tbl_DiemDanh_Tbl_GiaoVien]
GO
ALTER TABLE [dbo].[Tbl_DiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_DiemDanh_Tbl_HocSinh] FOREIGN KEY([maHS])
REFERENCES [dbo].[Tbl_HocSinh] ([maHS])
GO
ALTER TABLE [dbo].[Tbl_DiemDanh] CHECK CONSTRAINT [FK_Tbl_DiemDanh_Tbl_HocSinh]
GO
ALTER TABLE [dbo].[Tbl_DiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_DiemDanh_Tbl_LoaiLop] FOREIGN KEY([maLoai])
REFERENCES [dbo].[Tbl_LoaiLop] ([maLoai])
GO
ALTER TABLE [dbo].[Tbl_DiemDanh] CHECK CONSTRAINT [FK_Tbl_DiemDanh_Tbl_LoaiLop]
GO
ALTER TABLE [dbo].[Tbl_DiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_DiemDanh_Tbl_LopHoc] FOREIGN KEY([maLop])
REFERENCES [dbo].[Tbl_LopHoc] ([maLop])
GO
ALTER TABLE [dbo].[Tbl_DiemDanh] CHECK CONSTRAINT [FK_Tbl_DiemDanh_Tbl_LopHoc]
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
ALTER TABLE [dbo].[Tbl_TienLuong]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_TienLuong_Tbl_GiaoVien] FOREIGN KEY([maGV])
REFERENCES [dbo].[Tbl_GiaoVien] ([maGV])
GO
ALTER TABLE [dbo].[Tbl_TienLuong] CHECK CONSTRAINT [FK_Tbl_TienLuong_Tbl_GiaoVien]
GO
