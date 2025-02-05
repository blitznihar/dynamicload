USE [PROD]
GO

/****** Object:  Table [dbo].[GLTRANSREL]    Script Date: 2/4/2025 10:54:41 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GLTRANSREL](
	[RUN_GROUP] [char](15) NOT NULL,
	[SEQ_NUMBER] [int] NOT NULL,
	[COMPANY] [smallint] NOT NULL,
	[OLD_COMPANY] [char](35) NOT NULL,
	[OLD_ACCT_NBR] [char](25) NOT NULL,
	[SOURCE_CODE] [char](2) NOT NULL,
	[R_DATE] [datetime] NOT NULL,
	[REFERENCE] [char](10) NOT NULL,
	[DESCRIPTION] [char](30) NOT NULL,
	[CURRENCY_CODE] [char](5) NOT NULL,
	[UNITS_AMOUNT] [decimal](15, 2) NOT NULL,
	[TRAN_AMOUNT] [decimal](18, 2) NOT NULL,
	[BASE_AMOUNT] [decimal](18, 2) NOT NULL,
	[BASERATE] [decimal](14, 7) NOT NULL,
	[SYSTEM] [char](2) NOT NULL,
	[PROGRAM_CODE] [char](5) NOT NULL,
	[AUTO_REV] [char](1) NOT NULL,
	[POSTING_DATE] [datetime] NOT NULL,
	[ACTIVITY] [char](15) NOT NULL,
	[ACCT_CATEGORY] [char](5) NOT NULL,
	[DOCUMENT_NBR] [char](27) NOT NULL,
	[TO_BASE_AMT] [decimal](18, 2) NOT NULL,
	[EFFECT_DATE] [datetime] NOT NULL,
	[JRNL_BOOK_NBR] [char](12) NOT NULL,
	[MX_VALUE_01] [char](32) NOT NULL,
	[MX_VALUE_02] [char](32) NOT NULL,
	[MX_VALUE_03] [char](32) NOT NULL,
	[JBK_SEQ_NBR] [decimal](10, 0) NOT NULL,
	[NEGATIVE_ADJ] [char](1) NOT NULL,
	[SEGMENT_BLOCK] [char](103) NOT NULL,
	[RPT_AMOUNT_1] [decimal](18, 2) NOT NULL,
	[RPT_RATE_1] [decimal](14, 7) NOT NULL,
	[RPT_ND_1] [tinyint] NOT NULL,
	[RPT_AMOUNT_2] [decimal](18, 2) NOT NULL,
	[RPT_RATE_2] [decimal](14, 7) NOT NULL,
	[RPT_ND_2] [tinyint] NOT NULL,
 CONSTRAINT [GTRSET1] PRIMARY KEY CLUSTERED 
(
	[RUN_GROUP] ASC,
	[SEQ_NUMBER] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


