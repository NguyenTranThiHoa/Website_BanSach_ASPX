USE [taikhoando]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 02/06/2024 1:27:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[id] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[email] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[status] [nvarchar](255) NOT NULL,
	[created_at] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dangnhap]    Script Date: 02/06/2024 1:27:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dangnhap](
	[id] [int] NOT NULL,
	[user_name] [varchar](255) NOT NULL,
	[password] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[description] [varchar](10) NULL,
 CONSTRAINT [PK__dangnhap__3213E83FF6B8A633] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[user_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_items]    Script Date: 02/06/2024 1:27:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_items](
	[id] [int] NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NOT NULL,
	[price] [varchar](100) NULL,
	[qty] [varchar](100) NULL,
	[ten] [nvarchar](100) NULL,
	[anh] [nvarchar](50) NULL,
	[total] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_order_items] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 02/06/2024 1:27:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] NOT NULL,
	[user_id] [int] NULL,
	[firstname] [nvarchar](255) NULL,
	[lastname] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[phone] [varchar](20) NULL,
	[email] [varchar](70) NULL,
	[status] [nvarchar](80) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK__orders__3213E83F7055B150] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phanloai]    Script Date: 02/06/2024 1:27:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phanloai](
	[id] [int] NOT NULL,
	[phanloai_name] [nvarchar](255) NULL,
 CONSTRAINT [PK__phanloai__3213E83F32C06A05] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 02/06/2024 1:27:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[id] [int] NOT NULL,
	[phanloai_id] [int] NOT NULL,
	[ten] [nvarchar](255) NULL,
	[gia] [int] NULL,
	[anh] [nvarchar](255) NULL,
	[mota] [nvarchar](500) NULL,
	[soluong] [int] NULL,
	[masp] [varchar](255) NULL,
 CONSTRAINT [PK__sanpham__3213E83FF29AE8EC] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[phanloai_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[dangnhap] ([id], [user_name], [password], [name], [description]) VALUES (0, N'tui', N'tui', N'tui', N'1')
INSERT [dbo].[dangnhap] ([id], [user_name], [password], [name], [description]) VALUES (1, N'hoa', N'hoa', N'hoa', N'1')
GO
INSERT [dbo].[order_items] ([id], [order_id], [product_id], [price], [qty], [ten], [anh], [total], [created_at], [updated_at]) VALUES (3, 5, 13, N'85000', N'1', N'Pháp luật đại cương', N'chinhtri5.jpg', 85000, CAST(N'2024-05-17T08:10:07.263' AS DateTime), CAST(N'2024-05-17T08:10:07.263' AS DateTime))
INSERT [dbo].[order_items] ([id], [order_id], [product_id], [price], [qty], [ten], [anh], [total], [created_at], [updated_at]) VALUES (4, 6, 11, N'120000', N'1', N'Bộ luật dân sự nam 2015', N'chinhtri3.jpg', 120000, CAST(N'2024-05-17T09:59:51.147' AS DateTime), CAST(N'2024-05-17T09:59:51.147' AS DateTime))
INSERT [dbo].[order_items] ([id], [order_id], [product_id], [price], [qty], [ten], [anh], [total], [created_at], [updated_at]) VALUES (5, 1, 11, N'120000', N'3', N'Bộ luật dân sự năm 2015', N'chinhtri3.jpg', 360000, CAST(N'2024-05-17T10:11:41.540' AS DateTime), CAST(N'2024-05-17T10:11:41.540' AS DateTime))
INSERT [dbo].[order_items] ([id], [order_id], [product_id], [price], [qty], [ten], [anh], [total], [created_at], [updated_at]) VALUES (6, 2, 12, N'160000', N'1', N'Bộ luật chính trị', N'chinhtri4.jpg', 160000, CAST(N'2024-05-17T10:19:15.397' AS DateTime), CAST(N'2024-05-17T10:19:15.397' AS DateTime))
INSERT [dbo].[order_items] ([id], [order_id], [product_id], [price], [qty], [ten], [anh], [total], [created_at], [updated_at]) VALUES (7, 3, 14, N'48000', N'1', N'Pháp luật mới cho gia dình', N'chinhtri6.png', 48000, CAST(N'2024-05-17T10:54:12.527' AS DateTime), CAST(N'2024-05-17T10:54:12.527' AS DateTime))
INSERT [dbo].[order_items] ([id], [order_id], [product_id], [price], [qty], [ten], [anh], [total], [created_at], [updated_at]) VALUES (8, 3, 19, N'49000', N'1', N'Khu rừng trong chai', N'thieunhi3.jpg', 49000, CAST(N'2024-05-17T10:54:12.533' AS DateTime), CAST(N'2024-05-17T10:54:12.533' AS DateTime))
INSERT [dbo].[order_items] ([id], [order_id], [product_id], [price], [qty], [ten], [anh], [total], [created_at], [updated_at]) VALUES (9, 4, 11, N'120000', N'1', N'Bộ luật dân sự năm 2015', N'chinhtri3.jpg', 120000, CAST(N'2024-05-28T23:26:28.470' AS DateTime), CAST(N'2024-05-28T23:26:28.470' AS DateTime))
GO
INSERT [dbo].[orders] ([id], [user_id], [firstname], [lastname], [address], [phone], [email], [status], [created_at], [updated_at]) VALUES (1, NULL, N'tui', N'Nguyễn Văn A', N'Đồng Tháp', N'077266585', N'hoanguyentranthi32@gmail.com', N'Đang vận chuyển', CAST(N'2024-05-17T10:11:41.163' AS DateTime), CAST(N'2024-05-17T10:11:41.163' AS DateTime))
INSERT [dbo].[orders] ([id], [user_id], [firstname], [lastname], [address], [phone], [email], [status], [created_at], [updated_at]) VALUES (2, NULL, N'hfsf', N'Nguyen Van B', N'Đồng Tháp', N'0255562344', N'hoanguyentranthi32@gmail.com', N'Xử lý', CAST(N'2024-05-17T10:19:15.100' AS DateTime), CAST(N'2024-05-17T10:19:15.100' AS DateTime))
INSERT [dbo].[orders] ([id], [user_id], [firstname], [lastname], [address], [phone], [email], [status], [created_at], [updated_at]) VALUES (3, NULL, N'tui', N'Nguyen Thi Hoa', N'Đồng Tháp', N'0255562344', N'hoanguyentranthi32@gmail.com', N'Đã giao', CAST(N'2024-05-17T10:54:12.060' AS DateTime), CAST(N'2024-05-17T10:54:12.060' AS DateTime))
GO
INSERT [dbo].[phanloai] ([id], [phanloai_name]) VALUES (1, N'Truyện, tiểu thuyết')
INSERT [dbo].[phanloai] ([id], [phanloai_name]) VALUES (2, N'Chính trị – pháp luật')
INSERT [dbo].[phanloai] ([id], [phanloai_name]) VALUES (3, N'Sách thiếu nhi')
INSERT [dbo].[phanloai] ([id], [phanloai_name]) VALUES (4, N'Văn hóa xã hội – Lịch sử')
INSERT [dbo].[phanloai] ([id], [phanloai_name]) VALUES (5, N'Tâm lý, tâm linh, tôn giáo')
GO
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (1, 1, N'Bắt chợt một chiều mưa', 80000, N'tieuthuyet1.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP01')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (2, 1, N'Cây bách xù', 85000, N'tieuthuyet2.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP02')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (3, 1, N'Người truyền kiếp', 95000, N'tieuthuyet3.png', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP03')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (4, 1, N'Anh chính là thanh xuân của em', 150000, N'tieuthuyet4.png', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP04')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (5, 1, N'Yêu anh hơn cả tử thần', 102000, N'tieuthuyet5.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP05')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (6, 1, N'Tiểu thuyết của Nam Cao', NULL, N'tieuthuyet6.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP06')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (7, 1, N'Tuyển tập Ngô Tất Tố', 96000, N'tieuthuyet7.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP07')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (8, 1, N'Không gia đình', 48000, N'tieuthuyet8.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP08')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (9, 2, N'Giá trị xã hội của pháp luật Việt Nam', 150000, N'chinhtri1.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP09')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (10, 2, N'Hiến pháp nước cộng hòa xã hội chủ nghĩa Việt Nam', 115000, N'chinhtri2.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP10')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (11, 2, N'Bộ luật dân sự năm 2015', 120000, N'chinhtri3.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP11')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (12, 2, N'Lý luận chính trị', 160000, N'chinhtri4.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP12')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (13, 2, N'Pháp luật đại cương', 85000, N'chinhtri5.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP13')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (14, 2, N'Pháp luật cho mọi gia đình', 48000, N'chinhtri6.png', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 100, N'SP14')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (15, 2, N'Hệ thống các nghị quyết của hội đồng thẩm phán', 115000, N'chinhtri7.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP15')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (16, 2, N'Vấn đề cơ bản về nhà nước và pháp luật Việt Nam', 118000, N'chinhtri8.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP16')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (17, 3, N'Cuốn sách dành cho trẻ em và những ai yêu trẻ em', 220000, N'thieunhi1.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP17')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (18, 3, N'Cá voi Eren đến hòn Mun', 160000, N'thieunhi2.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP18')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (19, 3, N'Khu rừng trong chai', 49000, N'thieunhi3.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP19')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (20, 3, N'Vừa nhắm mắt vừa mở cửa sổ', 112000, N'thieunhi4.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP20')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (21, 3, N'Khu rừng kì diệu', 89000, N'thieunhi5.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP21')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (22, 3, N'Truyện cổ tích thế giới', 116000, N'thieunhi6.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP22')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (23, 3, N'Phép lạ', 78000, N'thieunhi7.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP23')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (24, 3, N'Sự cao ngạo khiến tôi thật ngốc', 96000, N'thieunhi8.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP24')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (25, 4, N'Lịch sử thế giới theo dòng sự kiện', 116000, N'xahoi1.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP25')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (26, 4, N'Lịch sử nước ta', 100000, N'xahoi2.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP26')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (27, 4, N'Một chuyến du hành đến xứ Nam Hà', 180000, N'xahoi3.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP27')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (28, 4, N'Các nền văn hóa thế giới', 84000, N'xahoi4.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP28')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (29, 4, N'Các bậc vĩ nhân lập quốc trong lịch sử Việt Nam', 65000, N'xahoi5.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP29')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (30, 4, N'Đại cương lịch sử và văn hóa Ấn Độ', 130000, N'xahoi6.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP30')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (31, 4, N'Văn hóa vật chất và văn hóa xã hội thời kì Đại Việt', 87000, N'xahoi7.jpeg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP31')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (32, 4, N'Văn hóa văn học dưới góc nhìn liên khóc gian', 80000, N'xahoi8.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP32')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (33, 5, N'Chính trị tôn giáo thời Tự Đức', 136000, N'tongiao1.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP33')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (34, 5, N'Nguồn gốc các tôn giáo', 150000, N'tongiao2.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP34')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (35, 5, N'Tôn giáo RELIGIONS', 160000, N'tongiao3.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP35')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (36, 5, N'Tín ngưỡng văn hóa ở Việt Nam', 89000, N'tongiao4.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP36')
INSERT [dbo].[sanpham] ([id], [phanloai_id], [ten], [gia], [anh], [mota], [soluong], [masp]) VALUES (37, 5, N'Tìm hiểu lễ hội truyền thống trong đời sống người Việt', 142000, N'tongiao5.jpg', N'Cuốn sách này là một bảo bối, mỗi trang sách là một cánh cửa mở ra vô vàn kiến thức và trí tuệ. Đọc sách trong những buổi chiều mưa là một trải nghiệm thú vị, khi tâm hồn được làm mới và tinh thần trở nên sảng khoái hơn bao giờ hết.', 50, N'SP37')
GO
ALTER TABLE [dbo].[customers] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[customers] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[dangnhap] ADD  CONSTRAINT [DF__dangnhap__user_n__4D94879B]  DEFAULT (NULL) FOR [user_name]
GO
ALTER TABLE [dbo].[dangnhap] ADD  CONSTRAINT [DF__dangnhap__passwo__4E88ABD4]  DEFAULT (NULL) FOR [password]
GO
ALTER TABLE [dbo].[phanloai] ADD  CONSTRAINT [DF__phanloai__phanlo__5535A963]  DEFAULT (NULL) FOR [phanloai_name]
GO
ALTER TABLE [dbo].[sanpham] ADD  CONSTRAINT [DF__sanpham__phanloa__5812160E]  DEFAULT (NULL) FOR [phanloai_id]
GO
ALTER TABLE [dbo].[sanpham] ADD  CONSTRAINT [DF__sanpham__ten__59063A47]  DEFAULT (NULL) FOR [ten]
GO
ALTER TABLE [dbo].[sanpham] ADD  CONSTRAINT [DF__sanpham__anh__59FA5E80]  DEFAULT (NULL) FOR [anh]
GO
ALTER TABLE [dbo].[sanpham] ADD  CONSTRAINT [DF__sanpham__mota__5AEE82B9]  DEFAULT (NULL) FOR [mota]
GO
ALTER TABLE [dbo].[sanpham] ADD  CONSTRAINT [DF__sanpham__soluong__5BE2A6F2]  DEFAULT (NULL) FOR [soluong]
GO
ALTER TABLE [dbo].[sanpham] ADD  CONSTRAINT [DF__sanpham__masp__5CD6CB2B]  DEFAULT (NULL) FOR [masp]
GO
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_phanloai] FOREIGN KEY([phanloai_id])
REFERENCES [dbo].[phanloai] ([id])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_phanloai]
GO
