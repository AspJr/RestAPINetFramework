USE [DBTest]
GO
/****** Object:  Table [dbo].[TBL_MARKETING]    Script Date: 07/11/2024 09:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_MARKETING](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL,
 CONSTRAINT [PK_TBL_MARKETING] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_PEMBAYARAN]    Script Date: 07/11/2024 09:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_PEMBAYARAN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KodePelanggan] [varchar](10) NULL,
	[NamaPelanggan] [varchar](50) NULL,
	[Date] [date] NULL,
	[JumlahPembayaran] [float] NULL,
	[JenisPembayaran] [varchar](50) NULL,
	[TransactionNumber] [varchar](10) NULL,
	[Keterangan] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_PEMBAYARAN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_PENJUALAN]    Script Date: 07/11/2024 09:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_PENJUALAN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Transaction_Number] [varchar](10) NULL,
	[Marketing_ID] [int] NULL,
	[Date] [date] NULL,
	[Cargo_Fee] [float] NULL,
	[Total_Balance] [float] NULL,
	[Grand_Total] [float] NULL,
 CONSTRAINT [PK_TBL_PENJUALAN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TBL_MARKETING] ON 

INSERT [dbo].[TBL_MARKETING] ([ID], [Name]) VALUES (1, N'Alfandy                                           ')
INSERT [dbo].[TBL_MARKETING] ([ID], [Name]) VALUES (2, N'Merry Riana                                       ')
INSERT [dbo].[TBL_MARKETING] ([ID], [Name]) VALUES (3, N'Danang                                            ')
SET IDENTITY_INSERT [dbo].[TBL_MARKETING] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_PEMBAYARAN] ON 

INSERT [dbo].[TBL_PEMBAYARAN] ([ID], [KodePelanggan], [NamaPelanggan], [Date], [JumlahPembayaran], [JenisPembayaran], [TransactionNumber], [Keterangan]) VALUES (1, N'P1', N'Andika Prasetya', CAST(N'2024-05-22' AS Date), 2000000, N'Kredit', N'TRX001', NULL)
INSERT [dbo].[TBL_PEMBAYARAN] ([ID], [KodePelanggan], [NamaPelanggan], [Date], [JumlahPembayaran], [JenisPembayaran], [TransactionNumber], [Keterangan]) VALUES (1001, N'P2', N'Arief', CAST(N'2024-05-23' AS Date), 300000000, N'Kredit', N'TRX002', N'-')
INSERT [dbo].[TBL_PEMBAYARAN] ([ID], [KodePelanggan], [NamaPelanggan], [Date], [JumlahPembayaran], [JenisPembayaran], [TransactionNumber], [Keterangan]) VALUES (1002, N'P3', N'Hizam', CAST(N'2024-06-23' AS Date), 350000000, N'Kredit', N'TRX003', N'-')
INSERT [dbo].[TBL_PEMBAYARAN] ([ID], [KodePelanggan], [NamaPelanggan], [Date], [JumlahPembayaran], [JenisPembayaran], [TransactionNumber], [Keterangan]) VALUES (1003, N'P5', N'Adzriel', CAST(N'2024-01-01' AS Date), 450000000, N'Kredit', N'TRX001', N'')
INSERT [dbo].[TBL_PEMBAYARAN] ([ID], [KodePelanggan], [NamaPelanggan], [Date], [JumlahPembayaran], [JenisPembayaran], [TransactionNumber], [Keterangan]) VALUES (1007, N'P7', N'Tester', CAST(N'2024-02-01' AS Date), 470000000, N'Kredit', N'TRX003', N'')
INSERT [dbo].[TBL_PEMBAYARAN] ([ID], [KodePelanggan], [NamaPelanggan], [Date], [JumlahPembayaran], [JenisPembayaran], [TransactionNumber], [Keterangan]) VALUES (1008, N'P7', N'Tester', CAST(N'2024-02-01' AS Date), 470000000, N'Kredit', N'TRX003', N'')
INSERT [dbo].[TBL_PEMBAYARAN] ([ID], [KodePelanggan], [NamaPelanggan], [Date], [JumlahPembayaran], [JenisPembayaran], [TransactionNumber], [Keterangan]) VALUES (1009, N'P7', N'Tester', CAST(N'2024-02-01' AS Date), 470000000, N'Kredit', N'TRX003', N'')
SET IDENTITY_INSERT [dbo].[TBL_PEMBAYARAN] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_PENJUALAN] ON 

INSERT [dbo].[TBL_PENJUALAN] ([ID], [Transaction_Number], [Marketing_ID], [Date], [Cargo_Fee], [Total_Balance], [Grand_Total]) VALUES (1, N'TRX001', 1, CAST(N'2024-05-22' AS Date), 25000, 3000000, 3025000)
INSERT [dbo].[TBL_PENJUALAN] ([ID], [Transaction_Number], [Marketing_ID], [Date], [Cargo_Fee], [Total_Balance], [Grand_Total]) VALUES (2, N'TRX002', 3, CAST(N'2024-05-22' AS Date), 25000, 320000, 345000)
INSERT [dbo].[TBL_PENJUALAN] ([ID], [Transaction_Number], [Marketing_ID], [Date], [Cargo_Fee], [Total_Balance], [Grand_Total]) VALUES (3, N'TRX003', 1, CAST(N'2024-05-22' AS Date), 0, 65000000, 65000000)
INSERT [dbo].[TBL_PENJUALAN] ([ID], [Transaction_Number], [Marketing_ID], [Date], [Cargo_Fee], [Total_Balance], [Grand_Total]) VALUES (4, N'TRX004', 1, CAST(N'2024-05-23' AS Date), 10000, 70000000, 70010000)
INSERT [dbo].[TBL_PENJUALAN] ([ID], [Transaction_Number], [Marketing_ID], [Date], [Cargo_Fee], [Total_Balance], [Grand_Total]) VALUES (5, N'TRX005', 2, CAST(N'2024-05-23' AS Date), 10000, 80000000, 80010000)
INSERT [dbo].[TBL_PENJUALAN] ([ID], [Transaction_Number], [Marketing_ID], [Date], [Cargo_Fee], [Total_Balance], [Grand_Total]) VALUES (6, N'TRX006', 3, CAST(N'2024-05-23' AS Date), 12000, 44000000, 44012000)
INSERT [dbo].[TBL_PENJUALAN] ([ID], [Transaction_Number], [Marketing_ID], [Date], [Cargo_Fee], [Total_Balance], [Grand_Total]) VALUES (7, N'TRX007', 1, CAST(N'2024-06-01' AS Date), 0, 75000000, 75000000)
INSERT [dbo].[TBL_PENJUALAN] ([ID], [Transaction_Number], [Marketing_ID], [Date], [Cargo_Fee], [Total_Balance], [Grand_Total]) VALUES (8, N'TRX008', 2, CAST(N'2024-06-02' AS Date), 0, 85000000, 85000000)
INSERT [dbo].[TBL_PENJUALAN] ([ID], [Transaction_Number], [Marketing_ID], [Date], [Cargo_Fee], [Total_Balance], [Grand_Total]) VALUES (9, N'TRX009', 2, CAST(N'2024-06-01' AS Date), 0, 175000000, 175000000)
INSERT [dbo].[TBL_PENJUALAN] ([ID], [Transaction_Number], [Marketing_ID], [Date], [Cargo_Fee], [Total_Balance], [Grand_Total]) VALUES (10, N'TRX010', 3, CAST(N'2024-06-01' AS Date), 0, 75000000, 75000000)
INSERT [dbo].[TBL_PENJUALAN] ([ID], [Transaction_Number], [Marketing_ID], [Date], [Cargo_Fee], [Total_Balance], [Grand_Total]) VALUES (11, N'TRX011', 2, CAST(N'2024-06-01' AS Date), 0, 750020000, 750020000)
INSERT [dbo].[TBL_PENJUALAN] ([ID], [Transaction_Number], [Marketing_ID], [Date], [Cargo_Fee], [Total_Balance], [Grand_Total]) VALUES (12, N'TRX012', 3, CAST(N'2024-06-01' AS Date), 0, 130000000, 120000000)
SET IDENTITY_INSERT [dbo].[TBL_PENJUALAN] OFF
GO
/****** Object:  StoredProcedure [dbo].[CrudMarketing]    Script Date: 07/11/2024 09:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author		: Asep Maulana
-- Create date  : 05-10-2024
-- Description	: -
-- =============================================

CREATE PROC [dbo].[CrudMarketing](@ID INTEGER, @Name VARCHAR(50), @Code INTEGER)
AS
select * from TBL_MARKETING
BEGIN
IF (@ID = 0)
	BEGIN
		IF (@Code = 1)
		BEGIN
			INSERT INTO TBL_MARKETING(Name)
			VALUES(@Name)
		END
		ELSE IF (@Code = 2)
			BEGIN
				UPDATE TBL_MARKETING
				SET
					Name		= @Name
					WHERE ID	= @ID 
			END
		ELSE IF (@Code = 3)
			BEGIN
				DELETE TBL_MARKETING
				WHERE ID = @ID
			END
	END
	ELSE
	BEGIN
		IF (@Code = 1)
		BEGIN
			INSERT INTO TBL_MARKETING(Name)
			VALUES(@Name)
		END
		ELSE IF (@Code = 2)
			BEGIN
				UPDATE TBL_MARKETING
				SET
					Name		= @Name
					WHERE ID	= @ID 
			END
		ELSE IF (@Code = 3)
			BEGIN
				DELETE TBL_MARKETING
				WHERE ID = @ID
			END
	END

END
GO
/****** Object:  StoredProcedure [dbo].[CrudPembayaran]    Script Date: 07/11/2024 09:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author		: Asep Maulana
-- Create date  : 05-10-2024
-- Description	: -
-- =============================================

CREATE PROC [dbo].[CrudPembayaran](@ID INTEGER, @KodePelanggan VARCHAR(3), @NamaPelanggan VARCHAR(50), @Date DATE, @JumlahPembayaran FLOAT,
							@JenisPembayaran VARCHAR(50), @TransactionNumber VARCHAR(10), @Keterangan VARCHAR(50), @Code INTEGER)
AS
BEGIN
IF (@ID = 0)
BEGIN
	IF (@Code = 1)
		BEGIN
			INSERT INTO TBL_PEMBAYARAN(KodePelanggan,NamaPelanggan,Date,JumlahPembayaran,JenisPembayaran,TransactionNumber,Keterangan)
			VALUES(@KodePelanggan,@NamaPelanggan,@Date,@JumlahPembayaran,@JenisPembayaran,@TransactionNumber,@Keterangan)
		END
	ELSE IF (@Code = 2)
		BEGIN
			UPDATE TBL_PEMBAYARAN
			SET
				NamaPelanggan				= @NamaPelanggan,
				Date						= @Date,
				JumlahPembayaran			= @JumlahPembayaran,
				JenisPembayaran				= @JenisPembayaran,
				TransactionNumber			= @TransactionNumber,
				Keterangan					= @Keterangan	
				WHERE ID					= @ID 
		END
	ELSE IF (@Code = 3)
		BEGIN
			DELETE TBL_PEMBAYARAN
			WHERE ID						= @ID
		END
	END
	ELSE
	BEGIN
	IF (@Code = 1)
		BEGIN
			INSERT INTO TBL_PEMBAYARAN(KodePelanggan,NamaPelanggan,Date,JumlahPembayaran,JenisPembayaran,TransactionNumber,Keterangan)
			VALUES(@KodePelanggan,@NamaPelanggan,@Date,@JumlahPembayaran,@JenisPembayaran,@TransactionNumber,@Keterangan)
		END
	ELSE IF (@Code = 2)
		BEGIN
			UPDATE TBL_PEMBAYARAN
			SET
				NamaPelanggan				= @NamaPelanggan,
				Date						= @Date,
				JumlahPembayaran			= @JumlahPembayaran,
				JenisPembayaran				= @JenisPembayaran,
				TransactionNumber			= @TransactionNumber,
				Keterangan					= @Keterangan	
				WHERE ID					= @ID 
		END
	ELSE IF (@Code = 3)
		BEGIN
			DELETE TBL_PEMBAYARAN
			WHERE ID						= @ID
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[CrudPenjualan]    Script Date: 07/11/2024 09:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author		: Asep Maulana
-- Create date  : 05-10-2024
-- Description	: -
-- =============================================

CREATE PROC [dbo].[CrudPenjualan](@ID INTEGER, @TransactionNumber VARCHAR(10), @MarketingID INTEGER, @Date DATE, @CargoFee FLOAT, 
								  @TotalBalance FLOAT, @GrandTotal FLOAT, @Code INTEGER)
AS
BEGIN
IF (@Code = 1)
	BEGIN
		INSERT INTO TBL_PENJUALAN(Transaction_Number, Marketing_ID, Date, Cargo_Fee, Total_Balance, Grand_Total)
		VALUES(@TransactionNumber, @MarketingID, @Date, @CargoFee, @TotalBalance, @GrandTotal)
	END
ELSE IF (@Code = 2)
	BEGIN
		UPDATE TBL_PENJUALAN
		SET
			Transaction_Number				= @TransactionNumber,
			Marketing_ID					= @MarketingID,
			Date							= @Date,
			Cargo_Fee						= @CargoFee,
			Total_Balance					= @TotalBalance,
			Grand_Total						= @GrandTotal
			WHERE ID						= @ID 
	END
ELSE IF (@Code = 3)
	BEGIN
		DELETE TBL_PENJUALAN
		WHERE ID = @ID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[getMarketing]    Script Date: 07/11/2024 09:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author		: Asep Maulana
-- Create date  : 05-10-2024
-- Description	: -
-- =============================================
CREATE PROCEDURE [dbo].[getMarketing](@ID INTEGER)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
IF (@ID = 0)
BEGIN
	SELECT [ID]
		  ,[Name]
	FROM [DBTest].[dbo].[TBL_MARKETING]
END
ELSE
BEGIN
	SELECT [ID]
		  ,[Name]
	FROM [DBTest].[dbo].[TBL_MARKETING] 
	WHERE ID = @ID
END

END
GO
/****** Object:  StoredProcedure [dbo].[getNominal]    Script Date: 07/11/2024 09:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author		: Asep Maulana
-- Create date  : 05-10-2024
-- Description	: -
-- =============================================
CREATE PROCEDURE [dbo].[getNominal]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT 
    A.Name
    ,DATENAME(MONTH, B.Date) AS 'Bulan' 
    ,REPLACE(FORMAT(SUM(B.Grand_Total), 'C'),'$','Rp') AS Omzet 
	,CASE 
		WHEN SUM(B.Grand_Total) BETWEEN 0 AND 100000000 THEN '0%'
		WHEN SUM(B.Grand_Total) BETWEEN 100000000 AND 200000000 THEN '2.5%'
		WHEN SUM(B.Grand_Total) BETWEEN 200000000 AND 500000000 THEN '5%'
		ELSE '10%'
	END AS 'KomisiPersen'
	,CASE
		WHEN SUM(B.Grand_Total) BETWEEN 0 AND 100000000 THEN REPLACE(FORMAT(SUM(Grand_Total)*0, 'C'),'$','Rp')
		WHEN SUM(B.Grand_Total) BETWEEN 100000000 AND 200000000 THEN REPLACE(FORMAT(SUM(Grand_Total)*0.25, 'C'),'$','Rp')
		WHEN SUM(B.Grand_Total) BETWEEN 200000000 AND 500000000 THEN REPLACE(FORMAT(SUM(Grand_Total)*0.5, 'C'),'$','Rp')
		ELSE REPLACE(FORMAT(SUM(B.Grand_Total)*0.10, 'C'),'$','Rp')
	END AS  'KomisiNominal'
FROM TBL_MARKETING AS A
INNER JOIN TBL_PENJUALAN AS B
ON A.ID = B.Marketing_ID
GROUP  BY 
	A.Name, DATENAME(MONTH, B.Date) 




END
GO
/****** Object:  StoredProcedure [dbo].[getPembayaran]    Script Date: 07/11/2024 09:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author		: Asep Maulana
-- Create date  : 05-10-2024
-- Description	: -
-- =============================================
CREATE PROCEDURE [dbo].[getPembayaran](@ID INTEGER)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
IF (@ID = 0)
BEGIN
	SELECT [ID]
      ,[KodePelanggan]
      ,[NamaPelanggan]
      ,[Date]
      ,[JumlahPembayaran]
      ,[JenisPembayaran]
      ,[TransactionNumber]
      ,[Keterangan]
	FROM [DBTest].[dbo].[TBL_PEMBAYARAN]
END
ELSE
BEGIN
	SELECT [ID]
      ,[KodePelanggan]
      ,[NamaPelanggan]
      ,[Date]
      ,[JumlahPembayaran]
      ,[JenisPembayaran]
      ,[TransactionNumber]
      ,[Keterangan]
	FROM [DBTest].[dbo].[TBL_PEMBAYARAN]
	WHERE ID = @ID
END


END
GO
/****** Object:  StoredProcedure [dbo].[getPenjualan]    Script Date: 07/11/2024 09:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author		: Asep Maulana
-- Create date  : 05-10-2024
-- Description	: -
-- =============================================
CREATE PROCEDURE [dbo].[getPenjualan](@ID INTEGER)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
IF (@ID = 0)
BEGIN
	SELECT [ID]
		  ,[Transaction_Number]
		  ,[Marketing_ID]
		  ,[Date]
		  ,[Cargo_Fee]
		  ,[Total_Balance]
		  ,[Grand_Total]
	  FROM [dbo].[TBL_PENJUALAN]
END
ELSE
BEGIN
	SELECT [ID]
		  ,[Transaction_Number]
		  ,[Marketing_ID]
		  ,[Date]
		  ,[Cargo_Fee]
		  ,[Total_Balance]
		  ,[Grand_Total]
	  FROM [dbo].[TBL_PENJUALAN]
	  WHERE ID = @ID
END


END
GO
