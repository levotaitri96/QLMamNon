USE [QuanLyMamNon]
GO
/****** Object:  Table [dbo].[Tbl_BaiViet]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_BaiViet](
	[maBaiViet] [int] IDENTITY(1,1) NOT NULL,
	[noiDung] [nvarchar](2000) NULL,
	[hinhBV] [nvarchar](500) NULL,
	[ngayDang] [datetime] NULL,
	[tenBaiViet] [nvarchar](80) NOT NULL,
	[maLoai] [int] NULL,
 CONSTRAINT [PK_Tbl_BaiViet] PRIMARY KEY CLUSTERED 
(
	[maBaiViet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_ChiTietDiemDanh]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ChiTietDiemDanh](
	[maChiTietDiemDanh] [int] IDENTITY(1,1) NOT NULL,
	[trangThai] [nvarchar](10) NULL,
	[maDiemDanh] [int] NULL,
	[maGV] [nvarchar](10) NULL,
	[maLoai] [nvarchar](10) NULL,
	[maLop] [nvarchar](10) NULL,
 CONSTRAINT [PK_Tbl_ChiTietDiemDanh_1] PRIMARY KEY CLUSTERED 
(
	[maChiTietDiemDanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_ChiTietHocPhi]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ChiTietHocPhi](
	[maChiTietHP] [int] IDENTITY(1,1) NOT NULL,
	[maHP] [int] NULL,
	[soTien] [float] NULL,
	[soNgayHoc] [int] NULL,
	[maHS] [int] NULL,
	[maLop] [nvarchar](10) NULL,
	[idQLHP] [int] NULL,
 CONSTRAINT [PK_Tbl_ChiTietHocPhi] PRIMARY KEY CLUSTERED 
(
	[maChiTietHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_ChiTietLuong]    Script Date: 5/6/2018 11:20:01 AM ******/
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
/****** Object:  Table [dbo].[Tbl_CTDiemDanhHS]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_CTDiemDanhHS](
	[maCTDiemDanhHS] [int] IDENTITY(1,1) NOT NULL,
	[trangThai] [nvarchar](10) NULL,
	[maDiemDanhHS] [int] NULL,
	[maHS] [int] NULL,
	[maLoai] [nvarchar](10) NULL,
	[maLop] [nvarchar](10) NULL,
 CONSTRAINT [PK_Tbl_CTDiemDanhHS] PRIMARY KEY CLUSTERED 
(
	[maCTDiemDanhHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_DanhSachHocSinh]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_DanhSachHocSinh](
	[maNH1] [int] IDENTITY(2018,1) NOT NULL,
	[tenNH] [nvarchar](50) NULL,
 CONSTRAINT [PK_TBLLLL] PRIMARY KEY CLUSTERED 
(
	[maNH1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_DanToc]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_DanToc](
	[maDanToc] [int] IDENTITY(1,1) NOT NULL,
	[tenDanToc] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_DanToc] PRIMARY KEY CLUSTERED 
(
	[maDanToc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_DiemDanh]    Script Date: 5/6/2018 11:20:01 AM ******/
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
/****** Object:  Table [dbo].[Tbl_DiemDanhHS]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_DiemDanhHS](
	[maDiemDanhHS] [int] IDENTITY(1,1) NOT NULL,
	[maNamHoc] [nvarchar](10) NULL,
	[ngayDiemDanh] [nvarchar](20) NULL,
	[maThang] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_DiemDanhHS] PRIMARY KEY CLUSTERED 
(
	[maDiemDanhHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_GiaoVien]    Script Date: 5/6/2018 11:20:01 AM ******/
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
	[maTonGiao] [int] NULL,
	[maDanToc] [int] NULL,
 CONSTRAINT [PK_Tbl_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[maGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_HocPhi]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_HocPhi](
	[maHP] [int] IDENTITY(1,1) NOT NULL,
	[maThang] [nvarchar](50) NULL,
	[maNamHoc] [nvarchar](10) NULL,
 CONSTRAINT [PK_Tbl_HocPhi] PRIMARY KEY CLUSTERED 
(
	[maHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_HocSinh]    Script Date: 5/6/2018 11:20:01 AM ******/
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
	[maTonGiao] [int] NULL,
	[maDanToc] [int] NULL,
	[maNgheNghiepMe] [int] NULL,
	[maNgheNghiepCha] [int] NULL,
 CONSTRAINT [PK_Tbl_HocSinh] PRIMARY KEY CLUSTERED 
(
	[maHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_InDanhSachHS]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_InDanhSachHS](
	[idInHS] [int] IDENTITY(1,1) NOT NULL,
	[maHS] [int] NOT NULL,
	[maLop] [nvarchar](10) NOT NULL,
	[tenLop] [nvarchar](50) NOT NULL,
	[hoTenHS] [nvarchar](50) NOT NULL,
	[ngaySinh] [date] NOT NULL,
	[soDTNha] [nvarchar](50) NOT NULL,
	[diaChi] [nvarchar](70) NOT NULL,
	[gioiTinh] [nvarchar](10) NOT NULL,
	[maNamHoc] [nvarchar](10) NOT NULL,
	[tenNamHoc] [nvarchar](20) NOT NULL,
	[idPhanLop] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_InDanhSachHS_1] PRIMARY KEY CLUSTERED 
(
	[idInHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_InLuong]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_InLuong](
	[hoTen] [nvarchar](50) NOT NULL,
	[soNgayLam] [int] NOT NULL,
	[soTien] [float] NOT NULL,
	[maGV] [nvarchar](10) NOT NULL,
	[maLuong] [int] NOT NULL,
	[tenThang] [nvarchar](50) NOT NULL,
	[maNamHoc] [nvarchar](10) NOT NULL,
	[tenNamHoc] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Tbl_InLuong_1] PRIMARY KEY CLUSTERED 
(
	[maGV] ASC,
	[maLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_InPhanCong]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_InPhanCong](
	[maGV] [nvarchar](10) NOT NULL,
	[Idphancong] [int] NOT NULL,
	[maLop] [nvarchar](10) NOT NULL,
	[maLoai] [nvarchar](10) NOT NULL,
	[maNamHoc] [nvarchar](10) NOT NULL,
	[tenLop] [nvarchar](50) NOT NULL,
	[tenNamHoc] [nvarchar](20) NOT NULL,
	[hoTen] [nvarchar](50) NOT NULL,
	[ngayBatDau] [int] NULL,
	[ngayKetThuc] [int] NULL,
 CONSTRAINT [PK_Tbl_InPhanCong] PRIMARY KEY CLUSTERED 
(
	[maGV] ASC,
	[Idphancong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_LoaiBaiViet]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_LoaiBaiViet](
	[maLoai] [int] IDENTITY(1,1) NOT NULL,
	[tenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_LoaiBaiViet] PRIMARY KEY CLUSTERED 
(
	[maLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_LoaiLop]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_LoaiLop](
	[maLoai] [nvarchar](10) NOT NULL,
	[tenLoai] [nvarchar](50) NOT NULL,
	[soLuongLop] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_LoaiLop] PRIMARY KEY CLUSTERED 
(
	[maLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_LopHoc]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_LopHoc](
	[maLop] [nvarchar](10) NOT NULL,
	[tenLop] [nvarchar](50) NOT NULL,
	[soLuongHS] [int] NOT NULL,
	[maNamHoc] [nvarchar](10) NULL,
	[maLoai] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Tbl_LopHoc] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_NamHoc]    Script Date: 5/6/2018 11:20:01 AM ******/
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
/****** Object:  Table [dbo].[Tbl_NgheNghiepCha]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_NgheNghiepCha](
	[maNgheNghiepCha] [int] IDENTITY(1,1) NOT NULL,
	[tenNgheNghiepCha] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_NgheNghiepCha] PRIMARY KEY CLUSTERED 
(
	[maNgheNghiepCha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_NgheNghiepMe]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_NgheNghiepMe](
	[maNgheNghiepMe] [int] IDENTITY(1,1) NOT NULL,
	[tenNgheNghiepMe] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_NgheNghiepMe] PRIMARY KEY CLUSTERED 
(
	[maNgheNghiepMe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_PhanCong]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PhanCong](
	[Idphancong] [int] IDENTITY(1,1) NOT NULL,
	[maNamHoc] [nvarchar](10) NOT NULL,
	[maLop] [nvarchar](10) NOT NULL,
	[maLoai] [nvarchar](10) NOT NULL,
	[maGV] [nvarchar](10) NOT NULL,
	[trangThai] [nvarchar](30) NULL,
 CONSTRAINT [PK_Tbl_PhanCong] PRIMARY KEY CLUSTERED 
(
	[Idphancong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_PhanLop]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PhanLop](
	[idPhanLop] [int] IDENTITY(1,1) NOT NULL,
	[maNamHoc] [nvarchar](10) NULL,
	[maLop] [nvarchar](10) NULL,
	[maLoai] [nvarchar](10) NULL,
	[maHS] [int] NULL,
 CONSTRAINT [PK_Tbl_PhanLop] PRIMARY KEY CLUSTERED 
(
	[idPhanLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_QuanLyHocPhi]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_QuanLyHocPhi](
	[idQLHP] [int] IDENTITY(1,1) NOT NULL,
	[tienThangHP] [float] NULL,
	[maLoai] [nvarchar](10) NULL,
 CONSTRAINT [PK_Tbl_QuanLyHocPhi] PRIMARY KEY CLUSTERED 
(
	[idQLHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_TaiKhoan]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_TaiKhoan](
	[maTK] [int] IDENTITY(1,1) NOT NULL,
	[loaiTK] [nvarchar](10) NULL,
	[matKhau] [nvarchar](50) NULL,
	[maGV] [nvarchar](10) NULL,
 CONSTRAINT [PK_Tbl_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[maTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_ThangHoc]    Script Date: 5/6/2018 11:20:01 AM ******/
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
/****** Object:  Table [dbo].[Tbl_TienLuong]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_TienLuong](
	[maLuong] [int] IDENTITY(1,1) NOT NULL,
	[maThang] [nvarchar](50) NULL,
	[maNamHoc] [nvarchar](10) NULL,
	[soTienNgay] [int] NULL,
 CONSTRAINT [PK_Tbl_TienLuong] PRIMARY KEY CLUSTERED 
(
	[maLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_TonGiao]    Script Date: 5/6/2018 11:20:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_TonGiao](
	[maTonGiao] [int] IDENTITY(1,1) NOT NULL,
	[tenTonGiao] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_TonGiao] PRIMARY KEY CLUSTERED 
(
	[maTonGiao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Tbl_BaiViet] ON 

INSERT [dbo].[Tbl_BaiViet] ([maBaiViet], [noiDung], [hinhBV], [ngayDang], [tenBaiViet], [maLoai]) VALUES (1, N'Đời Thay Đổi Khi Ta Thay Đồ

Nếu bạn luôn tâm niệm định kiến là những cuốn sách Thời trang thường sẽ dày đặc hình ảnh đẹp đẽ nhưng lại vô cùng ít ỏi về mặt thông tin nội dung, và vì thế, không đóng góp gì nhiều trong việc giúp người đọc thay đổi ngoại hình cũng như phát triển phong cách cá nhân – thì quả thật là bạn đã nhầm.

Những cuốn sách Thời trang “kiểu mới” giờ đây tập trung hết mức vào việc xây dựng nội dung hay ho với một mục tiêu tối thượng: không chỉ đưa ra những hình mẫu thời trang đẹp đẽ, mà còn hướng dẫn phương thức cụ thể để người đọc dễ dàng đạt được vẻ đẹp và sự tự tin đó. Mang những đặc điểm khác biệt là vô cùng đầu tư vào nội dung: chủ yếu đưa ra những quan điểm, liệt kê các bí quyết và cách thức, công phá những định kiến và luôn luôn hướng tới việc làm thay đổi tư duy trước khi dạy bạn nên phối chiếc chân váy này với chiếc áo sơ-mi kia.. sách Thời trang thời nay xứng đáng được xem là những cuốn sách self-help thực thụ.', N'11-53329.jpg', CAST(N'2017-02-09 00:00:00.000' AS DateTime), N'Đời thay đổi khi ta thay đồ', 1)
INSERT [dbo].[Tbl_BaiViet] ([maBaiViet], [noiDung], [hinhBV], [ngayDang], [tenBaiViet], [maLoai]) VALUES (2, N'Dế Mèn phiêu lưu ký là tác phẩm văn xuôi đặc sắc và nổi tiếng nhất của Tô Hoài viết về loài vật, dành cho lứa tuổi thiếu nhi. Ban đầu truyện có tên là "Con dế mèn" (chính là ba chương đầu của truyện) do nhà xuất bản Tân Dân, Hà Nội phát hành năm 1941. Sau đó, được sự ủng hộ nhiệt tình của nhân dân, Tô Hoài viết thêm truyện "Dế Mèn phiêu lưu ký" (là bảy chương cuối của chuyện". Năm 1955, ông mới gộp hai chuyện vào với nhau để thành truyện "Dế mèn phiêu lưu ký" như ngày nay. Truyện đã được đưa vào chương trình học lớp 6 học kì 2 môn Ngữ Văn của Việt Nam.

', N'demen.jpg', CAST(N'2018-12-03 00:00:00.000' AS DateTime), N'Dế Mèn Phiêu Lưu Ký', 1)
INSERT [dbo].[Tbl_BaiViet] ([maBaiViet], [noiDung], [hinhBV], [ngayDang], [tenBaiViet], [maLoai]) VALUES (3, N'Giáo án mầm non theo chủ đề dành cho bé 5 tuổi (giáo án mầm non lớp lá) bao gồm các hoạt động giáo dục trẻ thông qua những hát, vẽ, múa, giáo dục thể chất… giúp các bé bước đầu làm quen với các kiến thức xã hội xung quanh cuộc sống như: làm quen với bảng chữ cái, học về luật lệ giao thông khi ra đường, phát triển vận động khi tham gia các trò chơi.', N'16-cogiao282.jpg', CAST(N'2018-04-02 00:00:00.000' AS DateTime), N'Trọn bộ giáo án mầm non dành cho lớp 5 tuổi', 2)
INSERT [dbo].[Tbl_BaiViet] ([maBaiViet], [noiDung], [hinhBV], [ngayDang], [tenBaiViet], [maLoai]) VALUES (5, N'Lời chúc Tết giống như một món quà tinh thần mang ý nghĩa vào dịp đầu năm mới. Bất kỳ ai được nhận món quà này từ một đứa trẻ thì chắc hẳn sẽ càng thấy ấm áp và hạnh phúc hơn nhiều.', N'Nhung-cau-chuc-tet-de-thuong-va-y-nghia-cho-tre-01-550x320.jpg', CAST(N'2018-02-02 00:00:00.000' AS DateTime), N'Dạy trẻ những câu chúc Tết hay', 3)
SET IDENTITY_INSERT [dbo].[Tbl_BaiViet] OFF
SET IDENTITY_INSERT [dbo].[Tbl_ChiTietDiemDanh] ON 

INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (336, N'Có', 58, N'GV02', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (337, N'Có', 58, N'GV03', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (338, N'Có', 59, N'GV02', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (339, N'Có', 59, N'GV03', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (340, N'Có', 60, N'GV04', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (341, N'Có', 60, N'GV05', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (342, N'Có', 61, N'GV04', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (343, N'Có', 61, N'GV05', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (344, N'Có', 62, N'GV02', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (345, N'Có', 62, N'GV03', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (346, N'Có', 62, N'GV20554', N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (347, N'Có', 63, N'GV02', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (348, N'Có', 63, N'GV03', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (349, N'Có', 63, N'GV20554', N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (350, N'Có', 63, N'GV25945', N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (351, N'Có', 64, N'GV02', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (352, N'Có', 64, N'GV03', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (353, N'Có', 64, N'GV20554', N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (354, N'Có', 64, N'GV25945', N'L03', N'M03')
SET IDENTITY_INSERT [dbo].[Tbl_ChiTietDiemDanh] OFF
SET IDENTITY_INSERT [dbo].[Tbl_ChiTietHocPhi] ON 

INSERT [dbo].[Tbl_ChiTietHocPhi] ([maChiTietHP], [maHP], [soTien], [soNgayHoc], [maHS], [maLop], [idQLHP]) VALUES (61, 21, 636364, 4, 16, N'M01', 4)
INSERT [dbo].[Tbl_ChiTietHocPhi] ([maChiTietHP], [maHP], [soTien], [soNgayHoc], [maHS], [maLop], [idQLHP]) VALUES (62, 21, 795455, 5, 20, N'M01', 4)
INSERT [dbo].[Tbl_ChiTietHocPhi] ([maChiTietHP], [maHP], [soTien], [soNgayHoc], [maHS], [maLop], [idQLHP]) VALUES (63, 21, 636364, 4, 21, N'M01', 4)
INSERT [dbo].[Tbl_ChiTietHocPhi] ([maChiTietHP], [maHP], [soTien], [soNgayHoc], [maHS], [maLop], [idQLHP]) VALUES (64, 21, 954545, 6, 23, N'M01', 4)
INSERT [dbo].[Tbl_ChiTietHocPhi] ([maChiTietHP], [maHP], [soTien], [soNgayHoc], [maHS], [maLop], [idQLHP]) VALUES (65, 21, 636364, 4, 14, N'M02', 2)
INSERT [dbo].[Tbl_ChiTietHocPhi] ([maChiTietHP], [maHP], [soTien], [soNgayHoc], [maHS], [maLop], [idQLHP]) VALUES (66, 21, 795455, 5, 24, N'M02', 2)
INSERT [dbo].[Tbl_ChiTietHocPhi] ([maChiTietHP], [maHP], [soTien], [soNgayHoc], [maHS], [maLop], [idQLHP]) VALUES (67, 21, 1090909, 6, 15, N'M03', 3)
INSERT [dbo].[Tbl_ChiTietHocPhi] ([maChiTietHP], [maHP], [soTien], [soNgayHoc], [maHS], [maLop], [idQLHP]) VALUES (68, 21, 954545, 6, 29, N'M04', 4)
INSERT [dbo].[Tbl_ChiTietHocPhi] ([maChiTietHP], [maHP], [soTien], [soNgayHoc], [maHS], [maLop], [idQLHP]) VALUES (69, 21, 954545, 6, 31, N'M04', 4)
INSERT [dbo].[Tbl_ChiTietHocPhi] ([maChiTietHP], [maHP], [soTien], [soNgayHoc], [maHS], [maLop], [idQLHP]) VALUES (70, 21, 954545, 6, 26, N'M05', 2)
INSERT [dbo].[Tbl_ChiTietHocPhi] ([maChiTietHP], [maHP], [soTien], [soNgayHoc], [maHS], [maLop], [idQLHP]) VALUES (71, 21, 909091, 5, 25, N'M06', 3)
INSERT [dbo].[Tbl_ChiTietHocPhi] ([maChiTietHP], [maHP], [soTien], [soNgayHoc], [maHS], [maLop], [idQLHP]) VALUES (72, 21, 954545, 6, 27, N'M07', 4)
INSERT [dbo].[Tbl_ChiTietHocPhi] ([maChiTietHP], [maHP], [soTien], [soNgayHoc], [maHS], [maLop], [idQLHP]) VALUES (73, 21, 545455, 3, 35, N'M06', 3)
INSERT [dbo].[Tbl_ChiTietHocPhi] ([maChiTietHP], [maHP], [soTien], [soNgayHoc], [maHS], [maLop], [idQLHP]) VALUES (74, 21, 954545, 6, 32, N'M07', 4)
INSERT [dbo].[Tbl_ChiTietHocPhi] ([maChiTietHP], [maHP], [soTien], [soNgayHoc], [maHS], [maLop], [idQLHP]) VALUES (75, 21, 477273, 3, 34, N'M05', 2)
INSERT [dbo].[Tbl_ChiTietHocPhi] ([maChiTietHP], [maHP], [soTien], [soNgayHoc], [maHS], [maLop], [idQLHP]) VALUES (76, 21, 727273, 4, 33, N'M18774', 3)
SET IDENTITY_INSERT [dbo].[Tbl_ChiTietHocPhi] OFF
SET IDENTITY_INSERT [dbo].[Tbl_ChiTietLuong] ON 

INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (61, 18, 4, 800000, N'GV02')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (62, 18, 4, 600000, N'GV03')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (63, 19, 2, 240000, N'GV04')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (64, 19, 2, 240000, N'GV05')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (65, 20, 1, 200000, N'GV02')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (66, 20, 1, 150000, N'GV03')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (67, 20, 1, 200000, N'GV20554')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (68, 20, 1, 100000, N'GV25945')
SET IDENTITY_INSERT [dbo].[Tbl_ChiTietLuong] OFF
SET IDENTITY_INSERT [dbo].[Tbl_CTDiemDanhHS] ON 

INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (66, N'Có', 16, 16, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (67, N'Có', 16, 20, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (68, N'Vắng', 16, 21, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (69, N'Có', 16, 23, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (70, N'Có', 16, 15, N'L03', N'M03')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (71, N'Có', 16, 29, N'L01', N'M04')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (72, N'Có', 16, 31, N'L01', N'M04')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (73, N'Có', 16, 26, N'L02', N'M05')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (74, N'Có', 16, 27, N'L01', N'M07')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (76, N'Có', 16, 32, N'L01', N'M07')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (77, N'Có', 17, 16, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (78, N'Vắng', 17, 20, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (79, N'Có', 17, 21, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (80, N'Có', 17, 23, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (81, N'Vắng', 17, 14, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (82, N'Có', 17, 24, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (83, N'Có', 17, 15, N'L03', N'M03')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (84, N'Có', 17, 29, N'L01', N'M04')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (85, N'Có', 17, 31, N'L01', N'M04')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (86, N'Có', 17, 26, N'L02', N'M05')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (87, N'Có', 17, 25, N'L03', N'M06')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (88, N'Có', 17, 27, N'L01', N'M07')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (90, N'Có', 17, 32, N'L01', N'M07')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (91, N'Có', 18, 16, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (92, N'Có', 18, 20, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (93, N'Có', 18, 21, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (94, N'Có', 18, 23, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (95, N'Có', 18, 14, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (96, N'Có', 18, 24, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (97, N'Có', 18, 15, N'L03', N'M03')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (98, N'Có', 18, 29, N'L01', N'M04')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (99, N'Có', 18, 31, N'L01', N'M04')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (100, N'Có', 18, 26, N'L02', N'M05')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (101, N'Có', 18, 25, N'L03', N'M06')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (102, N'Có', 18, 27, N'L01', N'M07')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (103, N'Có', 18, 32, N'L01', N'M07')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (104, N'Có', 18, 33, N'L03', N'M03')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (105, N'Vắng', 19, 16, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (106, N'Có', 19, 20, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (107, N'Có', 19, 21, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (108, N'Vắng', 19, 23, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (109, N'Có', 19, 14, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (110, N'Có', 19, 24, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (111, N'Có', 19, 15, N'L03', N'M03')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (112, N'Có', 19, 29, N'L01', N'M04')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (113, N'Có', 19, 31, N'L01', N'M04')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (114, N'Có', 19, 26, N'L02', N'M05')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (115, N'Có', 19, 25, N'L03', N'M06')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (116, N'Có', 19, 27, N'L01', N'M07')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (117, N'Có', 19, 35, N'L03', N'M06')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (118, N'Có', 19, 32, N'L01', N'M07')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (119, N'Vắng', 20, 16, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (120, N'Có', 20, 20, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (121, N'Có', 20, 21, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (122, N'Có', 20, 23, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (123, N'Có', 20, 14, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (124, N'Có', 20, 24, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (125, N'Có', 20, 15, N'L03', N'M03')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (126, N'Có', 20, 29, N'L01', N'M04')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (127, N'Có', 20, 31, N'L01', N'M04')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (128, N'Có', 20, 26, N'L02', N'M05')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (129, N'Có', 20, 25, N'L03', N'M06')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (130, N'Có', 20, 27, N'L01', N'M07')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (131, N'Có', 20, 35, N'L03', N'M06')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (132, N'Có', 20, 32, N'L01', N'M07')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (133, N'Có', 20, 34, N'L02', N'M05')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (134, N'Có', 20, 33, N'L03', N'M18774')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (135, N'Có', 21, 16, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (136, N'Có', 21, 20, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (137, N'Có', 21, 21, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (138, N'Có', 21, 23, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (139, N'Có', 21, 14, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (140, N'Có', 21, 24, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (141, N'Có', 21, 15, N'L03', N'M03')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (142, N'Có', 21, 29, N'L01', N'M04')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (143, N'Có', 21, 31, N'L01', N'M04')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (144, N'Có', 21, 26, N'L02', N'M05')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (145, N'Có', 21, 25, N'L03', N'M06')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (146, N'Có', 21, 27, N'L01', N'M07')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (147, N'Có', 21, 35, N'L03', N'M06')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (148, N'Có', 21, 32, N'L01', N'M07')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (149, N'Có', 21, 34, N'L02', N'M05')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (150, N'Có', 21, 33, N'L03', N'M18774')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (151, N'Vắng', 22, 16, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (152, N'Có', 22, 20, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (153, N'Vắng', 22, 21, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (154, N'Có', 22, 23, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (155, N'Có', 22, 14, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (156, N'Có', 22, 24, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (157, N'Có', 22, 15, N'L03', N'M03')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (158, N'Có', 22, 29, N'L01', N'M04')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (159, N'Có', 22, 31, N'L01', N'M04')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (160, N'Có', 22, 26, N'L02', N'M05')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (161, N'Có', 22, 25, N'L03', N'M06')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (162, N'Có', 22, 27, N'L01', N'M07')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (163, N'Có', 22, 35, N'L03', N'M06')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (164, N'Có', 22, 32, N'L01', N'M07')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (165, N'Có', 22, 34, N'L02', N'M05')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (166, N'Có', 22, 33, N'L03', N'M18774')
GO
SET IDENTITY_INSERT [dbo].[Tbl_CTDiemDanhHS] OFF
SET IDENTITY_INSERT [dbo].[Tbl_DanhSachHocSinh] ON 

INSERT [dbo].[Tbl_DanhSachHocSinh] ([maNH1], [tenNH]) VALUES (2018, N'nhân')
INSERT [dbo].[Tbl_DanhSachHocSinh] ([maNH1], [tenNH]) VALUES (2019, N'trí')
INSERT [dbo].[Tbl_DanhSachHocSinh] ([maNH1], [tenNH]) VALUES (2020, N'nghĩa')
INSERT [dbo].[Tbl_DanhSachHocSinh] ([maNH1], [tenNH]) VALUES (2021, N'hahah')
SET IDENTITY_INSERT [dbo].[Tbl_DanhSachHocSinh] OFF
SET IDENTITY_INSERT [dbo].[Tbl_DanToc] ON 

INSERT [dbo].[Tbl_DanToc] ([maDanToc], [tenDanToc]) VALUES (1, N'Kinh')
INSERT [dbo].[Tbl_DanToc] ([maDanToc], [tenDanToc]) VALUES (2, N'Tày')
INSERT [dbo].[Tbl_DanToc] ([maDanToc], [tenDanToc]) VALUES (3, N'Thái')
INSERT [dbo].[Tbl_DanToc] ([maDanToc], [tenDanToc]) VALUES (4, N'Mường')
INSERT [dbo].[Tbl_DanToc] ([maDanToc], [tenDanToc]) VALUES (5, N'Khơ Me')
INSERT [dbo].[Tbl_DanToc] ([maDanToc], [tenDanToc]) VALUES (6, N'H''Mông')
INSERT [dbo].[Tbl_DanToc] ([maDanToc], [tenDanToc]) VALUES (7, N'Nùng')
INSERT [dbo].[Tbl_DanToc] ([maDanToc], [tenDanToc]) VALUES (8, N'Hoa')
INSERT [dbo].[Tbl_DanToc] ([maDanToc], [tenDanToc]) VALUES (9, N'Dao')
INSERT [dbo].[Tbl_DanToc] ([maDanToc], [tenDanToc]) VALUES (10, N'Gia Rai')
INSERT [dbo].[Tbl_DanToc] ([maDanToc], [tenDanToc]) VALUES (11, N'Chăm Ba')
INSERT [dbo].[Tbl_DanToc] ([maDanToc], [tenDanToc]) VALUES (12, N'Ê Đê')
INSERT [dbo].[Tbl_DanToc] ([maDanToc], [tenDanToc]) VALUES (13, N'Lào')
INSERT [dbo].[Tbl_DanToc] ([maDanToc], [tenDanToc]) VALUES (15, N'Nùng1')
SET IDENTITY_INSERT [dbo].[Tbl_DanToc] OFF
SET IDENTITY_INSERT [dbo].[Tbl_DiemDanh] ON 

INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2017', N'01', N'01', 58)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2017', N'02', N'01', 59)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'01', N'01', 60)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'02', N'01', 61)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2017', N'03', N'01', 62)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2017', N'04', N'01', 63)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2017', N'01', N'02', 64)
SET IDENTITY_INSERT [dbo].[Tbl_DiemDanh] OFF
SET IDENTITY_INSERT [dbo].[Tbl_DiemDanhHS] ON 

INSERT [dbo].[Tbl_DiemDanhHS] ([maDiemDanhHS], [maNamHoc], [ngayDiemDanh], [maThang]) VALUES (16, N'2018', N'25', N'04')
INSERT [dbo].[Tbl_DiemDanhHS] ([maDiemDanhHS], [maNamHoc], [ngayDiemDanh], [maThang]) VALUES (17, N'2018', N'26', N'04')
INSERT [dbo].[Tbl_DiemDanhHS] ([maDiemDanhHS], [maNamHoc], [ngayDiemDanh], [maThang]) VALUES (18, N'2018', N'27', N'04')
INSERT [dbo].[Tbl_DiemDanhHS] ([maDiemDanhHS], [maNamHoc], [ngayDiemDanh], [maThang]) VALUES (19, N'2018', N'01', N'05')
INSERT [dbo].[Tbl_DiemDanhHS] ([maDiemDanhHS], [maNamHoc], [ngayDiemDanh], [maThang]) VALUES (20, N'2018', N'28', N'04')
INSERT [dbo].[Tbl_DiemDanhHS] ([maDiemDanhHS], [maNamHoc], [ngayDiemDanh], [maThang]) VALUES (21, N'2018', N'29', N'04')
INSERT [dbo].[Tbl_DiemDanhHS] ([maDiemDanhHS], [maNamHoc], [ngayDiemDanh], [maThang]) VALUES (22, N'2018', N'30', N'04')
SET IDENTITY_INSERT [dbo].[Tbl_DiemDanhHS] OFF
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV01', N'Đại Học', N'Lê Võ Tài Trí', N'01658788708', CAST(N'1996-05-01 00:00:00.000' AS DateTime), N'nam@gmail.com', N'32 Lê lợi', N'Nam', N'dat.jpg', 1, 1)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV02', N'Đại Học', N'Lê Nguyễn Trung Nhân', N'01634799710', CAST(N'1996-05-01 00:00:00.000' AS DateTime), N'nhan@gmail.com', N'45 Bình Thạnh', N'Nam', N'dat.jpg', 1, 1)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV03', N'Cao Đẳng', N'Hà Tuấn Lâm', N'01468200139', CAST(N'1996-05-01 00:00:00.000' AS DateTime), N'lam@gmail.com', N'63 Gò Vấp', N'Nữ', N'dat.jpg', 1, 1)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV04', N'Trung Cấp', N'Bùi Hoàng Nam', N'01489725148', CAST(N'1996-05-01 00:00:00.000' AS DateTime), N'nam@gmail.com', N'96 Quận 10', N'Nam', N'Image.jpg', 1, 1)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV05', N'Trung Cấp', N'Nguyễn Đình Khá', N'0165789742', CAST(N'1986-02-02 00:00:00.000' AS DateTime), N'Kha@gmail.com', N'456 Quang Trung Gò Vấp', N'Nam', N'dat.jpg', 1, 1)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV20554', N'Đại Học', N'Quách Quốc Quý', N'01239789456', CAST(N'1992-07-03 00:00:00.000' AS DateTime), N'Quy@gmail.com', N'96 Quang Trung , Gò Vấp', N'Nam', N'dat.jpg', 1, 1)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV25945', N'Trung Cấp', N'Trần Thanh Hiệp', N'0165789708', CAST(N'1990-04-04 00:00:00.000' AS DateTime), N'Hiep@gmail.com', N'65 Thủ Đức', N'Nam', N'dat.jpg', 1, 1)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV45275', N'Đại Học', N'Nguyễn Văn Tèo', N'0123456789', CAST(N'1994-03-01 00:00:00.000' AS DateTime), N'Teo@gmail.com', N'34 Quang Trung', N'Nam', N'dat.jpg', 1, 1)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV77696', N'Đại Học', N'Đặng Lê Diệu Ly', N'0157897426', CAST(N'1994-12-20 00:00:00.000' AS DateTime), N'ly@gmail.com', N'123 Trần Văn Đang', N'Nữ', N'dat.jpg', 1, 1)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV91766', N'Đại Học', N'Trịnh Thiên Ân', N'123456789', CAST(N'1980-03-21 00:00:00.000' AS DateTime), N'an@gmail.com', N'65 Lê Lợi', N'Nam', N'dat.jpg', 1, 1)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV93246', N'Đại Học', N'Nguyễn Văn B', N'0123456789', CAST(N'1993-02-01 00:00:00.000' AS DateTime), N'B@gmail.com', N'99 Quang Trung', N'Nam', N'dat.jpg', 3, 11)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV95350', N'Đại Học', N'Nguyễn Anh phong', N'0157742159', CAST(N'1996-02-04 00:00:00.000' AS DateTime), N'Phong@gmail.com', N'96 Quận 3', N'Nam', N'dat.jpg', 1, 1)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV99087', N'Đại Học', N'Lê Văn Tèo', N'0123456789', CAST(N'1986-03-01 00:00:00.000' AS DateTime), N'Teo@gmail.com', N'67 Quang Trung Lê Lợi', N'Nam', N'dat.jpg', 1, 1)
SET IDENTITY_INSERT [dbo].[Tbl_HocPhi] ON 

INSERT [dbo].[Tbl_HocPhi] ([maHP], [maThang], [maNamHoc]) VALUES (20, N'01', N'2017')
INSERT [dbo].[Tbl_HocPhi] ([maHP], [maThang], [maNamHoc]) VALUES (21, N'04', N'2018')
SET IDENTITY_INSERT [dbo].[Tbl_HocPhi] OFF
SET IDENTITY_INSERT [dbo].[Tbl_HocSinh] ON 

INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [maTonGiao], [maDanToc], [maNgheNghiepMe], [maNgheNghiepCha]) VALUES (14, N'Nguyễn Tuấn Kiệt', N'Trần Thị Bé', N'Nguyễn Hoàng Bách', N'0165799704', CAST(N'2013-06-09 00:00:00.000' AS DateTime), N'kiet@gmail.com', N'1/25 Gò Vấp', N'Nam', N'1.png', N'L02', 1, 1, 1, 1)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [maTonGiao], [maDanToc], [maNgheNghiepMe], [maNgheNghiepCha]) VALUES (15, N'Bùi Hoàng', N'Nguyễn Thị Thoa', N'Bùi Thị Lệ', N'01664879925', CAST(N'2013-02-20 00:00:00.000' AS DateTime), N'Hoang@gmail.com', N'89 Võ Văn kiệt Quận 7', N'Nam', N'4.PNG', N'L03', 1, 1, 1, 1)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [maTonGiao], [maDanToc], [maNgheNghiepMe], [maNgheNghiepCha]) VALUES (16, N'Đặng Văn Ngữ', N'Nguyễn Thị A', N'Đặng Lê Diệu Ly', N'012578919', CAST(N'2015-09-22 00:00:00.000' AS DateTime), N'Ngu@gmail.com', N'65 Quận 7', N'Nam', N'3.PNG', N'L01', 1, 1, 1, 1)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [maTonGiao], [maDanToc], [maNgheNghiepMe], [maNgheNghiepCha]) VALUES (20, N'Nguyễn Đình Nam', N'Hà Thị Phương', N'Nguyễn Đình Khoa', N'0123456789', CAST(N'2014-10-30 00:00:00.000' AS DateTime), N'khoa@gmail.com', N'26 lê lợi', N'Nam', N'4.PNG', N'L01', 1, 1, 1, 1)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [maTonGiao], [maDanToc], [maNgheNghiepMe], [maNgheNghiepCha]) VALUES (21, N'Trần Văn Tuấn', N'Lê Ngọc Diệp', N'Trần Hải Dương', N'0919321999', CAST(N'2015-03-02 00:00:00.000' AS DateTime), N'duong@gmail.com', N'146 Lê Lợi', N'Nam', N'2.PNG', N'L01', 1, 1, 1, 1)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [maTonGiao], [maDanToc], [maNgheNghiepMe], [maNgheNghiepCha]) VALUES (23, N'Nguyễn Tuấn Tú', N'Nguyễn Thị Hoa', N'Nguyễn Tuấn Anh', N'01236555595', CAST(N'2015-12-06 00:00:00.000' AS DateTime), N'anh12@gmail.com', N'123 Lê Lai Gò Vấp', N'Nam', N'1.jpg', N'L01', 1, 1, 1, 1)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [maTonGiao], [maDanToc], [maNgheNghiepMe], [maNgheNghiepCha]) VALUES (24, N'Nguyễn Văn Nam', N'Lê Thị Phụng', N'Nguyễn Văn Thuyết', N'01235555858', CAST(N'2014-03-12 00:00:00.000' AS DateTime), N'thuyet0909@gmal.com', N'36 Lê Lai', N'Nam', N'7.PNG', N'L02', 1, 1, 1, 1)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [maTonGiao], [maDanToc], [maNgheNghiepMe], [maNgheNghiepCha]) VALUES (25, N'Lê Trung Hiếu', N'Bùi Hà My', N'Đen Vâu', N'09662626885', CAST(N'2012-12-02 00:00:00.000' AS DateTime), N'vau@gmail.com', N'123 Lê Lai Gò Vấp', N'Nữ', N'Image.jpg', N'L03', 1, 1, 2, 2)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [maTonGiao], [maDanToc], [maNgheNghiepMe], [maNgheNghiepCha]) VALUES (26, N'Bùi Thành Công ', N'Nguyễn Thị Hoa Huỳnh', N'Bùi Nguyễn Hà My', N'0932427796', CAST(N'2013-10-28 00:00:00.000' AS DateTime), N'hamy@gmail.com', N'889 Lê Đức Thọ', N'Nam', N'5.PNG', N'L02', 1, 1, 1, 1)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [maTonGiao], [maDanToc], [maNgheNghiepMe], [maNgheNghiepCha]) VALUES (27, N'Huỳnh Hưng', N'Nguyễn Hiền Mai', N'Huỳnh Hữu Nghĩa', N'01258585852', CAST(N'2016-03-25 00:00:00.000' AS DateTime), N'nghia@gmail.com', N'242 Lê Lợi', N'Nữ', N'Image.jpg', N'L01', 4, 5, 3, 4)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [maTonGiao], [maDanToc], [maNgheNghiepMe], [maNgheNghiepCha]) VALUES (29, N'Trung Hiếu', N'Lê Thị Đẹp', N'Trung Trí Nhân', N'09232528479', CAST(N'2015-12-03 00:00:00.000' AS DateTime), N'nhan@gmail.com', N'123 Bạch Đằng ', N'Nam', N'Image.jpg', N'L01', 2, 2, 5, 2)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [maTonGiao], [maDanToc], [maNgheNghiepMe], [maNgheNghiepCha]) VALUES (31, N'Pham Tấn Tạ', N'Nguyễn Thị Nam', N'Pham Tấn Chiến', N'0167801597', CAST(N'2016-01-05 00:00:00.000' AS DateTime), N'Chien@gmail.com', N'69 Nam Kỳ khởi nghĩa', N'Nam', N'Image.jpg', N'L01', 1, 1, 1, 2)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [maTonGiao], [maDanToc], [maNgheNghiepMe], [maNgheNghiepCha]) VALUES (32, N'Nhân Nghĩa', N'Nguyễn Hồng', N'Nhân Tài', N'0212585545877', CAST(N'2014-10-03 00:00:00.000' AS DateTime), N'tai@gmail.com', N'234 vũ tùng', N'Nữ', N'Image.jpg', N'L01', 1, 1, 2, 3)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [maTonGiao], [maDanToc], [maNgheNghiepMe], [maNgheNghiepCha]) VALUES (33, N'Huỳnh Lý Bữu', N'Lê Kim Liên', N'Huỳnh Nhi ', N'0636567345', CAST(N'2011-10-02 00:00:00.000' AS DateTime), N'nhinhi@gmail.com', N'145 Hùng Vương Q.10', N'Nữ', N'4.PNG', N'L03', 1, 1, 5, 3)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [maTonGiao], [maDanToc], [maNgheNghiepMe], [maNgheNghiepCha]) VALUES (34, N'Nguyễn Tấn Dũng', N'Hà Ngọc Hồi', N'Nguyễn Thảo Trang', N'02544754212', CAST(N'2014-02-12 00:00:00.000' AS DateTime), N'trangthao@gmail.com', N'143 Hồng Hà Q.Bình Thạnh', N'Nữ', N'3.PNG', N'L02', 1, 1, 4, 3)
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [maTonGiao], [maDanToc], [maNgheNghiepMe], [maNgheNghiepCha]) VALUES (35, N'Phan Huy Ích', N'Nguyễn Thị Thập', N'Phan Đức Huy', N'01248778954', CAST(N'2012-04-23 00:00:00.000' AS DateTime), N'huy@gmai.com', N'123 Quang Trung ', N'Nam', N'3.png', N'L03', 1, 1, 2, 3)
SET IDENTITY_INSERT [dbo].[Tbl_HocSinh] OFF
SET IDENTITY_INSERT [dbo].[Tbl_LoaiBaiViet] ON 

INSERT [dbo].[Tbl_LoaiBaiViet] ([maLoai], [tenLoai]) VALUES (1, N'Phụ Huynh Mầm Non')
INSERT [dbo].[Tbl_LoaiBaiViet] ([maLoai], [tenLoai]) VALUES (2, N'Giáo Viên Mầm Non')
INSERT [dbo].[Tbl_LoaiBaiViet] ([maLoai], [tenLoai]) VALUES (3, N'Quản Lý Mầm Non')
SET IDENTITY_INSERT [dbo].[Tbl_LoaiBaiViet] OFF
INSERT [dbo].[Tbl_LoaiLop] ([maLoai], [tenLoai], [soLuongLop]) VALUES (N'L01', N'Mầm', 4)
INSERT [dbo].[Tbl_LoaiLop] ([maLoai], [tenLoai], [soLuongLop]) VALUES (N'L02', N'Chồi', 4)
INSERT [dbo].[Tbl_LoaiLop] ([maLoai], [tenLoai], [soLuongLop]) VALUES (N'L03', N'Lá', 4)
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maNamHoc], [maLoai]) VALUES (N'M01', N'Mầm1', 20, N'2018', N'L01')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maNamHoc], [maLoai]) VALUES (N'M02', N'Chồi1', 20, N'2018', N'L02')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maNamHoc], [maLoai]) VALUES (N'M03', N'Lá1', 20, N'2018', N'L03')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maNamHoc], [maLoai]) VALUES (N'M04', N'Mầm2', 20, N'2018', N'L01')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maNamHoc], [maLoai]) VALUES (N'M05', N'Chồi2', 20, N'2018', N'L02')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maNamHoc], [maLoai]) VALUES (N'M06', N'Lá2', 20, N'2018', N'L03')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maNamHoc], [maLoai]) VALUES (N'M07', N'Mầm3', 20, N'2018', N'L01')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maNamHoc], [maLoai]) VALUES (N'M18774', N'Lá 3', 20, N'2018', N'L03')
INSERT [dbo].[Tbl_NamHoc] ([maNamHoc], [tenNamHoc]) VALUES (N'2017', N'2017-2018')
INSERT [dbo].[Tbl_NamHoc] ([maNamHoc], [tenNamHoc]) VALUES (N'2018', N'2018-2019')
INSERT [dbo].[Tbl_NamHoc] ([maNamHoc], [tenNamHoc]) VALUES (N'2019', N'2019-2020')
SET IDENTITY_INSERT [dbo].[Tbl_NgheNghiepCha] ON 

INSERT [dbo].[Tbl_NgheNghiepCha] ([maNgheNghiepCha], [tenNgheNghiepCha]) VALUES (1, N'Nhân Viên Văn Phòng')
INSERT [dbo].[Tbl_NgheNghiepCha] ([maNgheNghiepCha], [tenNgheNghiepCha]) VALUES (2, N'Công Nhân')
INSERT [dbo].[Tbl_NgheNghiepCha] ([maNgheNghiepCha], [tenNgheNghiepCha]) VALUES (3, N'Cán Bộ-Viên Chức Nhà Nước')
INSERT [dbo].[Tbl_NgheNghiepCha] ([maNgheNghiepCha], [tenNgheNghiepCha]) VALUES (4, N'Kinh Doanh')
INSERT [dbo].[Tbl_NgheNghiepCha] ([maNgheNghiepCha], [tenNgheNghiepCha]) VALUES (5, N'Nội Trợ')
INSERT [dbo].[Tbl_NgheNghiepCha] ([maNgheNghiepCha], [tenNgheNghiepCha]) VALUES (6, N'Tự Do')
SET IDENTITY_INSERT [dbo].[Tbl_NgheNghiepCha] OFF
SET IDENTITY_INSERT [dbo].[Tbl_NgheNghiepMe] ON 

INSERT [dbo].[Tbl_NgheNghiepMe] ([maNgheNghiepMe], [tenNgheNghiepMe]) VALUES (1, N'Nhân Viên Văn Phòng')
INSERT [dbo].[Tbl_NgheNghiepMe] ([maNgheNghiepMe], [tenNgheNghiepMe]) VALUES (2, N'Công Nhân')
INSERT [dbo].[Tbl_NgheNghiepMe] ([maNgheNghiepMe], [tenNgheNghiepMe]) VALUES (3, N'Cán Bộ-Viên Chức Nhà Nước')
INSERT [dbo].[Tbl_NgheNghiepMe] ([maNgheNghiepMe], [tenNgheNghiepMe]) VALUES (4, N'Kinh Doanh')
INSERT [dbo].[Tbl_NgheNghiepMe] ([maNgheNghiepMe], [tenNgheNghiepMe]) VALUES (5, N'Nội Trợ')
INSERT [dbo].[Tbl_NgheNghiepMe] ([maNgheNghiepMe], [tenNgheNghiepMe]) VALUES (12, N'Tự Do')
SET IDENTITY_INSERT [dbo].[Tbl_NgheNghiepMe] OFF
SET IDENTITY_INSERT [dbo].[Tbl_PhanCong] ON 

INSERT [dbo].[Tbl_PhanCong] ([Idphancong], [maNamHoc], [maLop], [maLoai], [maGV], [trangThai]) VALUES (10, N'2017', N'M01', N'L01', N'GV02', NULL)
INSERT [dbo].[Tbl_PhanCong] ([Idphancong], [maNamHoc], [maLop], [maLoai], [maGV], [trangThai]) VALUES (11, N'2017', N'M01', N'L01', N'GV03', NULL)
INSERT [dbo].[Tbl_PhanCong] ([Idphancong], [maNamHoc], [maLop], [maLoai], [maGV], [trangThai]) VALUES (12, N'2018', N'M02', N'L02', N'GV04', NULL)
INSERT [dbo].[Tbl_PhanCong] ([Idphancong], [maNamHoc], [maLop], [maLoai], [maGV], [trangThai]) VALUES (13, N'2018', N'M02', N'L02', N'GV05', NULL)
INSERT [dbo].[Tbl_PhanCong] ([Idphancong], [maNamHoc], [maLop], [maLoai], [maGV], [trangThai]) VALUES (14, N'2017', N'M03', N'L03', N'GV20554', NULL)
INSERT [dbo].[Tbl_PhanCong] ([Idphancong], [maNamHoc], [maLop], [maLoai], [maGV], [trangThai]) VALUES (15, N'2017', N'M03', N'L03', N'GV25945', NULL)
SET IDENTITY_INSERT [dbo].[Tbl_PhanCong] OFF
SET IDENTITY_INSERT [dbo].[Tbl_PhanLop] ON 

INSERT [dbo].[Tbl_PhanLop] ([idPhanLop], [maNamHoc], [maLop], [maLoai], [maHS]) VALUES (1, N'2018', N'M01', N'L01', 16)
INSERT [dbo].[Tbl_PhanLop] ([idPhanLop], [maNamHoc], [maLop], [maLoai], [maHS]) VALUES (2, N'2018', N'M01', N'L01', 20)
INSERT [dbo].[Tbl_PhanLop] ([idPhanLop], [maNamHoc], [maLop], [maLoai], [maHS]) VALUES (3, N'2018', N'M01', N'L01', 21)
INSERT [dbo].[Tbl_PhanLop] ([idPhanLop], [maNamHoc], [maLop], [maLoai], [maHS]) VALUES (4, N'2018', N'M01', N'L01', 23)
INSERT [dbo].[Tbl_PhanLop] ([idPhanLop], [maNamHoc], [maLop], [maLoai], [maHS]) VALUES (5, N'2018', N'M02', N'L02', 14)
INSERT [dbo].[Tbl_PhanLop] ([idPhanLop], [maNamHoc], [maLop], [maLoai], [maHS]) VALUES (6, N'2018', N'M02', N'L02', 24)
INSERT [dbo].[Tbl_PhanLop] ([idPhanLop], [maNamHoc], [maLop], [maLoai], [maHS]) VALUES (7, N'2018', N'M03', N'L03', 15)
INSERT [dbo].[Tbl_PhanLop] ([idPhanLop], [maNamHoc], [maLop], [maLoai], [maHS]) VALUES (8, N'2018', N'M04', N'L01', 29)
INSERT [dbo].[Tbl_PhanLop] ([idPhanLop], [maNamHoc], [maLop], [maLoai], [maHS]) VALUES (9, N'2018', N'M04', N'L01', 31)
INSERT [dbo].[Tbl_PhanLop] ([idPhanLop], [maNamHoc], [maLop], [maLoai], [maHS]) VALUES (10, N'2018', N'M05', N'L02', 26)
INSERT [dbo].[Tbl_PhanLop] ([idPhanLop], [maNamHoc], [maLop], [maLoai], [maHS]) VALUES (11, N'2018', N'M06', N'L03', 25)
INSERT [dbo].[Tbl_PhanLop] ([idPhanLop], [maNamHoc], [maLop], [maLoai], [maHS]) VALUES (12, N'2018', N'M07', N'L01', 27)
INSERT [dbo].[Tbl_PhanLop] ([idPhanLop], [maNamHoc], [maLop], [maLoai], [maHS]) VALUES (60, N'2018', N'M06', N'L03', 35)
INSERT [dbo].[Tbl_PhanLop] ([idPhanLop], [maNamHoc], [maLop], [maLoai], [maHS]) VALUES (61, N'2018', N'M07', N'L01', 32)
INSERT [dbo].[Tbl_PhanLop] ([idPhanLop], [maNamHoc], [maLop], [maLoai], [maHS]) VALUES (62, N'2018', N'M05', N'L02', 34)
INSERT [dbo].[Tbl_PhanLop] ([idPhanLop], [maNamHoc], [maLop], [maLoai], [maHS]) VALUES (63, N'2018', N'M18774', N'L03', 33)
SET IDENTITY_INSERT [dbo].[Tbl_PhanLop] OFF
SET IDENTITY_INSERT [dbo].[Tbl_QuanLyHocPhi] ON 

INSERT [dbo].[Tbl_QuanLyHocPhi] ([idQLHP], [tienThangHP], [maLoai]) VALUES (1, 3000000, N'L01')
INSERT [dbo].[Tbl_QuanLyHocPhi] ([idQLHP], [tienThangHP], [maLoai]) VALUES (2, 3500000, N'L02')
INSERT [dbo].[Tbl_QuanLyHocPhi] ([idQLHP], [tienThangHP], [maLoai]) VALUES (3, 4000000, N'L03')
INSERT [dbo].[Tbl_QuanLyHocPhi] ([idQLHP], [tienThangHP], [maLoai]) VALUES (4, 3500000, N'L01')
SET IDENTITY_INSERT [dbo].[Tbl_QuanLyHocPhi] OFF
SET IDENTITY_INSERT [dbo].[Tbl_TaiKhoan] ON 

INSERT [dbo].[Tbl_TaiKhoan] ([maTK], [loaiTK], [matKhau], [maGV]) VALUES (1, N'Admin', N'123456', N'GV01')
INSERT [dbo].[Tbl_TaiKhoan] ([maTK], [loaiTK], [matKhau], [maGV]) VALUES (2, N'Teacher', N'123456', N'GV02')
INSERT [dbo].[Tbl_TaiKhoan] ([maTK], [loaiTK], [matKhau], [maGV]) VALUES (3, N'Teacher', N'123456', N'GV03')
INSERT [dbo].[Tbl_TaiKhoan] ([maTK], [loaiTK], [matKhau], [maGV]) VALUES (4, N'Teacher', N'123456', N'GV04')
INSERT [dbo].[Tbl_TaiKhoan] ([maTK], [loaiTK], [matKhau], [maGV]) VALUES (5, N'Teacher', N'123456', N'GV77696')
INSERT [dbo].[Tbl_TaiKhoan] ([maTK], [loaiTK], [matKhau], [maGV]) VALUES (6, N'Teacher', N'123456', N'GV05')
INSERT [dbo].[Tbl_TaiKhoan] ([maTK], [loaiTK], [matKhau], [maGV]) VALUES (7, N'Teacher', N'123456', N'GV25945')
INSERT [dbo].[Tbl_TaiKhoan] ([maTK], [loaiTK], [matKhau], [maGV]) VALUES (8, N'Teacher', N'123456', N'GV95350')
INSERT [dbo].[Tbl_TaiKhoan] ([maTK], [loaiTK], [matKhau], [maGV]) VALUES (9, N'Teacher', N'123456', N'GV20554')
INSERT [dbo].[Tbl_TaiKhoan] ([maTK], [loaiTK], [matKhau], [maGV]) VALUES (10, N'Teacher', N'123456', N'GV99087')
INSERT [dbo].[Tbl_TaiKhoan] ([maTK], [loaiTK], [matKhau], [maGV]) VALUES (11, N'Teacher', N'123456', N'GV91766')
INSERT [dbo].[Tbl_TaiKhoan] ([maTK], [loaiTK], [matKhau], [maGV]) VALUES (12, N'Teacher', N'123456', N'GV45275')
INSERT [dbo].[Tbl_TaiKhoan] ([maTK], [loaiTK], [matKhau], [maGV]) VALUES (13, N'Teacher', N'123456', N'GV93246')
SET IDENTITY_INSERT [dbo].[Tbl_TaiKhoan] OFF
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

INSERT [dbo].[Tbl_TienLuong] ([maLuong], [maThang], [maNamHoc], [soTienNgay]) VALUES (18, N'01', N'2017', 100000)
INSERT [dbo].[Tbl_TienLuong] ([maLuong], [maThang], [maNamHoc], [soTienNgay]) VALUES (19, N'01', N'2018', 120000)
INSERT [dbo].[Tbl_TienLuong] ([maLuong], [maThang], [maNamHoc], [soTienNgay]) VALUES (20, N'02', N'2017', 100000)
SET IDENTITY_INSERT [dbo].[Tbl_TienLuong] OFF
SET IDENTITY_INSERT [dbo].[Tbl_TonGiao] ON 

INSERT [dbo].[Tbl_TonGiao] ([maTonGiao], [tenTonGiao]) VALUES (1, N'Phật Giáo')
INSERT [dbo].[Tbl_TonGiao] ([maTonGiao], [tenTonGiao]) VALUES (2, N'Công Giáo')
INSERT [dbo].[Tbl_TonGiao] ([maTonGiao], [tenTonGiao]) VALUES (3, N'Cao Đài')
INSERT [dbo].[Tbl_TonGiao] ([maTonGiao], [tenTonGiao]) VALUES (4, N'Hòa Hảo')
INSERT [dbo].[Tbl_TonGiao] ([maTonGiao], [tenTonGiao]) VALUES (5, N'Tin Lành')
INSERT [dbo].[Tbl_TonGiao] ([maTonGiao], [tenTonGiao]) VALUES (6, N'Hồi Giáo')
INSERT [dbo].[Tbl_TonGiao] ([maTonGiao], [tenTonGiao]) VALUES (8, N'Bà La Môn')
SET IDENTITY_INSERT [dbo].[Tbl_TonGiao] OFF
ALTER TABLE [dbo].[Tbl_BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_BaiViet_Tbl_LoaiBaiViet] FOREIGN KEY([maLoai])
REFERENCES [dbo].[Tbl_LoaiBaiViet] ([maLoai])
GO
ALTER TABLE [dbo].[Tbl_BaiViet] CHECK CONSTRAINT [FK_Tbl_BaiViet_Tbl_LoaiBaiViet]
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
ALTER TABLE [dbo].[Tbl_ChiTietHocPhi]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_ChiTietHocPhi_Tbl_HocPhi] FOREIGN KEY([maHP])
REFERENCES [dbo].[Tbl_HocPhi] ([maHP])
GO
ALTER TABLE [dbo].[Tbl_ChiTietHocPhi] CHECK CONSTRAINT [FK_Tbl_ChiTietHocPhi_Tbl_HocPhi]
GO
ALTER TABLE [dbo].[Tbl_ChiTietHocPhi]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_ChiTietHocPhi_Tbl_HocSinh] FOREIGN KEY([maHS])
REFERENCES [dbo].[Tbl_HocSinh] ([maHS])
GO
ALTER TABLE [dbo].[Tbl_ChiTietHocPhi] CHECK CONSTRAINT [FK_Tbl_ChiTietHocPhi_Tbl_HocSinh]
GO
ALTER TABLE [dbo].[Tbl_ChiTietHocPhi]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_ChiTietHocPhi_Tbl_LopHoc] FOREIGN KEY([maLop])
REFERENCES [dbo].[Tbl_LopHoc] ([maLop])
GO
ALTER TABLE [dbo].[Tbl_ChiTietHocPhi] CHECK CONSTRAINT [FK_Tbl_ChiTietHocPhi_Tbl_LopHoc]
GO
ALTER TABLE [dbo].[Tbl_ChiTietHocPhi]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_ChiTietHocPhi_Tbl_QuanLyHocPhi] FOREIGN KEY([idQLHP])
REFERENCES [dbo].[Tbl_QuanLyHocPhi] ([idQLHP])
GO
ALTER TABLE [dbo].[Tbl_ChiTietHocPhi] CHECK CONSTRAINT [FK_Tbl_ChiTietHocPhi_Tbl_QuanLyHocPhi]
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
ALTER TABLE [dbo].[Tbl_CTDiemDanhHS]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_CTDiemDanhHS_Tbl_DiemDanhHS] FOREIGN KEY([maDiemDanhHS])
REFERENCES [dbo].[Tbl_DiemDanhHS] ([maDiemDanhHS])
GO
ALTER TABLE [dbo].[Tbl_CTDiemDanhHS] CHECK CONSTRAINT [FK_Tbl_CTDiemDanhHS_Tbl_DiemDanhHS]
GO
ALTER TABLE [dbo].[Tbl_CTDiemDanhHS]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_CTDiemDanhHS_Tbl_HocSinh] FOREIGN KEY([maHS])
REFERENCES [dbo].[Tbl_HocSinh] ([maHS])
GO
ALTER TABLE [dbo].[Tbl_CTDiemDanhHS] CHECK CONSTRAINT [FK_Tbl_CTDiemDanhHS_Tbl_HocSinh]
GO
ALTER TABLE [dbo].[Tbl_CTDiemDanhHS]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_CTDiemDanhHS_Tbl_LoaiLop] FOREIGN KEY([maLoai])
REFERENCES [dbo].[Tbl_LoaiLop] ([maLoai])
GO
ALTER TABLE [dbo].[Tbl_CTDiemDanhHS] CHECK CONSTRAINT [FK_Tbl_CTDiemDanhHS_Tbl_LoaiLop]
GO
ALTER TABLE [dbo].[Tbl_CTDiemDanhHS]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_CTDiemDanhHS_Tbl_LopHoc] FOREIGN KEY([maLop])
REFERENCES [dbo].[Tbl_LopHoc] ([maLop])
GO
ALTER TABLE [dbo].[Tbl_CTDiemDanhHS] CHECK CONSTRAINT [FK_Tbl_CTDiemDanhHS_Tbl_LopHoc]
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
ALTER TABLE [dbo].[Tbl_DiemDanhHS]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_DiemDanhHS_Tbl_ThangHoc] FOREIGN KEY([maThang])
REFERENCES [dbo].[Tbl_ThangHoc] ([maThang])
GO
ALTER TABLE [dbo].[Tbl_DiemDanhHS] CHECK CONSTRAINT [FK_Tbl_DiemDanhHS_Tbl_ThangHoc]
GO
ALTER TABLE [dbo].[Tbl_GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_GiaoVien_Tbl_DanToc] FOREIGN KEY([maDanToc])
REFERENCES [dbo].[Tbl_DanToc] ([maDanToc])
GO
ALTER TABLE [dbo].[Tbl_GiaoVien] CHECK CONSTRAINT [FK_Tbl_GiaoVien_Tbl_DanToc]
GO
ALTER TABLE [dbo].[Tbl_GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_GiaoVien_Tbl_TonGiao] FOREIGN KEY([maTonGiao])
REFERENCES [dbo].[Tbl_TonGiao] ([maTonGiao])
GO
ALTER TABLE [dbo].[Tbl_GiaoVien] CHECK CONSTRAINT [FK_Tbl_GiaoVien_Tbl_TonGiao]
GO
ALTER TABLE [dbo].[Tbl_HocPhi]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_HocPhi_Tbl_NamHoc] FOREIGN KEY([maNamHoc])
REFERENCES [dbo].[Tbl_NamHoc] ([maNamHoc])
GO
ALTER TABLE [dbo].[Tbl_HocPhi] CHECK CONSTRAINT [FK_Tbl_HocPhi_Tbl_NamHoc]
GO
ALTER TABLE [dbo].[Tbl_HocPhi]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_HocPhi_Tbl_ThangHoc] FOREIGN KEY([maThang])
REFERENCES [dbo].[Tbl_ThangHoc] ([maThang])
GO
ALTER TABLE [dbo].[Tbl_HocPhi] CHECK CONSTRAINT [FK_Tbl_HocPhi_Tbl_ThangHoc]
GO
ALTER TABLE [dbo].[Tbl_HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_HocSinh_Tbl_DanToc] FOREIGN KEY([maDanToc])
REFERENCES [dbo].[Tbl_DanToc] ([maDanToc])
GO
ALTER TABLE [dbo].[Tbl_HocSinh] CHECK CONSTRAINT [FK_Tbl_HocSinh_Tbl_DanToc]
GO
ALTER TABLE [dbo].[Tbl_HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_HocSinh_Tbl_LoaiLop] FOREIGN KEY([maLoai])
REFERENCES [dbo].[Tbl_LoaiLop] ([maLoai])
GO
ALTER TABLE [dbo].[Tbl_HocSinh] CHECK CONSTRAINT [FK_Tbl_HocSinh_Tbl_LoaiLop]
GO
ALTER TABLE [dbo].[Tbl_HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_HocSinh_Tbl_NgheNghiepCha] FOREIGN KEY([maNgheNghiepCha])
REFERENCES [dbo].[Tbl_NgheNghiepCha] ([maNgheNghiepCha])
GO
ALTER TABLE [dbo].[Tbl_HocSinh] CHECK CONSTRAINT [FK_Tbl_HocSinh_Tbl_NgheNghiepCha]
GO
ALTER TABLE [dbo].[Tbl_HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_HocSinh_Tbl_NgheNghiepMe] FOREIGN KEY([maNgheNghiepMe])
REFERENCES [dbo].[Tbl_NgheNghiepMe] ([maNgheNghiepMe])
GO
ALTER TABLE [dbo].[Tbl_HocSinh] CHECK CONSTRAINT [FK_Tbl_HocSinh_Tbl_NgheNghiepMe]
GO
ALTER TABLE [dbo].[Tbl_HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_HocSinh_Tbl_TonGiao] FOREIGN KEY([maTonGiao])
REFERENCES [dbo].[Tbl_TonGiao] ([maTonGiao])
GO
ALTER TABLE [dbo].[Tbl_HocSinh] CHECK CONSTRAINT [FK_Tbl_HocSinh_Tbl_TonGiao]
GO
ALTER TABLE [dbo].[Tbl_LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_LopHoc_Tbl_LoaiLop] FOREIGN KEY([maLoai])
REFERENCES [dbo].[Tbl_LoaiLop] ([maLoai])
GO
ALTER TABLE [dbo].[Tbl_LopHoc] CHECK CONSTRAINT [FK_Tbl_LopHoc_Tbl_LoaiLop]
GO
ALTER TABLE [dbo].[Tbl_LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_LopHoc_Tbl_NamHoc] FOREIGN KEY([maNamHoc])
REFERENCES [dbo].[Tbl_NamHoc] ([maNamHoc])
GO
ALTER TABLE [dbo].[Tbl_LopHoc] CHECK CONSTRAINT [FK_Tbl_LopHoc_Tbl_NamHoc]
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
ALTER TABLE [dbo].[Tbl_QuanLyHocPhi]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_QuanLyHocPhi_Tbl_LoaiLop] FOREIGN KEY([maLoai])
REFERENCES [dbo].[Tbl_LoaiLop] ([maLoai])
GO
ALTER TABLE [dbo].[Tbl_QuanLyHocPhi] CHECK CONSTRAINT [FK_Tbl_QuanLyHocPhi_Tbl_LoaiLop]
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
