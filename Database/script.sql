CREATE DATABASE [Trade]
GO
USE [Trade]
/****** Object:  Table [dbo].[Order]    Script Date: 09.09.2022 21:05:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderComposition] [nvarchar](max) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[ClientName] [nvarchar](max) NULL,
	[OrderCode] [float] NOT NULL,
	[OrderStatus] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__Order__C3905BAFE2AB2522] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 09.09.2022 21:05:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 09.09.2022 21:05:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickupPoint](
	[PickupPointID] [int] IDENTITY(1,1) NOT NULL,
	[PickupPointIndex] [nvarchar](max) NOT NULL,
	[PickupPointCity] [nvarchar](max) NOT NULL,
	[PickupPointStreet] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PickupPoint] PRIMARY KEY CLUSTERED 
(
	[PickupPointID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 09.09.2022 21:05:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](256) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[ProductUnit] [nvarchar](max) NULL,
	[ProductCost] [int] NULL,
	[ProductMaxDiscount] [int] NULL,
	[ProductProvider] [nvarchar](max) NULL,
	[ProductManufacturer] [nvarchar](max) NULL,
	[ProductCategory] [nvarchar](max) NULL,
	[ProductDiscountAmount] [int] NULL,
	[ProductQuantityInStock] [int] NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[ProductPhoto] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 09.09.2022 21:05:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 09.09.2022 21:05:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [ClientName], [OrderCode], [OrderStatus]) VALUES (1, N'А112Т4, 2, T793T4, 3', CAST(N'2022-05-16T00:00:00.000' AS DateTime), CAST(N'2022-05-22T00:00:00.000' AS DateTime), 1, N'Ситникова Эмилия Степановна', 801, N'Завершен')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [ClientName], [OrderCode], [OrderStatus]) VALUES (2, N'G387Y6, 16, F573T5, 10', CAST(N'2022-05-16T00:00:00.000' AS DateTime), CAST(N'2022-05-22T00:00:00.000' AS DateTime), 14, N'Ситникова Эмилия Степановна', 802, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [ClientName], [OrderCode], [OrderStatus]) VALUES (3, N'D735T5, 20, B736H6, 20', CAST(N'2022-05-17T00:00:00.000' AS DateTime), CAST(N'2022-05-23T00:00:00.000' AS DateTime), 2, N'Воронцова Виктория Саввична', 803, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [ClientName], [OrderCode], [OrderStatus]) VALUES (4, N'H384H3, 2, K437E6, 2', CAST(N'2022-05-17T00:00:00.000' AS DateTime), CAST(N'2022-05-23T00:00:00.000' AS DateTime), 22, N'Ситникова Эмилия Степановна', 804, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [ClientName], [OrderCode], [OrderStatus]) VALUES (5, N'E732R7, 4, R836H6, 3', CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 2, N'Егоров Артём Евгеньевич', 805, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [ClientName], [OrderCode], [OrderStatus]) VALUES (6, N'F839R6, 4, G304H6, 4', CAST(N'2022-05-20T00:00:00.000' AS DateTime), CAST(N'2022-05-26T00:00:00.000' AS DateTime), 28, N'Ситникова Эмилия Степановна', 806, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [ClientName], [OrderCode], [OrderStatus]) VALUES (7, N'C430T4, 10, C946Y6, 3', CAST(N'2022-05-22T00:00:00.000' AS DateTime), CAST(N'2022-05-28T00:00:00.000' AS DateTime), 3, N'Ситникова Эмилия Степановна', 807, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [ClientName], [OrderCode], [OrderStatus]) VALUES (8, N'V403G6, 5, B963H5, 5', CAST(N'2022-05-22T00:00:00.000' AS DateTime), CAST(N'2022-05-28T00:00:00.000' AS DateTime), 32, N'Ситникова Эмилия Степановна', 808, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [ClientName], [OrderCode], [OrderStatus]) VALUES (9, N'V026J4, 2, V727Y6, 2', CAST(N'2022-05-24T00:00:00.000' AS DateTime), CAST(N'2022-05-30T00:00:00.000' AS DateTime), 5, N'Ситникова Эмилия Степановна', 809, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [ClientName], [OrderCode], [OrderStatus]) VALUES (10, N'C635Y6, 2, W405G6, 2', CAST(N'2022-05-24T00:00:00.000' AS DateTime), CAST(N'2022-05-30T00:00:00.000' AS DateTime), 36, N'Софронов Ярослав Игоревич', 810, N'Новый ')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[PickupPoint] ON 

INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (1, N'344288', N' г. Талнах', N' ул. Чехова 1')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (2, N'614164', N' г.Талнах', N'  ул. Степная 30')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (3, N'394242', N' г. Талнах', N' ул. Коммунистическая 43')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (4, N'660540', N' г. Талнах', N' ул. Солнечная 25')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (5, N'125837', N' г. Талнах', N' ул. Шоссейная 40')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (6, N'125703', N' г. Талнах', N' ул. Партизанская 49')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (7, N'625283', N' г. Талнах', N' ул. Победы 46')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (8, N'614611', N' г. Талнах', N' ул. Молодежная 50')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (9, N'454311', N' г.Талнах', N' ул. Новая 19')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (10, N'660007', N' г.Талнах', N' ул. Октябрьская 19')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (11, N'603036', N' г. Талнах', N' ул. Садовая 4')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (12, N'450983', N' г.Талнах', N' ул. Комсомольская 26')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (13, N'394782', N' г. Талнах', N' ул. Чехова 3')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (14, N'603002', N' г. Талнах', N' ул. Дзержинского 28')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (15, N'450558', N' г. Талнах', N' ул. Набережная 30')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (16, N'394060', N' г.Талнах', N' ул. Фрунзе 43')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (17, N'410661', N' г. Талнах', N' ул. Школьная 50')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (18, N'625590', N' г. Талнах', N' ул. Коммунистическая 20')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (19, N'625683', N' г. Талнах', N' ул. 8 Марта ')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (20, N'400562', N' г. Талнах', N' ул. Зеленая 32')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (21, N'614510', N' г. Талнах', N' ул. Маяковского 47')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (22, N'410542', N' г. Талнах', N' ул. Светлая 46')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (23, N'620839', N' г. Талнах', N' ул. Цветочная 8')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (24, N'443890', N' г. Талнах', N' ул. Коммунистическая 1')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (25, N'603379', N' г. Талнах', N' ул. Спортивная 46')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (26, N'603721', N' г. Талнах', N' ул. Гоголя 41')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (27, N'410172', N' г. Талнах', N' ул. Северная 13')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (28, N'420151', N' г. Талнах', N' ул. Вишневая 32')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (29, N'125061', N' г. Талнах', N' ул. Подгорная 8')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (30, N'630370', N' г. Талнах', N' ул. Шоссейная 24')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (31, N'614753', N' г. Талнах', N' ул. Полевая 35')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (32, N'426030', N' г. Талнах', N' ул. Маяковского 44')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (33, N'450375', N' г. Талнах', N' ул. Клубная 44')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (34, N'625560', N' г. Талнах', N' ул. Некрасова 12')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (35, N'630201', N' г. Талнах', N' ул. Комсомольская 17')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointIndex], [PickupPointCity], [PickupPointStreet]) VALUES (36, N'190949', N' г. Талнах', N' ул. Мичурина 26')
SET IDENTITY_INSERT [dbo].[PickupPoint] OFF
GO
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'B963H5', N'Ложка', N'шт.', 800, 0, N'Smart Home', N'LeroiMerlin', N'Ложки', 0, 9, N'Ложка металическая', N'/Resources/Images/034f3dd7-c44d-479e-9f59-711251d412bb.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'C430T4', N'Набор на одну персону', N'шт.', 1600, 30, N'Attribute', N'LeroiMerlin', N'наборы', 3, 6, N'Набор на одну персону (4 предмета) серия "Bistro", нерж. сталь, Was, Германия.', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'C635Y6', N'Детский столовый набор', N'шт.', 1000, 15, N'Apollo', N'Максидом', N'наборы', 4, 25, N'Детский столовый набор Fissman «Зебра» ', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'C730R7', N'Ложка детская', N'шт.', 300, 5, N'Smart Home', N'LeroiMerlin', N'Ложки', 3, 17, N'Ложка детская столовая', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'C943G5', N'Набор чайных ложек', N'шт.', 200, 5, N'Attribute', N'Максидом', N'наборы', 4, 12, N'Attribute Набор чайных ложек Baguette 3 предмета серебристый', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'C946Y6', N'Вилка столовая', N'шт.', 300, 15, N'Apollo', N'LeroiMerlin', N'Вилки', 2, 16, N'Вилка детская столовая', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'D735T5', N'Ложка чайная', N'шт.', 220, 5, N'Alaska', N'LeroiMerlin', N'Ложки', 2, 13, N'Ложка чайная ALASKA Eternum', N'/Resources/Images/D735T5.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'E732R7', N'Набор столовых приборов', N'шт.', 990, 15, N'Smart Home', N'Максидом', N'наборы', 5, 6, N'Набор столовых приборов Smart Home20 Black в подарочной коробке, 4 шт', N'/Resources/Images/E732R7.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'F392G6', N'Набор столовых приборов', N'шт.', 490, 10, N'Apollo', N'LeroiMerlin', N'наборы', 4, 9, N'Apollo Набор столовых приборов Chicago 4 предмета серебристый', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'F573T5', N'Вилки столовые', N'шт.', 650, 15, N'Davinci', N'Максидом', N'вилки', 3, 4, N'Вилки столовые на блистере / 6 шт.', N'/Resources/Images/F573T5.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'F745K4', N'Столовые приборы для салата', N'шт.', 2000, 10, N'Mayer & Boch', N'LeroiMerlin', N'наборы', 3, 2, N'Столовые приборы для салата Orskov Lava, 2шт', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'F839R6', N'Ложка чайная', N'шт.', 400, 15, N'Doria', N'Максидом', N'Ложки', 2, 6, N'Ложка чайная DORIA Eternum', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'G304H6', N'Набор ложек', N'шт.', 500, 5, N'Apollo', N'Максидом', N'Ложки', 4, 12, N'Набор ложек столовых APOLLO "Bohemica" 3 пр.', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'G387Y6', N'Ложка столовая', N'шт.', 441, 5, N'Doria', N'Максидом', N'Ложки', 4, 23, N'Ложка столовая DORIA L=195/60 мм Eternum', N'/Resources/Images/G387Y6.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'H384H3', N'Набор столовых приборов', N'шт.', 600, 15, N'Apollo', N'Максидом', N'наборы', 2, 9, N'Набор столовых приборов для торта Palette 7 предметов серебристый', N'/Resources/Images/H384H3.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'H495H6', N'Набор стейковых ножей', N'шт.', 7000, 15, N'Mayer & Boch', N'LeroiMerlin', N'ножи', 2, 15, N'Набор стейковых ножей 4 пр. в деревянной коробке', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'K437E6', N'Набор вилок', N'шт.', 530, 5, N'Apollo', N'Максидом', N'наборы', 3, 16, N'Набор вилок столовых APOLLO "Aurora" 3шт.', N'/Resources/Images/K437E6.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'L593H5', N'набор ножей', N'шт.', 1300, 25, N'Mayer & Boch', N'Максидом', N'наборы', 5, 14, N'Набор ножей Mayer & Boch, 4 шт', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'N493G6', N'Набор для серверовки', N'шт.', 2550, 15, N'Smart Home', N'LeroiMerlin', N'наборы', 4, 6, N'Набор для сервировки сыра Select', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'R836H6', N'Набор  столовых ножей', N'шт.', 250, 5, N'Attribute', N'LeroiMerlin', N'ножи', 3, 16, N'Attribute Набор столовых ножей Baguette 2 предмета серебристый', N'/Resources/Images/R836H6.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'S394J5', N'Набор чайных ложек', N'шт.', 170, 5, N'Attribute', N'LeroiMerlin', N'наборы', 3, 4, N'Attribute Набор чайных ложек Chaplet 3 предмета серебристый', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'S395B5', N'Нож для стейка', N'шт.', 600, 10, N'Apollo', N'LeroiMerlin', N'ножи', 4, 15, N'Нож для стейка 11,5 см серебристый/черный', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'T793T4', N'Набор ложек', N'шт.', 250, 10, N'Attribute', N'LeroiMerlin', N'Ложки', 3, 16, N'Набор столовых ложек Baguette 3 предмета серебристый', N'/Resources/Images/T793T4.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'V026J4', N'набор ножей', N'шт.', 700, 15, N'Apollo', N'Максидом', N'наборы', 3, 9, N'абор ножей для стейка и пиццы Swiss classic 2 шт. желтый', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'V403G6', N'Ложка чайная', N'шт.', 600, 15, N'Doria', N'Максидом', N'Ложки', 5, 24, N'Ложка чайная DORIA Eternum', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'V727Y6', N'Набор десертных ложек', N'шт.', 3000, 10, N'Mayer & Boch', N'LeroiMerlin', N'Ложки', 4, 8, N'Набор десертных ложек на подставке Размер: 7*7*15 см', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'W295Y5', N'Сервировочный набор для торта', N'шт.', 1100, 15, N'Attribute', N'Максидом', N'наборы', 2, 16, N'Набор сервировочный для торта "Розанна"', N'/Resources/Images/default.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductMaxDiscount], [ProductProvider], [ProductManufacturer], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'W405G6', N'Набор столовых приборов', N'шт.', 1300, 25, N'Attribute', N'LeroiMerlin', N'наборы', 3, 4, N'Набор сервировочных столовых вилок Цветы', N'/Resources/Images/default.png')
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Администратор')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Савицкая  ', N'Арина', N'Саввична', N'1y3lj8w0viop@outlook.com', N'2L6KZG', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Мартынов ', N'Максим ', N'Михайлович', N'3o698uk5c0rw@tutanota.com', N'uzWC67', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Зубов  ', N'Александр', N'Дамирович', N'lx24fvrt1aip@yahoo.com', N'8ntwUp', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Попов ', N'Даниил ', N'Олегович', N's8z076vku95j@gmail.com', N'YOyhfR', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Семенов  ', N'Михаил', N'Никитич', N'n3bxm7f2q5i4@outlook.com', N'RSbvHv', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Дмитриева  ', N'Надежда', N'Вячеславовна', N'r7dztn8a5ihq@mail.com', N'rwVDh9', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Воронцова  ', N'Виктория', N'Саввична', N'vofgck2m39hq@gmail.com', N'LdNyos', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Софронов ', N'Ярослав', N' Игоревич', N's6q9tevybado@yahoo.com', N'gynQMT', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Егоров  ', N'Артём', N'Евгеньевич', N'p7wuls3dtq9v@yahoo.com', N'AtnDjr', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Ситникова  ', N'Эмилия', N'Степановна', N'rdn04s1u2ckb@mail.com', N'JlFRCZ', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_ProductPhoto]  DEFAULT ('default.png') FOR [ProductPhoto]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickupPoint] FOREIGN KEY([OrderPickupPoint])
REFERENCES [dbo].[PickupPoint] ([PickupPointID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickupPoint]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK__OrderProd__Order__2D27B809] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK__OrderProd__Order__2D27B809]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_OrderProduct] FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ProductArticleNumber])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_OrderProduct]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
