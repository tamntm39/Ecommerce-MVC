USE [master]
GO
/****** Object:  Database [NhaSach]    Script Date: 7/3/2024 12:20:06 AM ******/
CREATE DATABASE [NhaSach]
 GO
USE [NhaSach]
GO
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 7/3/2024 12:20:07 AM ******/
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
/****** Object:  Table [dbo].[DANHGIA]    Script Date: 7/3/2024 12:20:07 AM ******/
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
/****** Object:  Table [dbo].[DONHANG]    Script Date: 7/3/2024 12:20:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[DiaChi] [nvarchar](max) NULL,
	[TrangThai] [int] NULL,
	[NgayDat] [datetime] NULL,
	[ID] [int] NULL,
	[TrangThaiThanhToan] [int] NOT NULL,
	[PhuongThucThanhToan] [int] NOT NULL,
	[TongTien] [int] NOT NULL,
	[MaKM] [varchar](15) NULL,
	[MaNVXuLy] [int] NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 7/3/2024 12:20:07 AM ******/
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
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 7/3/2024 12:20:07 AM ******/
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
/****** Object:  Table [dbo].[LOAI]    Script Date: 7/3/2024 12:20:07 AM ******/
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
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 7/3/2024 12:20:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[MatKhau] [nvarchar](max) NULL,
	[Quyen] [int] NOT NULL,
	[Ten] [nvarchar](100) NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Phanquyen] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 7/3/2024 12:20:07 AM ******/
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
SET IDENTITY_INSERT [dbo].[CHITIETDONHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[DONHANG] ON 

INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (1, N'828 Sư Vạn Hạnh - Huflit', 1, CAST(N'2022-11-25T00:00:00.000' AS DateTime), 4, 1, 1, 0, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (2, N'Thành Thái - Q10', 1, CAST(N'2022-11-25T00:00:00.000' AS DateTime), 3, 1, 2, 0, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (3, N'Út Tịch - Tân Bình', 1, CAST(N'2022-11-25T00:00:00.000' AS DateTime), 1, 1, 1, 0, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (4, N'Thủ Đức', 0, CAST(N'2022-11-26T00:00:00.000' AS DateTime), 1, 1, 1, 0, NULL, NULL)
INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (5, N'Nguyễn Chánh Sắt - Tân Bình', 1, CAST(N'2022-11-26T00:00:00.000' AS DateTime), 5, 1, 3, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DONHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (1, N'Thiên Phúc', N'phuc@gmail.com', N'12345', N'1234567890', N'HCM', CAST(N'2024-06-18T14:41:06.347' AS DateTime), 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (2, N'Trịnh Trung Lộc', N'loc@gmail.com', N'123', N'1234567890', N'HCM', CAST(N'2024-06-18T14:39:28.843' AS DateTime), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (3, N'Lê Viết Nam', N'nam@gmail.com', N'abc', N'1234567890', N'HCM', CAST(N'2024-06-18T14:39:44.360' AS DateTime), 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (4, N'Dũng Đoàn', N'dung@gmail.com', N'dung0123', N'1234567890', N'HCM', CAST(N'2024-06-18T14:39:50.523' AS DateTime), 0)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (5, N'Ngọc Khánh', N'khanh@gmail.com', N'khanh0123', N'1234567890', N'HCM', CAST(N'2024-06-18T14:40:03.887' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAI] ON 

INSERT [dbo].[LOAI] ([Maloai], [Tenloai]) VALUES (1, N'Sách tài chính')
INSERT [dbo].[LOAI] ([Maloai], [Tenloai]) VALUES (2, N'Sách Marketing')
INSERT [dbo].[LOAI] ([Maloai], [Tenloai]) VALUES (3, N'Sách kinh doanh')
INSERT [dbo].[LOAI] ([Maloai], [Tenloai]) VALUES (4, N'Sách chứng khoán')
INSERT [dbo].[LOAI] ([Maloai], [Tenloai]) VALUES (5, N'Sách tiểu thuyết')
SET IDENTITY_INSERT [dbo].[LOAI] OFF
GO
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MaNV], [Email], [MatKhau], [Quyen], [Ten], [NgayTao], [TrangThai]) VALUES (1, N'admin@gmail.com', N'123', 1, N'Tâm', CAST(N'2024-06-18T14:57:09.060' AS DateTime), 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [Email], [MatKhau], [Quyen], [Ten], [NgayTao], [TrangThai]) VALUES (3, N't3@gmail.com', N'25f9e794323b453885f5181f1b624d0b', 2, N'A', CAST(N'2024-06-19T21:47:30.287' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao]) VALUES (1, N'7 thói quen hiệu quả trong kinh tế', CAST(172000 AS Decimal(18, 0)), N'Cuốn sách 7 Habits of Highly Effective People được dịch ra tiếng Việt với tựa đề 7 thói quen hiệu quả. Tác phẩm này đã xuất hiện trên thị trường Việt Nam được khoảng 10 năm. Nội dung dịch khá sát nghĩa và rất dễ đọc. Trong tác phẩm này tác giả còn đưa vào những công cụ, ví dụ thực tiễn để người đọc dễ hiểu hơn. Đây là một cuốn sách về quản trị con người rất đáng để đọc.', N'Stephen P.Covey', N'7-thoi-quen-hieu-qua-1.jpg', 1, 0, 0, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao]) VALUES (2, N'Bộ 2 Quyển Chiến Lược + Lợi Thế Cạnh Tranh', CAST(280000 AS Decimal(18, 0)), N'Tác phẩm tiên phong “Chiến lược cạnh tranh” của Michael E. Porter – đã thay đổi cả lý thuyết, thực hành và giảng dạy chiến lược kinh doanh trên toàn thế giới. Hấp dẫn trong sự đơn giản – giống như mọi phát minh lớn – phân tích của Porter về các ngành công nghiệp đã thâu tóm toàn bộ sự phức tạp của cạnh tranh ngành vào năm yếu tố nền tảng. Porter đã giới thiệu một trong những công cụ cạnh tranh mạnh mẽ nhất cho tới nay: ba chiến lược cạnh tranh phổ quát – chi phí thấp, khác biệt hóa và trọng tâm -, những chiến lược đã biến định vị chiến lược trở thành một hoạt động có cấu trúc.', N'Michael E. Porter', N'com-bo-2-cuon-sach-canh-tranh.jpg', 1, 0, 0, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao]) VALUES (3, N'Content Và Nghệ Thuật Story Telling', CAST(210000 AS Decimal(18, 0)), N'Trạng thái mắc kẹt trong hành lang thanh xuân này dẫn đến những cuộc xáo trộn rất lớn trong đời sống hiện tại, mà chúng ta vẫn luôn luôn, về mặt giả định nào đấy, kể cả những người cứng cáp nhất, cũng đang mắc kẹt trong hành lang đấy. Bởi vì hành lang đấy, đi từ thời gọi là chưa hình thành cái tôi xã hội, sang thời đã có một cái tôi xã hội vững chắc. Bởi vì thời chưa có cái tôi xã hội này là cái tôi bản nguyên, cái tôi gốc ở trong bạn, cái tôi ấu thơ ở trong bạn, với cả cái tôi kia, giống như bọc lấy nhau. Nó gồm hai vòng, vòng bên trong là cái tôi, vòng bên ngoài là xã hội. Xã hội đầu tiên chúng ta có là bạn bè và người yêu, chỉ có đúng hai loại này thôi.', N'BÁT NHÃ', N'content-nghe-thuat.jpg', 2, 0, 0, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao]) VALUES (4, N' Tài Chính Cá Nhân Cho Người Việt Nam', CAST(305000 AS Decimal(18, 0)), N'Bắt đầu từ những bài viết trên CafeBiz, CafeF, TheBank, Chuyện thương trường và trang cá nhân về các dự án đầu tư lừa đảo, cách tính lãi suất, những công cụ đầu tư, cách quản lý các quỹ tài chính cá nhân… tôi phát hiện ra nhiều người Việt còn thiếu kiến thức về tài chính cá nhân. Từ đó, tôi đã tự gán cho mình sứ mệnh “Góp phần phổ biến và nâng cao kiến thức tài chính cá nhân của người Việt”. Đó là nguyên nhân ra đời của cuốn sách “Tài chính cá nhân dành cho người Việt Nam” này.', N'CafeBiz, CafeF, TheBank', N'tai-chinh-hanh-vi.jpg', 1, 0, 0, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao]) VALUES (5, N'48 Nguyên Tắc Chủ Chốt Của Quyền Lực', CAST(400000 AS Decimal(18, 0)), N'Robert Greene đã khái quát nên 48 nguyên tắc tạo nên quyền lực một cách có cơ sở khoa học. Mỗi nguyên tắc đều được tác giả phân tích, giải thích rõ ràng, mang tính thuyết phục cao và cực kỳ hấp dẫn.', N'Robert Greene', N'48-nguyen-tac-chu-chot-cua-quyen-luc-3.jpg', 3, 0, 0, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao]) VALUES (6, N'20 Năm Lịch Sử Thị Trường Chứng Khoán Việt Nam', CAST(169000 AS Decimal(18, 0)), N'“20 năm lịch sử thị trường chứng khoán Việt Nam” cung cấp cho bạn một hệ thống thực tế, dễ hiểu bao gồm các diễn biến kinh tế, các sự kiện nổi bật qua các năm cũng như xu hướng của thị trường trong và ngoài nước. Tuân theo quy luật này, bạn sẽ đưa ra được các quyết định đầu tư khôn ngoan hơn, thành công hơn.', N'Lê Hoài Ân', N'20-nam-lich-su-chung-khoan.jpeg', 4, 0, 0, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao]) VALUES (7, N'Bán Gì Để Nhanh Giàu ? – Theo Trend 2021 ', CAST(350000 AS Decimal(18, 0)), N'Cuốn sách này sẽ hướng dẫn bạn cách chọn sản phẩm, dịch vụ sao cho hợp lý nhất. Chọn sản phẩm theo trend cũng chỉ là một trong số đó. Chọn đúng sản phẩm làm sai cũng thành đúng, chọn sai sản phẩm đúng cũng hóa thành sai.', N'Alice Son', N'ban-gi-de-nhanh-giau-1.jpg', 3, 0, 0, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao]) VALUES (8, N'Bí Quyết Tay Trắng Thành Triệu Phú', CAST(110000 AS Decimal(18, 0)), N'Đã có hàng trăm ngàn người đạt được những thành công nhất định về tài chính sau khi đọc và ứng dụng những chiến lược làm giàu đã được trải nghiệm và chứng minh hiệu quả từ quyển sách “Bí Quyết Tay Trắng Thành Triệu Phú”, còn bạn thì sao?', N'Adam Khoo', N'bi-quyet-tay-trang-thanh-trieu-phu.jpg', 3, 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KHUYENMA__2725CF1493732443]    Script Date: 7/3/2024 12:20:07 AM ******/
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
USE [master]
GO
ALTER DATABASE [NhaSach] SET  READ_WRITE 
GO
