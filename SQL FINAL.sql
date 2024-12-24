USE [master]
GO
/****** Object:  Database [AssPRJ]    Script Date: 3/5/2024 10:01:29 PM ******/
CREATE DATABASE [MINISOFT]
GO
USE [MINISOFT]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/5/2024 10:01:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerName] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[roleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/5/2024 10:01:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[amount] [int] NULL,
	[createAt] [datetime] NULL,
	[note] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[phone] [nvarchar](15) NULL,
	[email] [nvarchar](50) NULL,
	[accountId] [int] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 3/5/2024 10:01:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[productId] [int] NULL,
	[orderId] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/5/2024 10:01:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[typeID] [int] NULL,
	[productName] [nvarchar](max) NOT NULL,
	[price] [int] NOT NULL,
	[stockQuantity] [int] NOT NULL,
	[image] [nvarchar](max) NULL,
 CONSTRAINT [PK__Products__B40CC6EDAEC70205] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypes]    Script Date: 3/5/2024 10:01:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/5/2024 10:01:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([id], [customerName], [email], [password], [roleId]) VALUES (1, N'Nguyen Van A', N'a.nguyen@email.com', N'password1234', 2)
GO
INSERT [dbo].[Customer] ([id], [customerName], [email], [password], [roleId]) VALUES (2, N'Tran Thi B', N'b.tran@email.com', N'password5678', 2)
GO
INSERT [dbo].[Customer] ([id], [customerName], [email], [password], [roleId]) VALUES (3, N'Le Van C', N'c.le@email.com', N'password9012', 2)
GO
INSERT [dbo].[Customer] ([id], [customerName], [email], [password], [roleId]) VALUES (4, N'Pham Thi D', N'd.pham@email.com', N'password3456', 2)
GO
INSERT [dbo].[Customer] ([id], [customerName], [email], [password], [roleId]) VALUES (5, N'Hoang Van E', N'e.hoang@email.com', N'password7890', 2)
GO
INSERT [dbo].[Customer] ([id], [customerName], [email], [password], [roleId]) VALUES (6, N'Vu Thi F', N'f.vu@email.com', N'passwordabcd', 2)
GO
INSERT [dbo].[Customer] ([id], [customerName], [email], [password], [roleId]) VALUES (7, N'Bui Van G', N'g.bui@email.com', N'passwordefgh', 2)
GO
INSERT [dbo].[Customer] ([id], [customerName], [email], [password], [roleId]) VALUES (8, N'Do Thi H', N'h.do@email.com', N'passwordijkl', 2)
GO
INSERT [dbo].[Customer] ([id], [customerName], [email], [password], [roleId]) VALUES (9, N'Ly Van I', N'i.ly@email.com', N'passwordmnop', 2)
GO
INSERT [dbo].[Customer] ([id], [customerName], [email], [password], [roleId]) VALUES (10, N'Dang Thi J', N'j.dang@email.com', N'passwordqrst', 2)
GO
INSERT [dbo].[Customer] ([id], [customerName], [email], [password], [roleId]) VALUES (11, N'huy322003', N'nhhuy322003@gmail.com', N'1234', 2)
GO
INSERT [dbo].[Customer] ([id], [customerName], [email], [password], [roleId]) VALUES (12, N'user', N'1', N'1', 2)
GO
INSERT [dbo].[Customer] ([id], [customerName], [email], [password], [roleId]) VALUES (13, N'admin', N'admin@gmail.com', N'1', 1)
GO
INSERT [dbo].[Customer] ([id], [customerName], [email], [password], [roleId]) VALUES (14, N'user1', N'123@gmail.com', N'123', 2)
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([id], [amount], [createAt], [note], [address], [phone], [email], [accountId]) VALUES (1, 550000, CAST(N'2023-11-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 12)
GO
INSERT [dbo].[Order] ([id], [amount], [createAt], [note], [address], [phone], [email], [accountId]) VALUES (2, 550000, CAST(N'2023-11-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 12)
GO
INSERT [dbo].[Order] ([id], [amount], [createAt], [note], [address], [phone], [email], [accountId]) VALUES (3, 1300000, CAST(N'2023-11-02T23:40:35.197' AS DateTime), NULL, NULL, NULL, NULL, 12)
GO
INSERT [dbo].[Order] ([id], [amount], [createAt], [note], [address], [phone], [email], [accountId]) VALUES (4, 1850000, CAST(N'2023-11-03T01:17:51.180' AS DateTime), NULL, NULL, NULL, NULL, 12)
GO
INSERT [dbo].[Order] ([id], [amount], [createAt], [note], [address], [phone], [email], [accountId]) VALUES (5, 550000, CAST(N'2023-11-03T01:23:31.437' AS DateTime), NULL, NULL, NULL, NULL, 12)
GO
INSERT [dbo].[Order] ([id], [amount], [createAt], [note], [address], [phone], [email], [accountId]) VALUES (6, 750000, CAST(N'2023-11-06T20:10:26.907' AS DateTime), NULL, NULL, NULL, NULL, 12)
GO
INSERT [dbo].[Order] ([id], [amount], [createAt], [note], [address], [phone], [email], [accountId]) VALUES (7, 500000, CAST(N'2023-11-06T20:22:33.360' AS DateTime), NULL, NULL, NULL, NULL, 12)
GO
INSERT [dbo].[Order] ([id], [amount], [createAt], [note], [address], [phone], [email], [accountId]) VALUES (8, 500000, CAST(N'2023-11-06T21:03:26.840' AS DateTime), N'', N'haf noi', N'0911234567', N'', 12)
GO
INSERT [dbo].[Order] ([id], [amount], [createAt], [note], [address], [phone], [email], [accountId]) VALUES (9, 500000, CAST(N'2024-03-03T16:09:40.960' AS DateTime), NULL, NULL, NULL, NULL, 12)
GO
INSERT [dbo].[Order] ([id], [amount], [createAt], [note], [address], [phone], [email], [accountId]) VALUES (10, 500000, CAST(N'2024-03-05T02:28:22.460' AS DateTime), NULL, NULL, NULL, NULL, 14)
GO
INSERT [dbo].[Order] ([id], [amount], [createAt], [note], [address], [phone], [email], [accountId]) VALUES (11, 1200000, CAST(N'2024-03-05T20:58:40.610' AS DateTime), NULL, NULL, NULL, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 
GO
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (1, 1, 1, 2)
GO
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (2, 1, 2, 2)
GO
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (3, 4, 2, 3)
GO
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (4, 1, 3, 3)
GO
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (5, 2, NULL, 4)
GO
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (6, 4, NULL, 4)
GO
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (7, 1, NULL, 4)
GO
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (8, 1, 1, 5)
GO
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (9, 1, 2, 5)
GO
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (10, 3, 1, 6)
GO
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (11, 2, 1, 7)
GO
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (12, 1, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (13, 2, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (14, 2, 1, 8)
GO
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (15, 2, 1, 9)
GO
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (16, 2, 1, 10)
GO
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (17, 4, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (1, 2, N'Product xx', 250000, 100, N'/Shoes_Shop/images/air-jordan-1-retro-high-og-black-white-mens-shoes-Tz18l4.png')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (2, 1, N'Product xx', 300000, 80, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (3, 1, N'Product xx', 150000, 120, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (4, 1, N'Product xx', 180000, 90, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (5, 5, N'Product xx', 500000, 50, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (6, 6, N'Product xx', 350000, 70, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (7, 7, N'Product xx', 400000, 60, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (8, 8, N'Product xx', 280000, 110, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (9, 9, N'Product xx', 230000, 130, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (10, 10, N'Product xx', 450000, 65, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (11, 1, N'Product xx', 150000, 100, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (12, 12, N'Product xx', 250000, 90, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (13, 13, N'Product xx', 120000, 110, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (14, 14, N'Product xx', 200000, 80, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (15, 15, N'Product xx', 400000, 60, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (16, 16, N'Product xx', 350000, 70, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (17, 17, N'Product xx', 500000, 55, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (18, 18, N'Product xx', 300000, 95, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (19, 19, N'Product xx', 170000, 105, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (20, 20, N'Product xx', 450000, 65, N'/Shoes_Shop/images/giay-Nike-Air-Force-1-Low-Premium-White-Brown-808788-996-AF1-vien-nau-like-auth-sieu-cap-gia-re-ha-noi-3848972867.jpg')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (21, 2, N'Product xx', 123, 123, N'/Shoes_Shop/images/air-jordan-1-retro-high-og-black-white-mens-shoes-Tz18l4.png')
GO
INSERT [dbo].[Products] ([productID], [typeID], [productName], [price], [stockQuantity], [image]) VALUES (22, 2, N'Product xx', 123, 123, N'/Shoes_Shop/images/air-jordan-1-retro-high-og-black-white-mens-shoes-Tz18l4.png')
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductTypes] ON 
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (1, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (2, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (3, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (4, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (5, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (6, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (7, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (8, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (9, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (10, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (11, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (12, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (13, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (14, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (15, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (16, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (17, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (18, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (19, N'Product Type xx ')
GO
INSERT [dbo].[ProductTypes] ([id], [name]) VALUES (20, N'Product Type xx ')
GO
SET IDENTITY_INSERT [dbo].[ProductTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 
GO
INSERT [dbo].[Role] ([id], [name]) VALUES (1, N'admin')
GO
INSERT [dbo].[Role] ([id], [name]) VALUES (2, N'user')
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__AB6E61640FBCB5C1]    Script Date: 3/5/2024 10:01:29 PM ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Table_1_createAt]  DEFAULT (getdate()) FOR [createAt]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Role]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__TypeID__398D8EEE] FOREIGN KEY([typeID])
REFERENCES [dbo].[ProductTypes] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__TypeID__398D8EEE]
GO
USE [master]
GO
ALTER DATABASE [AssPRJ] SET  READ_WRITE 
GO
