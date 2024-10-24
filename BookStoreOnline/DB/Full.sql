USE [NhaSach]
GO
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 10/22/2024 2:05:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaDonHang] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_Chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHGIA]    Script Date: 10/22/2024 2:05:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHGIA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[NgayTao] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 10/22/2024 2:05:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[DiaChi] [nvarchar](max) NULL,
	[TrangThai] [varchar](20) NULL,
	[NgayDat] [datetime] NULL,
	[ID] [int] NULL,
	[TrangThaiThanhToan] [varchar](20) NULL,
	[PhuongThucThanhToan] [varchar](20) NULL,
	[TongTien] [int] NOT NULL,
	[MaKM] [varchar](15) NULL,
	[MaNVXuLy] [int] NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 10/22/2024 2:05:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[MatKhau] [nvarchar](max) NULL,
	[SoDienThoai] [varchar](10) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 10/22/2024 2:05:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenChuongTrinh] [nvarchar](100) NOT NULL,
	[MaKM] [varchar](15) NOT NULL,
	[MoTa] [nvarchar](max) NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[NgayBatDau] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[SoTienKM] [int] NOT NULL,
	[SoTienMuaHangToiThieu] [int] NOT NULL,
	[SoLanDung] [int] NOT NULL,
	[KichHoat] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI]    Script Date: 10/22/2024 2:05:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI](
	[Maloai] [int] IDENTITY(1,1) NOT NULL,
	[Tenloai] [nvarchar](max) NULL,
 CONSTRAINT [PK_Theloai] PRIMARY KEY CLUSTERED 
(
	[Maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 10/22/2024 2:05:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[MatKhau] [nvarchar](max) NULL,
	[Quyen] [varchar](20) NULL,
	[Ten] [nvarchar](100) NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Phanquyen] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 10/22/2024 2:05:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[Gia] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[TacGia] [nvarchar](max) NULL,
	[Anh] [nvarchar](max) NULL,
	[MaLoai] [int] NULL,
	[SoLuongBan] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaNVTao] [int] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CHITIETDONHANG] ON 

INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (1, 1, 3, 1)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (2, 1, 6, 2)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (3, 2, 3, 1)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (4, 2, 4, 1)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (5, 2, 7, 1)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (6, 3, 3, 1)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (7, 3, 1, 2)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (8, 3, 5, 2)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (9, 4, 3, 1)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (10, 5, 2, 4)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (11, 6, 2, 3)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (12, 7, 2, 21)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (13, 8, 2, 2)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (14, 9, 2, 1)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (15, 10, 3, 1)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (16, 11, 2, 1)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (1014, 1009, 8, 1)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (1015, 1010, 8, 2)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (1016, 1011, 4, 13)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (1017, 1012, 8, 1)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (1018, 1013, 8, 6)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (1019, 1014, 8, 1)
SET IDENTITY_INSERT [dbo].[CHITIETDONHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[DANHGIA] ON 

INSERT [dbo].[DANHGIA] ([ID], [MaKH], [MaSanPham], [NoiDung], [NgayTao]) VALUES (1, 1, 2, N'Hay quá đi', CAST(N'2024-07-13T00:18:59.077' AS DateTime))
INSERT [dbo].[DANHGIA] ([ID], [MaKH], [MaSanPham], [NoiDung], [NgayTao]) VALUES (2, 2, 4, N'Nên đọc qua nha', CAST(N'2024-07-13T00:19:12.200' AS DateTime))
INSERT [dbo].[DANHGIA] ([ID], [MaKH], [MaSanPham], [NoiDung], [NgayTao]) VALUES (3, 7, 2, N'123', CAST(N'2024-07-13T01:40:07.720' AS DateTime))
INSERT [dbo].[DANHGIA] ([ID], [MaKH], [MaSanPham], [NoiDung], [NgayTao]) VALUES (4, 7, 2, N'Good', CAST(N'2024-07-13T01:41:08.500' AS DateTime))
INSERT [dbo].[DANHGIA] ([ID], [MaKH], [MaSanPham], [NoiDung], [NgayTao]) VALUES (5, 7, 2, N'Chuyện này hay waaa', CAST(N'2024-07-19T22:48:25.400' AS DateTime))
INSERT [dbo].[DANHGIA] ([ID], [MaKH], [MaSanPham], [NoiDung], [NgayTao]) VALUES (6, 7, 8, N'Quyến này rất hay', CAST(N'2024-07-25T19:39:17.777' AS DateTime))
INSERT [dbo].[DANHGIA] ([ID], [MaKH], [MaSanPham], [NoiDung], [NgayTao]) VALUES (1006, 7, 1, N'Sách hay quá', CAST(N'2024-10-21T14:07:11.583' AS DateTime))
SET IDENTITY_INSERT [dbo].[DANHGIA] OFF
GO
SET IDENTITY_INSERT [dbo].[DONHANG] ON 

INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (1, N'828 Sư Vạn Hạnh - Huflit', N'Received', CAST(N'2024-07-25T00:00:00.000' AS DateTime), 4, N'Unpaid', N'COD', 100000, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (2, N'Thành Thái - Q10', N'Canceled', CAST(N'2024-07-19T00:00:00.000' AS DateTime), 3, N'Unpaid', N'COD', 400000, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (3, N'Út Tịch - Tân Bình', N'Canceled', CAST(N'2024-07-20T00:00:00.000' AS DateTime), 1, N'Unpaid', N'COD', 600000, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (4, N'Thủ Đức', N'Received', CAST(N'2024-07-21T00:00:00.000' AS DateTime), 1, N'Unpaid', N'COD', 100000, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (5, N'Nguyễn Chánh Sắt - Tân Bình', N'Shipping', CAST(N'2024-07-22T00:00:00.000' AS DateTime), 5, N'Unpaid', N'COD', 700000, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (6, N'Lý Thường Kiệt Phường 9 Tân bình', N'Received', CAST(N'2024-07-23T00:00:00.000' AS DateTime), 7, N'Unpaid', N'COD', 100000, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (7, N'khgkhb', N'NoInform', CAST(N'2024-07-24T00:00:00.000' AS DateTime), 7, N'Unpaid', N'COD', 1280000, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (8, N'hcm', N'NoInform', CAST(N'2024-07-25T00:00:00.000' AS DateTime), 7, N'Unpaid', N'COD', 100000, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (9, N'BMT Đắk Lắk', N'NoInform', CAST(N'2024-07-25T00:00:00.000' AS DateTime), 7, N'Unpaid', N'COD', 280000, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (10, N'BMT Đắk Lắk', N'Received', CAST(N'2024-07-25T00:00:00.000' AS DateTime), 7, N'Unpaid', N'COD', 190000, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (11, N'BMT Đắk Lắk', N'Canceled', CAST(N'2024-07-25T00:00:00.000' AS DateTime), 7, N'Unpaid', N'COD', 280000, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (1009, N'HCM', N'Informed', CAST(N'2024-10-06T00:00:00.000' AS DateTime), 1012, N'Unpaid', N'COD', 110000, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (1010, N'HCM', N'NoInform', CAST(N'2024-10-07T00:00:00.000' AS DateTime), 1012, N'Unpaid', N'COD', 200000, N'KM001', NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (1011, N'HCM', N'NoInform', CAST(N'2024-10-07T00:00:00.000' AS DateTime), 1012, N'Unpaid', N'COD', 3965000, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (1012, N'BMT Đắk Lắk', N'Shipping', CAST(N'2024-10-21T00:00:00.000' AS DateTime), 7, N'Unpaid', N'COD', 60000, N'CHINHANHMOI', NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (1013, N'BMT Đắk Lắk', N'Shipping', CAST(N'2024-10-21T00:00:00.000' AS DateTime), 7, N'Unpaid', N'COD', 660000, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (1014, N'HCM', N'Canceled', CAST(N'2024-10-21T00:00:00.000' AS DateTime), 1015, N'Unpaid', N'COD', 110000, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DONHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (1, N'Thiên An', N'an@gmail.com', N'25f9e794323b453885f5181f1b624d0b', N'1234567890', N'HCM', CAST(N'2024-06-18T14:41:06.347' AS DateTime), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (2, N'Phương Tuấn', N'tuan@gmail.com', N'123', N'1234567890', N'HCM', CAST(N'2024-06-18T14:39:28.843' AS DateTime), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (3, N'Negav', N'anh@gmail.com', N'abc', N'1234567890', N'HCM', CAST(N'2024-06-18T14:39:44.360' AS DateTime), 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (4, N'Atus', N'anhtu@gmail.com', N'dung0123', N'1234567890', N'HCM', CAST(N'2024-06-18T14:39:50.523' AS DateTime), 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (5, N'Captain', N'khanh@gmail.com', N'khanh0123', N'1234567890', N'HCM', CAST(N'2024-06-18T14:40:03.887' AS DateTime), 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (6, N'Quyt', N'q@gmail.com', N'25f9e794323b453885f5181f1b624d0b', N'123123', N'Nghệ An', CAST(N'2024-07-09T00:56:57.677' AS DateTime), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (7, N'Nguyễn Thị Minh Tâm', N'tamntm39@gmail.com', N'4297f44b13955235245b2497399d7a93', N'0987654321', N'BMT Đắk Lắk', CAST(N'2024-07-09T12:56:47.600' AS DateTime), 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (8, N'Sephera', N'loc@gmail.com', N'4297f44b13955235245b2497399d7a93', N'1231212', N'BMT', CAST(N'2024-07-25T23:14:03.033' AS DateTime), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (1008, N'Sephera', N'tamnt0309@gmail.com', N'fcea920f7412b5da7be0cf42b8c93759', N'1234567890', N'HCM', CAST(N'2024-10-04T21:16:50.203' AS DateTime), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (1009, N'Q', N'phc@gmail.com', N'202cb962ac59075b964b07152d234b70', N'12133', NULL, CAST(N'2024-10-06T20:46:03.280' AS DateTime), 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (1010, N'Tamm', N'qe@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, N'HCM', CAST(N'2024-10-06T21:24:26.443' AS DateTime), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (1011, N'Tamm', N'tamnt39@gmail.com', N'd375af34cc08aba9a1cc9b6596a70c36', N'123456789', N'BMT', CAST(N'2024-10-06T21:37:03.230' AS DateTime), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (1012, N'MinhTam', N'trankhoimy72@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'0818202648', N'HCM', CAST(N'2024-10-06T21:52:49.307' AS DateTime), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (1013, NULL, N'tamnteddf39@gmail.com', N'81dc9bdb52d04dc20036dbd8313ed055', N'12344', N'HCM', CAST(N'2024-10-07T13:36:18.673' AS DateTime), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (1014, NULL, N'q8998@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'1234', NULL, CAST(N'2024-10-07T13:36:49.870' AS DateTime), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (1015, N'Tran', N'tran@gmail.com', N'4297f44b13955235245b2497399d7a93', N'121332323', N'HCM', CAST(N'2024-10-21T14:14:29.960' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHUYENMAI] ON 

INSERT [dbo].[KHUYENMAI] ([ID], [TenChuongTrinh], [MaKM], [MoTa], [NgayTao], [NgayBatDau], [NgayKetThuc], [SoTienKM], [SoTienMuaHangToiThieu], [SoLanDung], [KichHoat]) VALUES (1, N'Chương Trình Khuyến Mãi Mùa Hè', N'KM001', N'Giảm giá 20% cho tất cả các sách', CAST(N'2024-07-15T00:00:00.000' AS DateTime), CAST(N'2024-07-20T00:00:00.000' AS DateTime), CAST(N'2024-08-20T00:00:00.000' AS DateTime), 20000, 50000, 1, 1)
INSERT [dbo].[KHUYENMAI] ([ID], [TenChuongTrinh], [MaKM], [MoTa], [NgayTao], [NgayBatDau], [NgayKetThuc], [SoTienKM], [SoTienMuaHangToiThieu], [SoLanDung], [KichHoat]) VALUES (3, N'Khai trương chi nhánh mới', N'CHINHANHMOI', N'Khai trường mở chi nhánh mới giảm 50k', CAST(N'2024-10-21T00:00:00.000' AS DateTime), CAST(N'2024-10-21T00:00:00.000' AS DateTime), CAST(N'2024-10-27T00:00:00.000' AS DateTime), 50000, 100000, 1, 1)
SET IDENTITY_INSERT [dbo].[KHUYENMAI] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAI] ON 

INSERT [dbo].[LOAI] ([Maloai], [Tenloai]) VALUES (1, N'Sách tài chính')
INSERT [dbo].[LOAI] ([Maloai], [Tenloai]) VALUES (2, N'Sách Marketing')
INSERT [dbo].[LOAI] ([Maloai], [Tenloai]) VALUES (3, N'Sách kinh doanh')
INSERT [dbo].[LOAI] ([Maloai], [Tenloai]) VALUES (4, N'Sách chứng khoán')
INSERT [dbo].[LOAI] ([Maloai], [Tenloai]) VALUES (5, N'Sách tiểu thuyết')
INSERT [dbo].[LOAI] ([Maloai], [Tenloai]) VALUES (8, N'Self-help')
INSERT [dbo].[LOAI] ([Maloai], [Tenloai]) VALUES (9, N'Tiểu Thuyết')
SET IDENTITY_INSERT [dbo].[LOAI] OFF
GO
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MaNV], [Email], [MatKhau], [Quyen], [Ten], [NgayTao], [TrangThai]) VALUES (1, N'admin@gmail.com', N'4297f44b13955235245b2497399d7a93', N'Administrator', N'Tâm', CAST(N'2024-06-18T14:57:09.060' AS DateTime), 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [Email], [MatKhau], [Quyen], [Ten], [NgayTao], [TrangThai]) VALUES (3, N't3@gmail.com', N'4297f44b13955235245b2497399d7a93', N'Manager', N'Manager', CAST(N'2024-06-19T21:47:30.287' AS DateTime), 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [Email], [MatKhau], [Quyen], [Ten], [NgayTao], [TrangThai]) VALUES (7, N'Seller@gmail.com', N'4297f44b13955235245b2497399d7a93', N'Manager', N'Seller', CAST(N'2024-06-19T21:47:30.287' AS DateTime), 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [Email], [MatKhau], [Quyen], [Ten], [NgayTao], [TrangThai]) VALUES (8, N'ntmtam@gmail.com', N'25f9e794323b453885f5181f1b624d0b', N'Administrator', N'Tantm', CAST(N'2024-07-15T22:47:13.570' AS DateTime), 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Email], [MatKhau], [Quyen], [Ten], [NgayTao], [TrangThai]) VALUES (9, N'sephera@gmail.com', N'25f9e794323b453885f5181f1b624d0b', N'Manager', N'Sephera', CAST(N'2024-07-25T23:06:25.540' AS DateTime), 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Email], [MatKhau], [Quyen], [Ten], [NgayTao], [TrangThai]) VALUES (1009, N'qgmail.com', N'25f9e794323b453885f5181f1b624d0b', N'Manager', N'Tam', CAST(N'2024-10-07T14:44:08.957' AS DateTime), 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Email], [MatKhau], [Quyen], [Ten], [NgayTao], [TrangThai]) VALUES (1010, N'qgmail.com', N'25f9e794323b453885f5181f1b624d0b', N'Administrator', N'Tam', CAST(N'2024-10-07T14:44:39.903' AS DateTime), 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Email], [MatKhau], [Quyen], [Ten], [NgayTao], [TrangThai]) VALUES (1011, N'qgmail.com', N'25f9e794323b453885f5181f1b624d0b', N'Seller', N'Tam', CAST(N'2024-10-07T14:44:49.420' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao], [NgayTao]) VALUES (1, N'Tuổi Trẻ Đáng Giá Bao Nhiêu?', CAST(172000 AS Decimal(18, 0)), N'Tuổi trẻ đáng giá bao nhiêu? được tác giả chia làm 3 phần: HỌC, LÀM, ĐI. Nhưng tôi thấy cuốn sách còn thể hiện một phần thứ tư nữa, đó là ĐỌC. Hãy đọc sách, nếu bạn đọc sách một cách bền bỉ, sẽ đến lúc bạn bị thôi thúc không ngừng bởi ý muốn viết nên cuốn sách của riêng mình. Nếu tôi còn ở tuổi đôi mươi, hẳn là tôi sẽ đọc Tuổi trẻ đáng giá bao nhiêu? nhiều hơn một lần.', N'Rosie Nguyễn', N'OIP.jpg', 1, 85, 200, NULL, CAST(N'2024-06-09T00:00:00.000' AS DateTime))
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao], [NgayTao]) VALUES (2, N'Mắt Biếc', CAST(280000 AS Decimal(18, 0)), N'"Mắt Biếc" – Nguyễn Nhật Ánh là một tâm hồn lãng mạn, một tình yêu nồng nàn như sắc nắng mùa hè nhưng lại lạnh lẽo như con nước đang thu. Cuốn sách kể về cuộc đời của Ngạn – Cậu bé được sinh ra ở làng quê Đo Đo sâu đậm nghĩa tình. Tuổi thơ của cậu gắn liền với cô bạn hàng xóm với đôi mắt mắt xinh đẹp: Hà Lan.', N'Nguyễn Nhật Ánh', N'matbiec2.jpg', 9, 12, 200, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao], [NgayTao]) VALUES (3, N'Content Và Nghệ Thuật Story Telling', CAST(210000 AS Decimal(18, 0)), N'Trạng thái mắc kẹt trong hành lang thanh xuân này dẫn đến những cuộc xáo trộn rất lớn trong đời sống hiện tại, mà chúng ta vẫn luôn luôn, về mặt giả định nào đấy, kể cả những người cứng cáp nhất, cũng đang mắc kẹt trong hành lang đấy. Bởi vì hành lang đấy, đi từ thời gọi là chưa hình thành cái tôi xã hội, sang thời đã có một cái tôi xã hội vững chắc. Bởi vì thời chưa có cái tôi xã hội này là cái tôi bản nguyên, cái tôi gốc ở trong bạn, cái tôi ấu thơ ở trong bạn, với cả cái tôi kia, giống như bọc lấy nhau. Nó gồm hai vòng, vòng bên trong là cái tôi, vòng bên ngoài là xã hội. Xã hội đầu tiên chúng ta có là bạn bè và người yêu, chỉ có đúng hai loại này thôi.', N'BÁT NHÃ', N'content-nghe-thuat.jpg', 2, 15, 20, NULL, CAST(N'2024-08-09T00:00:00.000' AS DateTime))
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao], [NgayTao]) VALUES (4, N' Tài Chính Cá Nhân Cho Người Việt Nam', CAST(305000 AS Decimal(18, 0)), N'Bắt đầu từ những bài viết trên CafeBiz, CafeF, TheBank, Chuyện thương trường và trang cá nhân về các dự án đầu tư lừa đảo, cách tính lãi suất, những công cụ đầu tư, cách quản lý các quỹ tài chính cá nhân… tôi phát hiện ra nhiều người Việt còn thiếu kiến thức về tài chính cá nhân. Từ đó, tôi đã tự gán cho mình sứ mệnh “Góp phần phổ biến và nâng cao kiến thức tài chính cá nhân của người Việt”. Đó là nguyên nhân ra đời của cuốn sách “Tài chính cá nhân dành cho người Việt Nam” này.', N'CafeBiz, CafeF, TheBank', N'tai-chinh-hanh-vi.jpg', 1, 50, 200, NULL, CAST(N'2024-07-19T00:00:00.000' AS DateTime))
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao], [NgayTao]) VALUES (5, N'48 Nguyên Tắc Chủ Chốt Của Quyền Lực', CAST(400000 AS Decimal(18, 0)), N'Robert Greene đã khái quát nên 48 nguyên tắc tạo nên quyền lực một cách có cơ sở khoa học. Mỗi nguyên tắc đều được tác giả phân tích, giải thích rõ ràng, mang tính thuyết phục cao và cực kỳ hấp dẫn.', N'Robert Greene', N'48-nguyen-tac-chu-chot-cua-quyen-luc-3.jpg', 3, 20, 200, NULL, CAST(N'2024-08-09T00:00:00.000' AS DateTime))
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao], [NgayTao]) VALUES (6, N'20 Năm Lịch Sử Thị Trường Chứng Khoán Việt Nam', CAST(169000 AS Decimal(18, 0)), N'“20 năm lịch sử thị trường chứng khoán Việt Nam” cung cấp cho bạn một hệ thống thực tế, dễ hiểu bao gồm các diễn biến kinh tế, các sự kiện nổi bật qua các năm cũng như xu hướng của thị trường trong và ngoài nước. Tuân theo quy luật này, bạn sẽ đưa ra được các quyết định đầu tư khôn ngoan hơn, thành công hơn.', N'Lê Hoài Ân', N'20-nam-lich-su-chung-khoan.jpeg', 4, 30, 200, NULL, CAST(N'2024-08-09T00:00:00.000' AS DateTime))
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao], [NgayTao]) VALUES (7, N'Bán Gì Để Nhanh Giàu ? – Theo Trend 2021 ', CAST(350000 AS Decimal(18, 0)), N'Cuốn sách này sẽ hướng dẫn bạn cách chọn sản phẩm, dịch vụ sao cho hợp lý nhất. Chọn sản phẩm theo trend cũng chỉ là một trong số đó. Chọn đúng sản phẩm làm sai cũng thành đúng, chọn sai sản phẩm đúng cũng hóa thành sai.', N'Alice Son', N'ban-gi-de-nhanh-giau-1.jpg', 3, 12, 200, NULL, CAST(N'2024-08-09T00:00:00.000' AS DateTime))
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao], [NgayTao]) VALUES (8, N'Bí Quyết Tay Trắng Thành Triệu Phú', CAST(110000 AS Decimal(18, 0)), N'Đã có hàng trăm ngàn người đạt được những thành công nhất định về tài chính sau khi đọc và ứng dụng những chiến lược làm giàu đã được trải nghiệm và chứng minh hiệu quả từ quyển sách “Bí Quyết Tay Trắng Thành Triệu Phú”, còn bạn thì sao?', N'Adam Khoo', N'bi-quyet-tay-trang-thanh-trieu-phu.jpg', 3, 55, 200, NULL, CAST(N'2024-08-09T00:00:00.000' AS DateTime))
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao], [NgayTao]) VALUES (9, N'Bộ 2 Quyển Chiến Lược + Lợi Thế Cạnh Tranh', CAST(4500000 AS Decimal(18, 0)), N'Tác phẩm tiên phong “Chiến lược cạnh tranh” của Michael E. Porter – đã thay đổi cả lý thuyết, thực hành và giảng dạy chiến lược kinh doanh trên toàn thế giới. Hấp dẫn trong sự đơn giản – giống như mọi phát minh lớn – phân tích của Porter về các ngành công nghiệp đã thâu tóm toàn bộ sự phức tạp của cạnh tranh ngành vào năm yếu tố nền tảng. Porter đã giới thiệu một trong những công cụ cạnh tranh mạnh mẽ nhất cho tới nay: ba chiến lược cạnh tranh phổ quát – chi phí thấp, khác biệt hóa và trọng tâm -, những chiến lược đã biến định vị chiến lược trở thành một hoạt động có cấu trúc.', N'Nguyễn Nhật Ánh', N'com-bo-2-cuon-sach-canh-tranh.jpg', 9, 150, 299, NULL, CAST(N'2024-08-09T00:00:00.000' AS DateTime))
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao], [NgayTao]) VALUES (10, N'7 Thói Quen Hiệu Quả', CAST(200000 AS Decimal(18, 0)), N'Cuốn sách 7 Habits of Highly Effective People được dịch ra tiếng Việt với tựa đề 7 thói quen hiệu quả. Tác phẩm này đã xuất hiện trên thị trường Việt Nam được khoảng 10 năm. Nội dung dịch khá sát nghĩa và rất dễ đọc. Trong tác phẩm này tác giả còn đưa vào những công cụ, ví dụ thực tiễn để người đọc dễ hiểu hơn. Đây là một cuốn sách về quản trị con người rất đáng để đọc.', N'Stephen P.Covey', N'7-thoi-quen-hieu-qua-1.jpg', 8, 113, 200, NULL, CAST(N'2024-08-19T00:00:00.000' AS DateTime))
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao], [NgayTao]) VALUES (11, N'Con chó nhỏ mang giỏ hoa hồng', CAST(130000 AS Decimal(18, 0)), NULL, N'Nguyễn Nhật Ánh', NULL, NULL, 0, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KHUYENMA__2725CF1493732443]    Script Date: 10/22/2024 2:05:08 AM ******/
ALTER TABLE [dbo].[KHUYENMAI] ADD UNIQUE NONCLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DANHGIA] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[DONHANG] ADD  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[KHUYENMAI] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[KHUYENMAI] ADD  DEFAULT (getdate()) FOR [NgayBatDau]
GO
ALTER TABLE [dbo].[KHUYENMAI] ADD  DEFAULT (getdate()) FOR [NgayKetThuc]
GO
ALTER TABLE [dbo].[KHUYENMAI] ADD  DEFAULT ((1)) FOR [KichHoat]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  DEFAULT ((0)) FOR [SoLuongBan]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Donhang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DONHANG] ([MaDonHang])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_Chitietdonhang_Donhang]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Sanpham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_Chitietdonhang_Sanpham]
GO
ALTER TABLE [dbo].[DANHGIA]  WITH CHECK ADD  CONSTRAINT [FK_DANHGIA_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DANHGIA] CHECK CONSTRAINT [FK_DANHGIA_KHACHHANG]
GO
ALTER TABLE [dbo].[DANHGIA]  WITH CHECK ADD  CONSTRAINT [FK_DANHGIA_SANPHAM] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[DANHGIA] CHECK CONSTRAINT [FK_DANHGIA_SANPHAM]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_Donhang_Khachhang] FOREIGN KEY([ID])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_Donhang_Khachhang]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_KHUYENMAI] FOREIGN KEY([MaKM])
REFERENCES [dbo].[KHUYENMAI] ([MaKM])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_KHUYENMAI]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_NHANVIEN] FOREIGN KEY([MaNVXuLy])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_NHANVIEN]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_NHANVIEN] FOREIGN KEY([MaNVTao])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_NHANVIEN]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Theloai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LOAI] ([Maloai])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_Sanpham_Theloai]
GO
