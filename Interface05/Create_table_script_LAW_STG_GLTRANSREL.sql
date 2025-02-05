USE [ent_LawsonStaging]
GO

/****** Object:  Table [LAW_STG].[GLTRANSREL]    Script Date: 2/4/2025 10:53:42 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [LAW_STG].[GLTRANSREL](
	[LoadNumber] [int] NOT NULL,
	[GLTRANSREL_Transfer] [varchar](1) NOT NULL,
	[RUN_GROUP] [varchar](15) NOT NULL,
	[SEQ_NUMBER] [int] IDENTITY(1,1) NOT NULL,
	[COMPANY] [smallint] NOT NULL,
	[OLD_COMPANY] [varchar](35) NULL,
	[OLD_ACCT_NBR] [varchar](25) NOT NULL,
	[SOURCE_CODE] [varchar](2) NOT NULL,
	[R_DATE] [datetime] NOT NULL,
	[REFERENCE] [varchar](10) NOT NULL,
	[DESCRIPTION] [varchar](30) NOT NULL,
	[CURRENCY_CODE] [varchar](5) NOT NULL,
	[UNITS_AMOUNT] [decimal](15, 2) NOT NULL,
	[TRAN_AMOUNT] [decimal](18, 2) NOT NULL,
	[BASE_AMOUNT] [decimal](18, 2) NOT NULL,
	[BASERATE] [decimal](14, 7) NOT NULL,
	[SYSTEM] [varchar](2) NOT NULL,
	[PROGRAM_CODE] [varchar](5) NOT NULL,
	[AUTO_REV] [varchar](1) NOT NULL,
	[POSTING_DATE] [datetime] NOT NULL,
	[ACTIVITY] [varchar](15) NOT NULL,
	[ACCT_CATEGORY] [varchar](5) NOT NULL,
	[DOCUMENT_NBR] [varchar](27) NOT NULL,
	[TO_BASE_AMT] [decimal](18, 2) NOT NULL,
	[EFFECT_DATE] [datetime] NOT NULL,
	[JRNL_BOOK_NBR] [varchar](12) NOT NULL,
	[MX_VALUE_01] [varchar](32) NOT NULL,
	[MX_VALUE_02] [varchar](32) NOT NULL,
	[MX_VALUE_03] [varchar](32) NOT NULL,
	[JBK_SEQ_NBR] [decimal](10, 0) NOT NULL,
	[NEGATIVE_ADJ] [varchar](1) NOT NULL,
	[SEGMENT_BLOCK] [varchar](103) NOT NULL,
	[RPT_AMOUNT_1] [decimal](18, 2) NOT NULL,
	[RPT_RATE_1] [decimal](14, 7) NOT NULL,
	[RPT_ND_1] [tinyint] NOT NULL,
	[RPT_AMOUNT_2] [decimal](18, 2) NOT NULL,
	[RPT_RATE_2] [decimal](14, 7) NOT NULL,
	[RPT_ND_2] [tinyint] NOT NULL,
	[ES_CREATE_DATE] [datetime] NULL,
	[JOB_AUDIT_ID] [int] NULL,
	[DATA_SOURCE_ID] [varchar](50) NULL,
 CONSTRAINT [GTRSET13] PRIMARY KEY CLUSTERED 
(
	[LoadNumber] ASC,
	[RUN_GROUP] ASC,
	[SEQ_NUMBER] ASC,
	[COMPANY] ASC,
	[R_DATE] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


