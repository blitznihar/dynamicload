USE [ent_LawsonPrestaging]
GO

/****** Object:  Table [LAW_PRESTG].[Mainframe05]    Script Date: 2/4/2025 10:50:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [LAW_PRESTG].[Mainframe05](
	[LoadNumber] [int] NULL,
	[TYPE] [char](1) NULL,
	[TRAN] [char](1) NULL,
	[LOAN] [char](1) NULL,
	[ACCT] [char](1) NULL,
	[SORT_KEY] [char](20) NULL,
	[DESCRIPTION] [char](25) NULL,
	[TRANS_CD] [char](4) NULL,
	[MODE] [char](2) NULL,
	[POLICY] [char](9) NULL,
	[AGY] [char](3) NULL,
	[LAT] [char](6) NULL,
	[ACCOUNT] [char](7) NULL,
	[AMOUNT] [decimal](18, 2) NOT NULL,
	[FILLER] [char](1) NULL,
	[RARB_CODE] [char](1) NULL,
	[GTD] [char](2) NULL,
	[APR] [char](1) NULL,
	[STATE] [char](2) NULL,
	[COUNTY] [char](3) NULL,
	[CDT] [char](6) NULL,
	[FILLER2] [char](1) NULL,
	[DDT] [char](6) NULL,
	[KIND_2] [char](2) NULL,
	[KIND_4] [char](2) NULL,
	[FILLER3] [char](5) NULL,
	[ISSUE] [char](7) NULL,
	[SERIES] [char](2) NULL,
	[FILLER4] [char](2) NULL,
	[SOURCE] [char](6) NULL,
	[FILLER5] [char](8) NULL,
	[PFREQ] [char](3) NULL,
	[WHO] [char](3) NULL,
	[FILLER6] [char](13) NULL,
	[DATE] [char](6) NULL,
	[CO_CODE] [char](3) NULL,
	[FILLER7] [char](2) NULL,
	[FILLER8] [char](5) NULL,
	[CONTROL_DATE] [datetime] NOT NULL,
	[ES_CREATE_DATE] [datetime] NULL,
	[JOB_AUDIT_ID] [int] NULL,
	[DATA_SOURCE_ID] [varchar](50) NULL
) ON [PRIMARY]
GO


