USE [MvcDbStok]
GO
/****** Object:  Table [dbo].[TBLKATEGORILER]    Script Date: 9.05.2020 15:08:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLKATEGORILER](
	[KATEGORIID] [smallint] IDENTITY(1,1) NOT NULL,
	[KATEGORIAD] [varchar](50) NULL,
 CONSTRAINT [PK_TBLKATEGORILER] PRIMARY KEY CLUSTERED 
(
	[KATEGORIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLMUSTERILER]    Script Date: 9.05.2020 15:08:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLMUSTERILER](
	[MUSTERIID] [int] IDENTITY(1,1) NOT NULL,
	[MUSTERIAD] [varchar](50) NULL,
	[MUSTERISOYAD] [varchar](50) NULL,
 CONSTRAINT [PK_TBLMUSTERILER] PRIMARY KEY CLUSTERED 
(
	[MUSTERIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLSATISLAR]    Script Date: 9.05.2020 15:08:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLSATISLAR](
	[SATISID] [int] IDENTITY(1,1) NOT NULL,
	[URUN] [int] NULL,
	[MUSTERI] [int] NULL,
	[ADET] [tinyint] NULL,
	[FIYAT] [decimal](18, 2) NULL,
 CONSTRAINT [PK_TBLSATISLAR] PRIMARY KEY CLUSTERED 
(
	[SATISID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLURUNLER]    Script Date: 9.05.2020 15:08:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLURUNLER](
	[URUNID] [int] IDENTITY(1,1) NOT NULL,
	[URUNAD] [varchar](50) NULL,
	[MARKA] [varchar](50) NULL,
	[URUNKATEGORI] [smallint] NULL,
	[FIYAT] [decimal](18, 2) NULL,
	[STOK] [tinyint] NULL,
 CONSTRAINT [PK_TBLURUNLER] PRIMARY KEY CLUSTERED 
(
	[URUNID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TBLSATISLAR]  WITH CHECK ADD  CONSTRAINT [FK_TBLSATISLAR_TBLMUSTERILER] FOREIGN KEY([MUSTERI])
REFERENCES [dbo].[TBLMUSTERILER] ([MUSTERIID])
GO
ALTER TABLE [dbo].[TBLSATISLAR] CHECK CONSTRAINT [FK_TBLSATISLAR_TBLMUSTERILER]
GO
ALTER TABLE [dbo].[TBLSATISLAR]  WITH CHECK ADD  CONSTRAINT [FK_TBLSATISLAR_TBLURUNLER] FOREIGN KEY([URUN])
REFERENCES [dbo].[TBLURUNLER] ([URUNID])
GO
ALTER TABLE [dbo].[TBLSATISLAR] CHECK CONSTRAINT [FK_TBLSATISLAR_TBLURUNLER]
GO
ALTER TABLE [dbo].[TBLURUNLER]  WITH CHECK ADD  CONSTRAINT [FK_TBLURUNLER_TBLKATEGORILER] FOREIGN KEY([URUNKATEGORI])
REFERENCES [dbo].[TBLKATEGORILER] ([KATEGORIID])
GO
ALTER TABLE [dbo].[TBLURUNLER] CHECK CONSTRAINT [FK_TBLURUNLER_TBLKATEGORILER]
GO
