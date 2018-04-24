USE [QuanLyMamNon]
GO
/****** Object:  Table [dbo].[Tbl_BaiViet]    Script Date: 4/24/2018 12:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_BaiViet](
	[maBaiViet] [int] IDENTITY(1,1) NOT NULL,
	[noiDung] [nvarchar](2000) NULL,
	[hinhBV] [nvarchar](500) NULL,
	[maGV] [nvarchar](10) NULL,
	[ngayDang] [datetime] NULL,
	[tenBaiViet] [nvarchar](80) NOT NULL,
	[maLoai] [int] NULL,
 CONSTRAINT [PK_Tbl_BaiViet] PRIMARY KEY CLUSTERED 
(
	[maBaiViet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_ChiTietDiemDanh]    Script Date: 4/24/2018 12:35:21 PM ******/
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
/****** Object:  Table [dbo].[Tbl_ChiTietLuong]    Script Date: 4/24/2018 12:35:21 PM ******/
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
/****** Object:  Table [dbo].[Tbl_CTDiemDanhHS]    Script Date: 4/24/2018 12:35:21 PM ******/
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
/****** Object:  Table [dbo].[Tbl_DanToc]    Script Date: 4/24/2018 12:35:21 PM ******/
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
/****** Object:  Table [dbo].[Tbl_DiemDanh]    Script Date: 4/24/2018 12:35:21 PM ******/
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
/****** Object:  Table [dbo].[Tbl_DiemDanhHS]    Script Date: 4/24/2018 12:35:21 PM ******/
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
/****** Object:  Table [dbo].[Tbl_GiaoVien]    Script Date: 4/24/2018 12:35:21 PM ******/
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
/****** Object:  Table [dbo].[Tbl_HocPhi]    Script Date: 4/24/2018 12:35:21 PM ******/
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
/****** Object:  Table [dbo].[Tbl_HocSinh]    Script Date: 4/24/2018 12:35:21 PM ******/
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
/****** Object:  Table [dbo].[Tbl_LoaiBaiViet]    Script Date: 4/24/2018 12:35:21 PM ******/
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
/****** Object:  Table [dbo].[Tbl_LoaiLop]    Script Date: 4/24/2018 12:35:21 PM ******/
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
/****** Object:  Table [dbo].[Tbl_LopHoc]    Script Date: 4/24/2018 12:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_LopHoc](
	[maLop] [nvarchar](10) NOT NULL,
	[tenLop] [nvarchar](50) NOT NULL,
	[soLuongHS] [int] NOT NULL,
	[maLoai] [nvarchar](10) NOT NULL,
	[maNamHoc] [nvarchar](10) NULL,
 CONSTRAINT [PK_Tbl_LopHoc] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_NamHoc]    Script Date: 4/24/2018 12:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_NamHoc](
	[maNamHoc] [nvarchar](10) NOT NULL,
	[tenNamHoc] [nvarchar](20) NOT NULL,
	[tienThang] [float] NULL,
 CONSTRAINT [PK_Tbl_NamHoc] PRIMARY KEY CLUSTERED 
(
	[maNamHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_NgheNghiep]    Script Date: 4/24/2018 12:35:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_NgheNghiep](
	[maNgheNghiep] [int] IDENTITY(1,1) NOT NULL,
	[tenNgheNghiep] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_NgheNghiep] PRIMARY KEY CLUSTERED 
(
	[maNgheNghiep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_PhanCong]    Script Date: 4/24/2018 12:35:21 PM ******/
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
/****** Object:  Table [dbo].[Tbl_PhanLop]    Script Date: 4/24/2018 12:35:21 PM ******/
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
/****** Object:  Table [dbo].[Tbl_TaiKhoan]    Script Date: 4/24/2018 12:35:21 PM ******/
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
/****** Object:  Table [dbo].[Tbl_ThangHoc]    Script Date: 4/24/2018 12:35:21 PM ******/
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
/****** Object:  Table [dbo].[Tbl_TienLuong]    Script Date: 4/24/2018 12:35:21 PM ******/
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
/****** Object:  Table [dbo].[Tbl_TonGiao]    Script Date: 4/24/2018 12:35:21 PM ******/
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

INSERT [dbo].[Tbl_BaiViet] ([maBaiViet], [noiDung], [hinhBV], [maGV], [ngayDang], [tenBaiViet], [maLoai]) VALUES (1, N'Đời Thay Đổi Khi Ta Thay Đồ

Nếu bạn luôn tâm niệm định kiến là những cuốn sách Thời trang thường sẽ dày đặc hình ảnh đẹp đẽ nhưng lại vô cùng ít ỏi về mặt thông tin nội dung, và vì thế, không đóng góp gì nhiều trong việc giúp người đọc thay đổi ngoại hình cũng như phát triển phong cách cá nhân – thì quả thật là bạn đã nhầm.

Những cuốn sách Thời trang “kiểu mới” giờ đây tập trung hết mức vào việc xây dựng nội dung hay ho với một mục tiêu tối thượng: không chỉ đưa ra những hình mẫu thời trang đẹp đẽ, mà còn hướng dẫn phương thức cụ thể để người đọc dễ dàng đạt được vẻ đẹp và sự tự tin đó. Mang những đặc điểm khác biệt là vô cùng đầu tư vào nội dung: chủ yếu đưa ra những quan điểm, liệt kê các bí quyết và cách thức, công phá những định kiến và luôn luôn hướng tới việc làm thay đổi tư duy trước khi dạy bạn nên phối chiếc chân váy này với chiếc áo sơ-mi kia.. sách Thời trang thời nay xứng đáng được xem là những cuốn sách self-help thực thụ.', N'11-53329.jpg', N'GV01', CAST(N'2017-02-09 00:00:00.000' AS DateTime), N'Đời thay đổi khi ta thay đồ', 1)
INSERT [dbo].[Tbl_BaiViet] ([maBaiViet], [noiDung], [hinhBV], [maGV], [ngayDang], [tenBaiViet], [maLoai]) VALUES (2, N'Dế Mèn phiêu lưu ký là tác phẩm văn xuôi đặc sắc và nổi tiếng nhất của Tô Hoài viết về loài vật, dành cho lứa tuổi thiếu nhi. Ban đầu truyện có tên là "Con dế mèn" (chính là ba chương đầu của truyện) do nhà xuất bản Tân Dân, Hà Nội phát hành năm 1941. Sau đó, được sự ủng hộ nhiệt tình của nhân dân, Tô Hoài viết thêm truyện "Dế Mèn phiêu lưu ký" (là bảy chương cuối của chuyện". Năm 1955, ông mới gộp hai chuyện vào với nhau để thành truyện "Dế mèn phiêu lưu ký" như ngày nay. Truyện đã được đưa vào chương trình học lớp 6 học kì 2 môn Ngữ Văn của Việt Nam.

', N'demen.jpg', N'GV02', CAST(N'2018-12-03 00:00:00.000' AS DateTime), N'Dế Mèn Phiêu Lưu Ký', 1)
INSERT [dbo].[Tbl_BaiViet] ([maBaiViet], [noiDung], [hinhBV], [maGV], [ngayDang], [tenBaiViet], [maLoai]) VALUES (3, N'Giáo án mầm non theo chủ đề dành cho bé 5 tuổi (giáo án mầm non lớp lá) bao gồm các hoạt động giáo dục trẻ thông qua những hát, vẽ, múa, giáo dục thể chất… giúp các bé bước đầu làm quen với các kiến thức xã hội xung quanh cuộc sống như: làm quen với bảng chữ cái, học về luật lệ giao thông khi ra đường, phát triển vận động khi tham gia các trò chơi.', N'16-cogiao282.jpg', N'GV03', CAST(N'2018-04-02 00:00:00.000' AS DateTime), N'Trọn bộ giáo án mầm non dành cho lớp 5 tuổi', 2)
INSERT [dbo].[Tbl_BaiViet] ([maBaiViet], [noiDung], [hinhBV], [maGV], [ngayDang], [tenBaiViet], [maLoai]) VALUES (5, N'Lời chúc Tết giống như một món quà tinh thần mang ý nghĩa vào dịp đầu năm mới. Bất kỳ ai được nhận món quà này từ một đứa trẻ thì chắc hẳn sẽ càng thấy ấm áp và hạnh phúc hơn nhiều.', N'Nhung-cau-chuc-tet-de-thuong-va-y-nghia-cho-tre-01-550x320.jpg', N'GV04', CAST(N'2018-02-02 00:00:00.000' AS DateTime), N'Dạy trẻ những câu chúc Tết hay', 3)
INSERT [dbo].[Tbl_BaiViet] ([maBaiViet], [noiDung], [hinhBV], [maGV], [ngayDang], [tenBaiViet], [maLoai]) VALUES (6, N'Lời chúc Tết giống như một món quà tinh thần mang ý nghĩa vào dịp đầu năm mới. Bất kỳ ai được nhận món quà này từ một đứa trẻ thì chắc hẳn sẽ càng thấy ấm áp và hạnh phúc hơn nhiều.', N'Nhung-cau-chuc-tet-de-thuong-va-y-nghia-cho-tre-01-550x320.jpg', N'GV02', CAST(N'2018-02-02 00:00:00.000' AS DateTime), N'Dạy trẻ những câu chúc Tết hay', NULL)
SET IDENTITY_INSERT [dbo].[Tbl_BaiViet] OFF
SET IDENTITY_INSERT [dbo].[Tbl_ChiTietDiemDanh] ON 

INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (237, N'Có', 40, N'GV02', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (238, N'Có', 40, N'GV03', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (239, N'Vắng', 41, N'GV02', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (240, N'Vắng', 41, N'GV03', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (248, N'Có', 44, N'GV02', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (249, N'Vắng', 44, N'GV03', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (250, N'Có', 44, N'GV04', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (251, N'Có', 44, N'GV05', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (252, N'Có', 45, N'GV02', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (253, N'Có', 45, N'GV03', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (254, N'Có', 45, N'GV04', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (255, N'Có', 45, N'GV05', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (256, N'Vắng', 45, N'GV20554', N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (257, N'Có', 45, N'GV77696', N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (258, N'Có', 46, N'GV02', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (259, N'Có', 46, N'GV03', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (260, N'Có', 46, N'GV04', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (261, N'Vắng', 46, N'GV05', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (262, N'Có', 46, N'GV20554', N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (263, N'Có', 46, N'GV77696', N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (264, N'Có', 47, N'GV02', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (265, N'Có', 47, N'GV03', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (266, N'Có', 47, N'GV04', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (267, N'Có', 47, N'GV05', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (268, N'Có', 47, N'GV20554', N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (269, N'Có', 47, N'GV77696', N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (270, N'Có', 47, N'GV25945', N'L01', N'M04')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (271, N'Có', 48, N'GV02', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (272, N'Có', 48, N'GV03', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (273, N'Có', 48, N'GV04', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (274, N'Có', 48, N'GV05', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (275, N'Có', 48, N'GV20554', N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (276, N'Có', 48, N'GV77696', N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (277, N'Có', 48, N'GV25945', N'L01', N'M04')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (278, N'Có', 49, N'GV02', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (279, N'Có', 49, N'GV03', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (280, N'Có', 49, N'GV04', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (281, N'Có', 49, N'GV05', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (282, N'Có', 49, N'GV20554', N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (283, N'Có', 49, N'GV77696', N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (284, N'Có', 49, N'GV25945', N'L01', N'M04')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (285, N'Có', 50, N'GV02', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (286, N'Có', 50, N'GV03', N'L01', N'M01')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (287, N'Có', 50, N'GV04', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (288, N'Có', 50, N'GV05', N'L02', N'M02')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (289, N'Có', 50, N'GV20554', N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (290, N'Có', 50, N'GV77696', N'L03', N'M03')
INSERT [dbo].[Tbl_ChiTietDiemDanh] ([maChiTietDiemDanh], [trangThai], [maDiemDanh], [maGV], [maLoai], [maLop]) VALUES (291, N'Có', 50, N'GV25945', N'L01', N'M04')
SET IDENTITY_INSERT [dbo].[Tbl_ChiTietDiemDanh] OFF
SET IDENTITY_INSERT [dbo].[Tbl_ChiTietLuong] ON 

INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (40, 15, 6, 2000000, N'GV02')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (41, 15, 5, 1500000, N'GV03')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (42, 15, 6, 1000000, N'GV04')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (43, 15, 5, 1000000, N'GV05')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (44, 15, 4, 2000000, N'GV20554')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (45, 15, 5, 2000000, N'GV77696')
INSERT [dbo].[Tbl_ChiTietLuong] ([maChiTietLuong], [maLuong], [soNgayLam], [soTien], [maGV]) VALUES (46, 15, 3, 1000000, N'GV25945')
SET IDENTITY_INSERT [dbo].[Tbl_ChiTietLuong] OFF
SET IDENTITY_INSERT [dbo].[Tbl_CTDiemDanhHS] ON 

INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (0, N'Có', 1, 14, N'L01', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (1, N'Vắng', 9, 16, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (2, N'Vắng', 9, 20, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (3, N'Vắng', 9, 21, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (4, N'Có', 9, 23, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (5, N'Có', 9, 14, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (6, N'Có', 9, 24, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (7, N'Có', 9, 25, N'L03', N'M06')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (8, N'Có', 9, 15, N'L03', N'M03')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (9, N'Có', 9, 26, N'L02', N'M05')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (10, N'Có', 10, 16, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (11, N'Có', 10, 20, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (12, N'Có', 10, 21, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (13, N'Có', 10, 23, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (14, N'Có', 10, 14, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (15, N'Có', 10, 24, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (16, N'Có', 10, 25, N'L03', N'M06')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (17, N'Có', 10, 15, N'L03', N'M03')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (18, N'Có', 10, 29, N'L01', N'M04')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (19, N'Có', 10, 26, N'L02', N'M05')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (20, N'Có', 10, 27, N'L01', N'M07')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (22, N'Có', 11, 16, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (23, N'Có', 11, 20, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (24, N'Có', 11, 21, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (25, N'Có', 11, 23, N'L01', N'M01')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (26, N'Có', 11, 14, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (27, N'Có', 11, 24, N'L02', N'M02')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (28, N'Có', 11, 25, N'L03', N'M06')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (29, N'Có', 11, 15, N'L03', N'M03')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (30, N'Có', 11, 29, N'L01', N'M04')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (31, N'Có', 11, 31, N'L01', N'M04')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (32, N'Có', 11, 26, N'L02', N'M05')
INSERT [dbo].[Tbl_CTDiemDanhHS] ([maCTDiemDanhHS], [trangThai], [maDiemDanhHS], [maHS], [maLoai], [maLop]) VALUES (33, N'Có', 11, 27, N'L01', N'M07')
SET IDENTITY_INSERT [dbo].[Tbl_CTDiemDanhHS] OFF
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

INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'30', N'03', 40)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'31', N'03', 41)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'01', N'04', 42)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'08', N'04', 43)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'19', N'04', 44)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'20', N'04', 45)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'23', N'04', 46)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'24', N'04', 47)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'11', N'04', 48)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'05', N'04', 49)
INSERT [dbo].[Tbl_DiemDanh] ([maNamHoc], [ngayDiemDanh], [maThang], [maDiemDanh]) VALUES (N'2018', N'26', N'03', 50)
SET IDENTITY_INSERT [dbo].[Tbl_DiemDanh] OFF
SET IDENTITY_INSERT [dbo].[Tbl_DiemDanhHS] ON 

INSERT [dbo].[Tbl_DiemDanhHS] ([maDiemDanhHS], [maNamHoc], [ngayDiemDanh], [maThang]) VALUES (1, N'2018', N'08', N'04')
INSERT [dbo].[Tbl_DiemDanhHS] ([maDiemDanhHS], [maNamHoc], [ngayDiemDanh], [maThang]) VALUES (9, N'2018', N'15', N'04')
INSERT [dbo].[Tbl_DiemDanhHS] ([maDiemDanhHS], [maNamHoc], [ngayDiemDanh], [maThang]) VALUES (10, N'2018', N'16', N'04')
INSERT [dbo].[Tbl_DiemDanhHS] ([maDiemDanhHS], [maNamHoc], [ngayDiemDanh], [maThang]) VALUES (11, N'2018', N'18', N'04')
SET IDENTITY_INSERT [dbo].[Tbl_DiemDanhHS] OFF
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV01', N'Đại Học', N'Lê Võ Tài Trí', N'01658788708', CAST(N'1996-05-01 00:00:00.000' AS DateTime), N'nam@gmail.com', N'32 Lê lợi', N'Nam', N'Image.jpg', NULL, NULL)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV02', N'Đại Học', N'Lê Nguyễn Trung Nhân', N'01634799710', CAST(N'1996-05-01 00:00:00.000' AS DateTime), N'nhan@gmail.com', N'45 Bình Thạnh', N'Nam', N'dat.jpg', NULL, NULL)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV03', N'Cao Đẳng', N'Hà Tuấn Lâm', N'01468200139', CAST(N'1996-05-01 00:00:00.000' AS DateTime), N'lam@gmail.com', N'63 Gò Vấp', N'Nữ', N'dat.jpg', NULL, NULL)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV04', N'Trung Cấp', N'Bùi Hoàng Nam', N'01489725148', CAST(N'1996-05-01 00:00:00.000' AS DateTime), N'nam@gmail.com', N'96 Quận 10', N'Nam', N'Image.jpg', NULL, NULL)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV05', N'Trung Cấp', N'Nguyễn Đình Khá', N'0165789742', CAST(N'1986-02-02 00:00:00.000' AS DateTime), N'Kha@gmail.com', N'456 Quang Trung Gò Vấp', N'Nam', N'dat.jpg', NULL, NULL)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV20554', N'Đại Học', N'Quách Quốc Quý', N'01239789456', CAST(N'1992-07-03 00:00:00.000' AS DateTime), N'Quy@gmail.com', N'96 Quang Trung , Gò Vấp', N'Nam', N'dat.jpg', NULL, NULL)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV25945', N'Trung Cấp', N'Trần Thanh Hiệp', N'0165789708', CAST(N'1990-04-04 00:00:00.000' AS DateTime), N'Hiep@gmail.com', N'65 Thủ Đức', N'Nam', N'dat.jpg', NULL, NULL)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV45275', N'Đại Học', N'Nguyễn Văn Tèo', N'0123456789', CAST(N'1994-03-01 00:00:00.000' AS DateTime), N'Teo@gmail.com', N'34 Quang Trung', N'Nam', N'dat.jpg', NULL, NULL)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV77696', N'Đại Học', N'Đặng Lê Diệu Ly', N'0157897426', CAST(N'1994-12-20 00:00:00.000' AS DateTime), N'ly@gmail.com', N'123 Trần Văn Đang', N'Nữ', N'dat.jpg', NULL, NULL)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV91766', N'Đại Học', N'Trịnh Thiên Ân', N'123456789', CAST(N'1980-03-21 00:00:00.000' AS DateTime), N'an@gmail.com', N'65 Lê Lợi', N'Nam', N'dat.jpg', NULL, NULL)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV93246', N'Đại Học', N'Nguyễn Văn B', N'0123456789', CAST(N'1993-02-01 00:00:00.000' AS DateTime), N'B@gmail.com', N'99 Quang Trung', N'Nam', N'dat.jpg', 3, 11)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV95350', N'Đại Học', N'Nguyễn Anh phong', N'0157742159', CAST(N'1996-02-04 00:00:00.000' AS DateTime), N'Phong@gmail.com', N'96 Quận 3', N'Nam', N'dat.jpg', NULL, NULL)
INSERT [dbo].[Tbl_GiaoVien] ([maGV], [trinhDo], [hoTen], [soDT], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maTonGiao], [maDanToc]) VALUES (N'GV99087', N'Đại Học', N'Lê Văn Tèo', N'0123456789', CAST(N'1986-03-01 00:00:00.000' AS DateTime), N'Teo@gmail.com', N'67 Quang Trung Lê Lợi', N'Nam', N'dat.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_HocSinh] ON 

INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (14, N'Nguyễn Tuấn Kiệt', N'Trần Thị Bé', N'Nguyễn Hoàng Bách', N'0165799704', CAST(N'2013-06-09 00:00:00.000' AS DateTime), N'kiet@gmail.com', N'1/25 Gò Vấp', N'Nam', NULL, N'L02', N'Không có', N'Dân Tộc Hoa', N'Nhân Viên Văn Phòng', N'Nội trợ')
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (15, N'Bùi Hoàng', N'Nguyễn Thị Thoa', N'Bùi Thị Lệ', N'01664879925', CAST(N'2013-02-20 00:00:00.000' AS DateTime), N'Hoang@gmail.com', N'89 Võ Văn kiệt Quận 7', N'Nữ', N'Image.jpg', N'L03', N'Phật Giáo', N'Dân Tộc Kinh', N'Nhân Viên Văn Phòng', N'Nội trợ')
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (16, N'Đặng Văn Ngữ', N'Nguyễn Thị A', N'Đặng Lê Diệu Ly', N'012578919', CAST(N'2015-09-22 00:00:00.000' AS DateTime), N'Ngu@gmail.com', N'65 Quận 7', N'Nữ', N'Image.jpg', N'L01', N'Thiên Chúa Giáo', N'Khác', N'Nhân Viên Văn Phòng', N'Nhân Viên Văn Phòng')
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (20, N'Nguyễn Đình Nam', N'Hà Thị Phương', N'Nguyễn Đình Khoa', N'0123456789', CAST(N'2014-10-30 00:00:00.000' AS DateTime), N'khoa@gmail.com', N'26 lê lợi', N'Nam', NULL, N'L01', N'Phật Giáo', N'Dân Tộc Kinh', N'Nhân Viên Văn Phòng', N'Nội trợ')
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (21, N'Trần Văn Tuấn', N'Lê Ngọc Diệp', N'Trần Hải Dương', N'0919321999', CAST(N'2015-03-02 00:00:00.000' AS DateTime), N'duong@gmail.com', N'146 Lê Lợi', N'Nam', NULL, N'L01', N'Phật Giáo', N'Dân Tộc Kinh', N'Nhân Viên Văn Phòng', N'Nội trợ')
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (23, N'Nguyễn Tuấn Tú', N'Nguyễn Thị Hoa', N'Nguyễn Tuấn Anh', N'01236555595', CAST(N'2015-12-06 00:00:00.000' AS DateTime), N'anh12@gmail.com', N'123 Lê Lai Gò Vấp', N'Nam', NULL, N'L01', N'Thiên Chúa Giáo', N'Kinh', N'Kinh Doanh', N'Nội Trợ')
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (24, N'Nguyễn Văn Nam', N'Lê Thị Phụng', N'Nguyễn Văn Thuyết', N'01235555858', CAST(N'2014-03-12 00:00:00.000' AS DateTime), N'thuyet0909@gmal.com', N'36 Lê Lai', N'Nữ', NULL, N'L02', N'Phật Giáo', N'Hoa', N'Công Nhân', N'Nội Trợ')
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (25, N'Lê Trung Hiếu', N'Bùi Hà My', N'Đen Vâu', N'09662626885', CAST(N'2012-12-02 00:00:00.000' AS DateTime), N'vau@gmail.com', N'123 Lê Lai Gò Vấp', N'Nữ', NULL, N'L03', N'Phật Giáo', N'Kinh', N'Công Nhân', N'Nhân Viên Văn Phòng')
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (26, N'Bùi Thành Công ', N'Nguyễn Thị Hoa Huỳnh', N'Bùi Nguyễn Hà My', N'0932427796', CAST(N'2013-10-28 00:00:00.000' AS DateTime), N'hamy@gmail.com', N'889 Lê Đức Thọ', N'Nữ', NULL, N'L02', N'Phật Giáo', N'Hoa', N'Công Nhân', N'Công Nhân')
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (27, N'Huỳnh Hưng', N'Nguyễn Hiền Mai', N'Huỳnh Hữu Nghĩa', N'01258585852', CAST(N'2016-03-25 00:00:00.000' AS DateTime), N'nghia@gmail.com', N'242 Lê Lợi', N'Nữ', NULL, N'L01', N'Thiên Chúa Giáo', N'Kinh', N'Công Nhân', N'Công Nhân')
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (28, N'Huỳnh Hưng', N'Nguyễn Hiền Mai', N'Huỳnh Hữu Nghĩa', N'01258585852', CAST(N'2016-03-25 00:00:00.000' AS DateTime), N'nghia@gmail.com', N'242 Lê Lợi', N'Nữ', NULL, N'L01', N'Thiên Chúa Giáo', N'Kinh', N'Công Nhân', N'Công Nhân')
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (29, N'Trung Hiếu', N'Lê Thị Đẹp', N'Trung Trí Nhân', N'09232528479', CAST(N'2015-12-03 00:00:00.000' AS DateTime), N'nhan@gmail.com', N'123 Bạch Đằng ', N'Nam', NULL, N'L01', N'Thiên Chúa Giáo', N'Hoa', N'Nhân Viên Văn Phòng', N'Nhân Viên Văn Phòng')
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (31, N'Pham Tấn Tạ', N'Nguyễn Thị Nam', N'Pham Tấn Chiến', N'0167801597', CAST(N'2016-01-05 00:00:00.000' AS DateTime), N'Chien@gmail.com', N'69 Nam Kỳ khởi nghĩa', N'Nam', NULL, N'L01', N'Phật Giáo', N'Kinh', N'Công Nhân', N'Công Nhân')
INSERT [dbo].[Tbl_HocSinh] ([maHS], [hoTenCha], [hoTenMe], [hoTen], [soDTNha], [ngaySinh], [email], [diaChi], [gioiTinh], [hinhAnh], [maLoai], [tonGiao], [danToc], [ngheNghiepCha], [ngheNghiepMe]) VALUES (32, N'Nhân Nghĩa', N'Nguyễn Hồng', N'Nhân Tài', N'0212585545877', CAST(N'2014-10-03 00:00:00.000' AS DateTime), N'tai@gmail.com', N'234 vũ tùng', N'Nữ', NULL, N'L01', N'Thiên Chúa Giáo', N'Kinh', N'Nhân Viên Văn Phòng', N'Kinh Doanh')
SET IDENTITY_INSERT [dbo].[Tbl_HocSinh] OFF
SET IDENTITY_INSERT [dbo].[Tbl_LoaiBaiViet] ON 

INSERT [dbo].[Tbl_LoaiBaiViet] ([maLoai], [tenLoai]) VALUES (1, N'Phụ Huynh Mầm Non')
INSERT [dbo].[Tbl_LoaiBaiViet] ([maLoai], [tenLoai]) VALUES (2, N'Giáo Viên Mầm Non')
INSERT [dbo].[Tbl_LoaiBaiViet] ([maLoai], [tenLoai]) VALUES (3, N'Quản Lý Mầm Non')
SET IDENTITY_INSERT [dbo].[Tbl_LoaiBaiViet] OFF
INSERT [dbo].[Tbl_LoaiLop] ([maLoai], [tenLoai], [soLuongLop], [hocPhi]) VALUES (N'L01', N'Mầm', 4, 2000000)
INSERT [dbo].[Tbl_LoaiLop] ([maLoai], [tenLoai], [soLuongLop], [hocPhi]) VALUES (N'L02', N'Chồi', 4, 2500000)
INSERT [dbo].[Tbl_LoaiLop] ([maLoai], [tenLoai], [soLuongLop], [hocPhi]) VALUES (N'L03', N'Lá', 4, 3000000)
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maLoai], [maNamHoc]) VALUES (N'M01', N'Mầm1', 20, N'L01', N'2017')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maLoai], [maNamHoc]) VALUES (N'M02', N'Chồi1', 20, N'L02', N'2017')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maLoai], [maNamHoc]) VALUES (N'M03', N'Lá1', 20, N'L03', N'2018')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maLoai], [maNamHoc]) VALUES (N'M04', N'Mầm2', 20, N'L01', N'2018')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maLoai], [maNamHoc]) VALUES (N'M05', N'Chồi2', 20, N'L02', N'2018')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maLoai], [maNamHoc]) VALUES (N'M06', N'Lá2', 20, N'L03', N'2017')
INSERT [dbo].[Tbl_LopHoc] ([maLop], [tenLop], [soLuongHS], [maLoai], [maNamHoc]) VALUES (N'M07', N'Mầm3', 20, N'L01', N'2018')
INSERT [dbo].[Tbl_NamHoc] ([maNamHoc], [tenNamHoc], [tienThang]) VALUES (N'2017', N'2017-2018', NULL)
INSERT [dbo].[Tbl_NamHoc] ([maNamHoc], [tenNamHoc], [tienThang]) VALUES (N'2018', N'2018-2019', 1000000)
INSERT [dbo].[Tbl_NamHoc] ([maNamHoc], [tenNamHoc], [tienThang]) VALUES (N'2019', N'2019-2020', 1000000)
SET IDENTITY_INSERT [dbo].[Tbl_NgheNghiep] ON 

INSERT [dbo].[Tbl_NgheNghiep] ([maNgheNghiep], [tenNgheNghiep]) VALUES (1, N'Nhân Viên Văn Phòng')
INSERT [dbo].[Tbl_NgheNghiep] ([maNgheNghiep], [tenNgheNghiep]) VALUES (2, N'Công Nhân')
INSERT [dbo].[Tbl_NgheNghiep] ([maNgheNghiep], [tenNgheNghiep]) VALUES (3, N'Cán Bộ-Viên Chức Nhà Nước')
INSERT [dbo].[Tbl_NgheNghiep] ([maNgheNghiep], [tenNgheNghiep]) VALUES (4, N'Kinh Doanh')
INSERT [dbo].[Tbl_NgheNghiep] ([maNgheNghiep], [tenNgheNghiep]) VALUES (5, N'Nội Trợ')
INSERT [dbo].[Tbl_NgheNghiep] ([maNgheNghiep], [tenNgheNghiep]) VALUES (11, N'Tự Do')
SET IDENTITY_INSERT [dbo].[Tbl_NgheNghiep] OFF
INSERT [dbo].[Tbl_PhanCong] ([maNamHoc], [maLop], [maLoai], [maGV], [trangThai]) VALUES (N'2018', N'M01', N'L01', N'GV02', NULL)
INSERT [dbo].[Tbl_PhanCong] ([maNamHoc], [maLop], [maLoai], [maGV], [trangThai]) VALUES (N'2018', N'M01', N'L01', N'GV03', NULL)
INSERT [dbo].[Tbl_PhanCong] ([maNamHoc], [maLop], [maLoai], [maGV], [trangThai]) VALUES (N'2018', N'M02', N'L02', N'GV04', NULL)
INSERT [dbo].[Tbl_PhanCong] ([maNamHoc], [maLop], [maLoai], [maGV], [trangThai]) VALUES (N'2018', N'M02', N'L02', N'GV05', NULL)
INSERT [dbo].[Tbl_PhanCong] ([maNamHoc], [maLop], [maLoai], [maGV], [trangThai]) VALUES (N'2018', N'M03', N'L03', N'GV20554', NULL)
INSERT [dbo].[Tbl_PhanCong] ([maNamHoc], [maLop], [maLoai], [maGV], [trangThai]) VALUES (N'2018', N'M03', N'L03', N'GV77696', NULL)
INSERT [dbo].[Tbl_PhanCong] ([maNamHoc], [maLop], [maLoai], [maGV], [trangThai]) VALUES (N'2018', N'M04', N'L01', N'GV25945', NULL)
INSERT [dbo].[Tbl_PhanLop] ([maNamHoc], [maLop], [maLoai], [maHS]) VALUES (N'2017', N'M01', N'L01', 16)
INSERT [dbo].[Tbl_PhanLop] ([maNamHoc], [maLop], [maLoai], [maHS]) VALUES (N'2017', N'M01', N'L01', 20)
INSERT [dbo].[Tbl_PhanLop] ([maNamHoc], [maLop], [maLoai], [maHS]) VALUES (N'2017', N'M01', N'L01', 21)
INSERT [dbo].[Tbl_PhanLop] ([maNamHoc], [maLop], [maLoai], [maHS]) VALUES (N'2017', N'M01', N'L01', 23)
INSERT [dbo].[Tbl_PhanLop] ([maNamHoc], [maLop], [maLoai], [maHS]) VALUES (N'2017', N'M02', N'L02', 14)
INSERT [dbo].[Tbl_PhanLop] ([maNamHoc], [maLop], [maLoai], [maHS]) VALUES (N'2017', N'M02', N'L02', 24)
INSERT [dbo].[Tbl_PhanLop] ([maNamHoc], [maLop], [maLoai], [maHS]) VALUES (N'2017', N'M06', N'L03', 25)
INSERT [dbo].[Tbl_PhanLop] ([maNamHoc], [maLop], [maLoai], [maHS]) VALUES (N'2018', N'M03', N'L03', 15)
INSERT [dbo].[Tbl_PhanLop] ([maNamHoc], [maLop], [maLoai], [maHS]) VALUES (N'2018', N'M04', N'L01', 29)
INSERT [dbo].[Tbl_PhanLop] ([maNamHoc], [maLop], [maLoai], [maHS]) VALUES (N'2018', N'M04', N'L01', 31)
INSERT [dbo].[Tbl_PhanLop] ([maNamHoc], [maLop], [maLoai], [maHS]) VALUES (N'2018', N'M05', N'L02', 26)
INSERT [dbo].[Tbl_PhanLop] ([maNamHoc], [maLop], [maLoai], [maHS]) VALUES (N'2018', N'M07', N'L01', 27)
INSERT [dbo].[Tbl_PhanLop] ([maNamHoc], [maLop], [maLoai], [maHS]) VALUES (N'2018', N'M07', N'L01', 28)
INSERT [dbo].[Tbl_PhanLop] ([maNamHoc], [maLop], [maLoai], [maHS]) VALUES (N'2018', N'M07', N'L01', 32)
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

INSERT [dbo].[Tbl_TienLuong] ([maLuong], [maThang], [maNamHoc]) VALUES (15, N'04', N'2018')
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
ALTER TABLE [dbo].[Tbl_BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_BaiViet_Tbl_GiaoVien] FOREIGN KEY([maGV])
REFERENCES [dbo].[Tbl_GiaoVien] ([maGV])
GO
ALTER TABLE [dbo].[Tbl_BaiViet] CHECK CONSTRAINT [FK_Tbl_BaiViet_Tbl_GiaoVien]
GO
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
