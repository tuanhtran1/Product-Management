USE [QLVT_TEST]
GO
/****** Object:  Table [dbo].[ChiNhanh]    Script Date: 12/9/2021 10:09:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanh](
	[MACN] [nchar](10) NOT NULL,
	[DIACHI] [nvarchar](100) NOT NULL,
	[SoDT] [nvarchar](15) NOT NULL,
	[ChiNhanh] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__ChiNhanh__603F183CEB5B3B1D] PRIMARY KEY CLUSTERED 
(
	[MACN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTDDH]    Script Date: 12/9/2021 10:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDDH](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DONGIA] [float] NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[MaDDH] [nvarchar](8) NOT NULL,
	[MaVT] [nvarchar](4) NOT NULL,
 CONSTRAINT [PK__CTDDH__3214EC07ABE0C368] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTPN]    Script Date: 12/9/2021 10:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPN](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DONGIA] [float] NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[MaPN] [nvarchar](8) NOT NULL,
	[MaVT] [nvarchar](4) NOT NULL,
 CONSTRAINT [PK__CTPN__3214EC07905F3552] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTPX]    Script Date: 12/9/2021 10:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPX](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DONGIA] [float] NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[MAPX] [nvarchar](8) NOT NULL,
	[MAVT] [nvarchar](4) NOT NULL,
 CONSTRAINT [PK__CTPX__C323018B2DE4A594] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 12/9/2021 10:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[Id_DangNhap] [int] IDENTITY(1,1) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[TenDangNhap] [int] NOT NULL,
 CONSTRAINT [PK__DangNhap__C323018B79B4F346] PRIMARY KEY CLUSTERED 
(
	[Id_DangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DatHang]    Script Date: 12/9/2021 10:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatHang](
	[MasoDDH] [nvarchar](8) NOT NULL,
	[MAKHO] [nchar](4) NOT NULL,
	[NGAY] [date] NOT NULL,
	[NhaCC] [nvarchar](150) NOT NULL,
	[MANV] [int] NOT NULL,
 CONSTRAINT [PK__DatHang__73F9EDA3C7F88F6D] PRIMARY KEY CLUSTERED 
(
	[MasoDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kho]    Script Date: 12/9/2021 10:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho](
	[MAKHO] [nchar](4) NOT NULL,
	[DIACHI] [nvarchar](100) NOT NULL,
	[TENKHO] [nvarchar](30) NOT NULL,
	[MACN] [nchar](10) NOT NULL,
 CONSTRAINT [PK__Kho__7AFB3D16A8CB450D] PRIMARY KEY CLUSTERED 
(
	[MAKHO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/9/2021 10:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MANV] [int] NOT NULL,
	[DIACHI] [nvarchar](100) NOT NULL,
	[EMAIL] [nvarchar](50) NOT NULL,
	[HO] [nvarchar](40) NOT NULL,
	[LUONG] [float] NOT NULL,
	[NGAYSINH] [date] NOT NULL,
	[SDT] [nvarchar](15) NOT NULL,
	[TEN] [nvarchar](50) NOT NULL,
	[MACN] [nchar](10) NOT NULL,
	[Id_PhanQuyen] [int] NOT NULL,
 CONSTRAINT [PK__NhanVien__603F5114F2397AC2] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 12/9/2021 10:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[Id_PhanQuyen] [int] NOT NULL,
	[TenPhanQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK__PhanQuye__352E8FF27964A1A0] PRIMARY KEY CLUSTERED 
(
	[Id_PhanQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 12/9/2021 10:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MAPN] [nvarchar](8) NOT NULL,
	[HOTENKH] [nvarchar](100) NOT NULL,
	[MAKHO] [nchar](4) NOT NULL,
	[NGAY] [date] NOT NULL,
	[MADATHANG] [nvarchar](8) NOT NULL,
	[MANV] [int] NOT NULL,
 CONSTRAINT [PK__PhieuNha__603F61CE3B60E758] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 12/9/2021 10:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[MAPX] [nvarchar](8) NOT NULL,
	[HOTENKH] [nvarchar](100) NOT NULL,
	[MAKHO] [nchar](4) NOT NULL,
	[NGAY] [date] NOT NULL,
	[MANV] [int] NOT NULL,
 CONSTRAINT [PK__PhieuXua__603F61D802823B43] PRIMARY KEY CLUSTERED 
(
	[MAPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vattu]    Script Date: 12/9/2021 10:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vattu](
	[MAVT] [nvarchar](4) NOT NULL,
	[DVT] [nvarchar](30) NOT NULL,
	[SOLUONGTON] [int] NOT NULL,
	[TENVT] [nvarchar](100) NOT NULL,
	[PHOTO] [nvarchar](100) NULL,
 CONSTRAINT [PK__Vattu__60228248A7A1F656] PRIMARY KEY CLUSTERED 
(
	[MAVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ChiNhanh] ([MACN], [DIACHI], [SoDT], [ChiNhanh]) VALUES (N'CN01      ', N'DIACHI1', N'2131209', N'Chi Nhánh 1')
INSERT [dbo].[ChiNhanh] ([MACN], [DIACHI], [SoDT], [ChiNhanh]) VALUES (N'CN02      ', N'DIACHI2', N'21312312', N'Chi Nhánh 2')
INSERT [dbo].[ChiNhanh] ([MACN], [DIACHI], [SoDT], [ChiNhanh]) VALUES (N'CN03      ', N'DIACHI34', N'09238321342', N'Chi Nhánh 3')
SET IDENTITY_INSERT [dbo].[CTDDH] ON 

INSERT [dbo].[CTDDH] ([Id], [DONGIA], [SOLUONG], [MaDDH], [MaVT]) VALUES (1, 300000, 5, N'DH01', N'DS01')
INSERT [dbo].[CTDDH] ([Id], [DONGIA], [SOLUONG], [MaDDH], [MaVT]) VALUES (2, 150000, 6, N'DH01', N'KH01')
INSERT [dbo].[CTDDH] ([Id], [DONGIA], [SOLUONG], [MaDDH], [MaVT]) VALUES (4, 750000, 10, N'DH01', N'VR02')
SET IDENTITY_INSERT [dbo].[CTDDH] OFF
SET IDENTITY_INSERT [dbo].[CTPN] ON 

INSERT [dbo].[CTPN] ([Id], [DONGIA], [SOLUONG], [MaPN], [MaVT]) VALUES (14, 300000, 5, N'PN01', N'DS01')
SET IDENTITY_INSERT [dbo].[CTPN] OFF
SET IDENTITY_INSERT [dbo].[CTPX] ON 

INSERT [dbo].[CTPX] ([Id], [DONGIA], [SOLUONG], [MAPX], [MAVT]) VALUES (18, 150000, 1, N'PX03', N'VR02')
SET IDENTITY_INSERT [dbo].[CTPX] OFF
SET IDENTITY_INSERT [dbo].[DangNhap] ON 

INSERT [dbo].[DangNhap] ([Id_DangNhap], [MatKhau], [TenDangNhap]) VALUES (3, N'123', 1)
INSERT [dbo].[DangNhap] ([Id_DangNhap], [MatKhau], [TenDangNhap]) VALUES (6, N'123', 2)
INSERT [dbo].[DangNhap] ([Id_DangNhap], [MatKhau], [TenDangNhap]) VALUES (11, N'123', 3)
INSERT [dbo].[DangNhap] ([Id_DangNhap], [MatKhau], [TenDangNhap]) VALUES (12, N'123', 4)
SET IDENTITY_INSERT [dbo].[DangNhap] OFF
INSERT [dbo].[DatHang] ([MasoDDH], [MAKHO], [NGAY], [NhaCC], [MANV]) VALUES (N'DH01', N'K1N1', CAST(N'2017-05-19' AS Date), N'SamSung', 1)
INSERT [dbo].[DatHang] ([MasoDDH], [MAKHO], [NGAY], [NhaCC], [MANV]) VALUES (N'DH02', N'K4N1', CAST(N'2021-10-23' AS Date), N'Toshiba', 1)
INSERT [dbo].[DatHang] ([MasoDDH], [MAKHO], [NGAY], [NhaCC], [MANV]) VALUES (N'DH03', N'K3N1', CAST(N'2019-06-30' AS Date), N'Sony', 1)
INSERT [dbo].[DatHang] ([MasoDDH], [MAKHO], [NGAY], [NhaCC], [MANV]) VALUES (N'DH05', N'K1N2', CAST(N'2019-03-29' AS Date), N'Toyota', 2)
INSERT [dbo].[Kho] ([MAKHO], [DIACHI], [TENKHO], [MACN]) VALUES (N'K1N1', N'28-30 Ngô Quyền P1 Q5', N'KHO A', N'CN01      ')
INSERT [dbo].[Kho] ([MAKHO], [DIACHI], [TENKHO], [MACN]) VALUES (N'K1N2', N'127 Ngô Thì Nhậm', N'LONG PHU', N'CN02      ')
INSERT [dbo].[Kho] ([MAKHO], [DIACHI], [TENKHO], [MACN]) VALUES (N'K2N1', N'78 Nguyen Trai, TPHCM', N'KHO B', N'CN01      ')
INSERT [dbo].[Kho] ([MAKHO], [DIACHI], [TENKHO], [MACN]) VALUES (N'K2N2', N'23 Hoàng Diệu 2', N'KHO VT', N'CN02      ')
INSERT [dbo].[Kho] ([MAKHO], [DIACHI], [TENKHO], [MACN]) VALUES (N'K3N1', N'555 Trần Hưng đạo', N'CONG NGHIEP', N'CN01      ')
INSERT [dbo].[Kho] ([MAKHO], [DIACHI], [TENKHO], [MACN]) VALUES (N'K3N2', N'34,Quang Trung THủ Đức TPHCM', N'KHO XD', N'CN02      ')
INSERT [dbo].[Kho] ([MAKHO], [DIACHI], [TENKHO], [MACN]) VALUES (N'K4N1', N'134 Đình Phong Phú ,Quận 9', N'KHO HH', N'CN01      ')
INSERT [dbo].[NhanVien] ([MANV], [DIACHI], [EMAIL], [HO], [LUONG], [NGAYSINH], [SDT], [TEN], [MACN], [Id_PhanQuyen]) VALUES (1, N'320 Nguyễn Hội, Phan Thiết, Bình Thuận', N'bingbang004@gmail.com', N'Trần', 1000000, CAST(N'2000-06-30' AS Date), N'0333054989', N'Tú', N'CN01      ', 1)
INSERT [dbo].[NhanVien] ([MANV], [DIACHI], [EMAIL], [HO], [LUONG], [NGAYSINH], [SDT], [TEN], [MACN], [Id_PhanQuyen]) VALUES (2, N'64 Di Linh, Lâm Đồng', N'baohanhelia@gmail.com', N'Bảo', 500000, CAST(N'2000-05-30' AS Date), N'0324342232', N'Hân Helia', N'CN02      ', 0)
INSERT [dbo].[NhanVien] ([MANV], [DIACHI], [EMAIL], [HO], [LUONG], [NGAYSINH], [SDT], [TEN], [MACN], [Id_PhanQuyen]) VALUES (3, N'1 Đồi Dương, Phan Thiết', N'huynhnguyen1@gmail.com', N'Huỳnh', 500000, CAST(N'2000-11-30' AS Date), N'0902223309', N'Nguyễn', N'CN01      ', 0)
INSERT [dbo].[NhanVien] ([MANV], [DIACHI], [EMAIL], [HO], [LUONG], [NGAYSINH], [SDT], [TEN], [MACN], [Id_PhanQuyen]) VALUES (4, N'Đồng Nai', N'n18dccn102@student.ptithcm.edu.vn', N'Hoàng', 1000000, CAST(N'2000-10-30' AS Date), N'000000000', N'Lâm', N'CN01      ', 0)
INSERT [dbo].[PhanQuyen] ([Id_PhanQuyen], [TenPhanQuyen]) VALUES (0, N'Staff')
INSERT [dbo].[PhanQuyen] ([Id_PhanQuyen], [TenPhanQuyen]) VALUES (1, N'Admin')
INSERT [dbo].[PhieuNhap] ([MAPN], [HOTENKH], [MAKHO], [NGAY], [MADATHANG], [MANV]) VALUES (N'PN01', N'Nguyễn Kim', N'K1N1', CAST(N'2019-06-30' AS Date), N'DH01', 1)
INSERT [dbo].[PhieuNhap] ([MAPN], [HOTENKH], [MAKHO], [NGAY], [MADATHANG], [MANV]) VALUES (N'PN03', N'Lương Thị Hà My', N'K3N1', CAST(N'2021-10-23' AS Date), N'DH03', 1)
INSERT [dbo].[PhieuXuat] ([MAPX], [HOTENKH], [MAKHO], [NGAY], [MANV]) VALUES (N'PX01', N'Trần Bích Thanh', N'K1N1', CAST(N'2019-06-30' AS Date), 1)
INSERT [dbo].[PhieuXuat] ([MAPX], [HOTENKH], [MAKHO], [NGAY], [MANV]) VALUES (N'PX03', N'Nguyễn Thị Ánh Hồng Thy', N'K4N1', CAST(N'2020-03-08' AS Date), 1)
INSERT [dbo].[PhieuXuat] ([MAPX], [HOTENKH], [MAKHO], [NGAY], [MANV]) VALUES (N'PX06', N'Vũ Thanh Lam', N'K3N2', CAST(N'2020-07-24' AS Date), 2)
INSERT [dbo].[Vattu] ([MAVT], [DVT], [SOLUONGTON], [TENVT], [PHOTO]) VALUES (N'BA01', N'Cái', 100, N'American Bag', N'211205094143-211019153726-americabag.png')
INSERT [dbo].[Vattu] ([MAVT], [DVT], [SOLUONGTON], [TENVT], [PHOTO]) VALUES (N'CA13', N'Cái', 20, N'Camera - Trống trộm', N'211019154002-camera.png')
INSERT [dbo].[Vattu] ([MAVT], [DVT], [SOLUONGTON], [TENVT], [PHOTO]) VALUES (N'DS01', N'Cái', 10, N'Đồng hồ Aqua', N'211019201621-watch.png')
INSERT [dbo].[Vattu] ([MAVT], [DVT], [SOLUONGTON], [TENVT], [PHOTO]) VALUES (N'KH01', N'Cái', 90, N'Khẩu trang chống dịch', N'211019142427-khautrang.png')
INSERT [dbo].[Vattu] ([MAVT], [DVT], [SOLUONGTON], [TENVT], [PHOTO]) VALUES (N'VR02', N'Cái', 5, N'Kính thực tế ảo 5D ', N'211019201406-vr.png')
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_3dhmpxf8rot2r6gffobmwn6ps]    Script Date: 12/9/2021 10:09:01 PM ******/
ALTER TABLE [dbo].[CTDDH] ADD  CONSTRAINT [UK_3dhmpxf8rot2r6gffobmwn6ps] UNIQUE NONCLUSTERED 
(
	[MaDDH] ASC,
	[MaVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_au14p2ilwr0ay9auk97kwcgld]    Script Date: 12/9/2021 10:09:01 PM ******/
ALTER TABLE [dbo].[CTPN] ADD  CONSTRAINT [UK_au14p2ilwr0ay9auk97kwcgld] UNIQUE NONCLUSTERED 
(
	[MaPN] ASC,
	[MaVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_7y5mbcojvdvdfie1skwca230v]    Script Date: 12/9/2021 10:09:01 PM ******/
ALTER TABLE [dbo].[CTPX] ADD  CONSTRAINT [UK_7y5mbcojvdvdfie1skwca230v] UNIQUE NONCLUSTERED 
(
	[MAPX] ASC,
	[MAVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UK_dyg4t99kxev46trij3u55x0vl]    Script Date: 12/9/2021 10:09:01 PM ******/
ALTER TABLE [dbo].[DangNhap] ADD  CONSTRAINT [UK_dyg4t99kxev46trij3u55x0vl] UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_74vk5r7hhb9q90y04l7p80a9]    Script Date: 12/9/2021 10:09:01 PM ******/
ALTER TABLE [dbo].[PhieuNhap] ADD  CONSTRAINT [UK_74vk5r7hhb9q90y04l7p80a9] UNIQUE NONCLUSTERED 
(
	[MADATHANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CTDDH]  WITH CHECK ADD  CONSTRAINT [FK_5c2ehvqwmkrvdol3di2nnxgj7] FOREIGN KEY([MaVT])
REFERENCES [dbo].[Vattu] ([MAVT])
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [FK_5c2ehvqwmkrvdol3di2nnxgj7]
GO
ALTER TABLE [dbo].[CTDDH]  WITH CHECK ADD  CONSTRAINT [FK_5w6r8ss89l8quxppu3gn0heow] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DatHang] ([MasoDDH])
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [FK_5w6r8ss89l8quxppu3gn0heow]
GO
ALTER TABLE [dbo].[CTPN]  WITH CHECK ADD  CONSTRAINT [FK_n90esnia2ci8duior6hwsaqs8] FOREIGN KEY([MaVT])
REFERENCES [dbo].[Vattu] ([MAVT])
GO
ALTER TABLE [dbo].[CTPN] CHECK CONSTRAINT [FK_n90esnia2ci8duior6hwsaqs8]
GO
ALTER TABLE [dbo].[CTPN]  WITH CHECK ADD  CONSTRAINT [FK_nkfgynj012w3r8jhrmio89lxp] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MAPN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTPN] CHECK CONSTRAINT [FK_nkfgynj012w3r8jhrmio89lxp]
GO
ALTER TABLE [dbo].[CTPX]  WITH CHECK ADD  CONSTRAINT [FK_1qh09jba5kxkiew77i4rejcb2] FOREIGN KEY([MAVT])
REFERENCES [dbo].[Vattu] ([MAVT])
GO
ALTER TABLE [dbo].[CTPX] CHECK CONSTRAINT [FK_1qh09jba5kxkiew77i4rejcb2]
GO
ALTER TABLE [dbo].[CTPX]  WITH CHECK ADD  CONSTRAINT [FK_beojx6tgko7wrhti4s2g4pgje] FOREIGN KEY([MAPX])
REFERENCES [dbo].[PhieuXuat] ([MAPX])
GO
ALTER TABLE [dbo].[CTPX] CHECK CONSTRAINT [FK_beojx6tgko7wrhti4s2g4pgje]
GO
ALTER TABLE [dbo].[DangNhap]  WITH CHECK ADD  CONSTRAINT [FK_dyg4t99kxev46trij3u55x0vl] FOREIGN KEY([TenDangNhap])
REFERENCES [dbo].[NhanVien] ([MANV])
GO
ALTER TABLE [dbo].[DangNhap] CHECK CONSTRAINT [FK_dyg4t99kxev46trij3u55x0vl]
GO
ALTER TABLE [dbo].[DatHang]  WITH CHECK ADD  CONSTRAINT [FK_b4qnkg023e8mm3xid1ecxq8y1] FOREIGN KEY([MANV])
REFERENCES [dbo].[NhanVien] ([MANV])
GO
ALTER TABLE [dbo].[DatHang] CHECK CONSTRAINT [FK_b4qnkg023e8mm3xid1ecxq8y1]
GO
ALTER TABLE [dbo].[DatHang]  WITH CHECK ADD  CONSTRAINT [FK_om03fwa03lcp1qsf8get4fdy] FOREIGN KEY([MAKHO])
REFERENCES [dbo].[Kho] ([MAKHO])
GO
ALTER TABLE [dbo].[DatHang] CHECK CONSTRAINT [FK_om03fwa03lcp1qsf8get4fdy]
GO
ALTER TABLE [dbo].[Kho]  WITH CHECK ADD  CONSTRAINT [FK_lnu9nltjgqj37gynt7gr178eq] FOREIGN KEY([MACN])
REFERENCES [dbo].[ChiNhanh] ([MACN])
GO
ALTER TABLE [dbo].[Kho] CHECK CONSTRAINT [FK_lnu9nltjgqj37gynt7gr178eq]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_2gy1urxvygkcu1e5hrnicmd6c] FOREIGN KEY([MACN])
REFERENCES [dbo].[ChiNhanh] ([MACN])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_2gy1urxvygkcu1e5hrnicmd6c]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_mqlc2s4djxyeolxmdqb8fw05y] FOREIGN KEY([Id_PhanQuyen])
REFERENCES [dbo].[PhanQuyen] ([Id_PhanQuyen])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_mqlc2s4djxyeolxmdqb8fw05y]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_51gffwfmjek459n0pmhy6exvi] FOREIGN KEY([MAKHO])
REFERENCES [dbo].[Kho] ([MAKHO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_51gffwfmjek459n0pmhy6exvi]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_74vk5r7hhb9q90y04l7p80a9] FOREIGN KEY([MADATHANG])
REFERENCES [dbo].[DatHang] ([MasoDDH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_74vk5r7hhb9q90y04l7p80a9]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_eda93o44o6062t6obuqxiltrh] FOREIGN KEY([MANV])
REFERENCES [dbo].[NhanVien] ([MANV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_eda93o44o6062t6obuqxiltrh]
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_ax11ol14vewuhfvaquocsptpx] FOREIGN KEY([MAKHO])
REFERENCES [dbo].[Kho] ([MAKHO])
GO
ALTER TABLE [dbo].[PhieuXuat] CHECK CONSTRAINT [FK_ax11ol14vewuhfvaquocsptpx]
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_ovqalr6453064bxlpfrji9o1y] FOREIGN KEY([MANV])
REFERENCES [dbo].[NhanVien] ([MANV])
GO
ALTER TABLE [dbo].[PhieuXuat] CHECK CONSTRAINT [FK_ovqalr6453064bxlpfrji9o1y]
GO
