USE [T2G]
GO
/****** Object:  Table [dbo].[tblPibHdr_]    Script Date: 03/23/2018 09:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPibHdr_](
	[CAR] [varchar](26) NOT NULL,
	[SNDEDINUM] [varchar](20) NULL,
	[RCVEDINUM] [varchar](20) NULL,
	[APRF] [varchar](10) NULL,
	[KPBC] [varchar](6) NULL,
	[PIBTYPE] [varchar](10) NULL,
	[PIBTYPEDESC] [varchar](30) NULL,
	[IMPORTTYPE] [varchar](10) NULL,
	[IMPORTTYPEDESC] [varchar](30) NULL,
	[PAYMENTMETHOD] [varchar](10) NULL,
	[PAYMENTMETHODDESC] [varchar](30) NULL,
	[IMPORTIRNPWP] [varchar](15) NULL,
	[IMPORTITNAME] [varchar](100) NULL,
	[IMPORTIRADDRESS] [varchar](255) NULL,
	[NOACCOUNTBANK] [varchar](10) NULL,
	[RESPONDATETIME] [date] NULL,
	[BILLINGDUEDATE] [date] NULL,
	[NOBILL] [varchar](15) NULL,
	[RESTYPE] [varchar](3) NULL,
	[DOCNO] [varchar](100) NULL,
	[DOCDATE] [date] NULL,
	[DOCTYPE] [char](3) NULL,
	[AMOUNT] [float] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPibDtl_]    Script Date: 03/23/2018 09:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPibDtl_](
	[CAR] [varchar](26) NULL,
	[DOCCODE] [varchar](20) NULL,
	[DOCNUMBER] [varchar](100) NULL,
	[DOCDATE] [date] NULL,
	[TAXCODE] [varchar](10) NULL,
	[TAXFACCODE] [varchar](10) NULL,
	[TAXNPWP] [varchar](15) NULL,
	[AMOUNT] [float] NULL,
	[SERIAL] [varchar](10) NULL,
	[AKUN] [varchar](100) NULL,
	[AMOUNTJNSBYR] [varchar](15) NULL,
	[NPWP] [varchar](15) NULL,
	[FILLER] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLBILLINGMPN]    Script Date: 03/23/2018 09:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLBILLINGMPN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BANKID] [varchar](12) NULL,
	[BRANCHCODE] [varchar](6) NULL,
	[CHANNELTYPE] [varchar](50) NULL,
	[CURRCODE] [varchar](3) NULL,
	[GMT] [datetime] NULL,
	[LOCALDATETIME] [datetime] NULL,
	[IDBILLING] [varchar](15) NULL,
	[SWITCHERCODE] [varchar](30) NULL,
	[TERMINALID] [varchar](16) NULL,
	[LOKASI] [varchar](50) NULL,
	[STAN] [varchar](6) NULL,
	[TXAMT] [float] NULL,
	[CUSTOMERNAME] [varchar](100) NULL,
	[NOREKBANK] [varchar](16) NULL,
	[NTB] [varchar](12) NULL,
	[NTPN] [varchar](16) NULL,
	[NPWP] [char](15) NULL,
	[AKUN] [char](6) NULL,
	[KDJNSSTR] [char](3) NULL,
	[MSPJK] [varchar](12) NULL,
	[NOSK] [char](15) NULL,
	[ALAMATWP] [varchar](255) NULL,
	[KOTAWP] [varchar](50) NULL,
	[NOOP] [char](18) NULL,
	[KDSETOR] [varchar](15) NOT NULL,
	[IDWAJIBBYR] [varchar](50) NULL,
	[JNSDOKUMEN] [varchar](2) NULL,
	[NODOKUMEN] [varchar](30) NULL,
	[TGLDOKUMEN] [varchar](10) NULL,
	[KPPBC] [char](6) NULL,
	[KL] [varchar](30) NULL,
	[UNITESELON] [varchar](30) NULL,
	[SATKER] [varchar](30) NULL,
	[DTCREATED] [datetime] NULL,
	[CREATEDBY] [varchar](50) NULL,
	[PRTFLAG] [bit] NULL,
	[VERFLAG] [char](1) NULL,
	[STATUS] [char](2) NULL,
	[NOREKCUS] [varchar](50) NULL,
	[VERIFIEDBY] [varchar](15) NULL,
	[DTVERIFIED] [datetime] NULL,
	[SUMBER] [varchar](50) NULL,
	[SETTLEMENTDATE] [varchar](50) NULL,
	[NOSAKTI] [varchar](50) NULL,
	[RESPONSECODE] [char](2) NULL,
	[Cetak] [int] NULL,
	[PaymentRef] [varchar](50) NULL,
	[dtPayment] [datetime] NULL,
	[FlagTimeout] [int] NULL,
	[IDTRX] [varchar](12) NULL,
	[NPWPP] [varchar](15) NULL,
	[stsResponXML] [char](1) NULL,
	[flagPayment] [char](1) NULL,
	[GROUPID] [varchar](10) NULL,
	[EMAIL] [varchar](150) NULL,
	[STATUS_REKON] [varchar](50) NULL,
	[BatchNo] [varchar](15) NULL,
	[NOSAKTI2] [varchar](50) NULL,
	[FLAG_PELIMPAHAN] [int] NULL,
	[STATUS_REVERSAL] [varchar](50) NULL,
	[balance] [float] NULL,
 CONSTRAINT [PK_TBLBILLINGMPN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_PIB_SERIAL]    Script Date: 03/23/2018 09:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_PIB_SERIAL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CAR] [varchar](26) NULL,
	[NOBILL] [varchar](50) NOT NULL,
	[SERIAL] [varchar](10) NULL,
	[ACCOUNT] [varchar](100) NULL,
	[AMOUNT] [float] NULL,
	[NPWP] [varchar](15) NULL,
	[FILLER] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_PIB_PGT]    Script Date: 03/23/2018 09:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_PIB_PGT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CAR] [varchar](26) NULL,
	[NOBILL] [varchar](50) NOT NULL,
	[TAXCODE] [varchar](200) NULL,
	[TAXFACCODE] [varchar](200) NULL,
	[TAXNPWP] [varchar](15) NULL,
	[AMOUNT] [float] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_PIB_HDR]    Script Date: 03/23/2018 09:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_PIB_HDR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CAR] [varchar](26) NULL,
	[KPBC] [varchar](6) NULL,
	[APRF] [varchar](10) NULL,
	[SNDEDINUM] [varchar](20) NULL,
	[RCVEDINUM] [varchar](20) NULL,
	[PROCESSTYPE] [varchar](3) NULL,
	[PIBTYPE] [varchar](200) NULL,
	[IMPORTTYPE] [varchar](200) NULL,
	[PAYMENTMETHOD] [varchar](200) NULL,
	[IMPORTIRTYPE] [varchar](50) NULL,
	[IMPORTIRNPWP] [varchar](15) NULL,
	[IMPORTIRNAME] [varchar](100) NULL,
	[IMPORTIRADDRESS] [varchar](255) NULL,
	[NOACCOUNTBANK] [varchar](20) NULL,
	[DATETIME] [date] NULL,
	[RESPONDATETIME] [datetime] NULL,
	[BILLINGDUEDATE] [datetime] NULL,
	[NOBILL] [varchar](50) NULL,
	[LOCTYPE] [varchar](2) NULL,
	[LOCCODE] [varchar](20) NULL,
	[RESTYPE] [varchar](3) NULL,
	[DOCTYPE] [varchar](3) NULL,
	[DOCNO] [varchar](100) NULL,
	[DOCDATE] [date] NULL,
	[AMOUNT] [float] NULL,
	[DESC] [varchar](255) NULL,
	[LOCALDATETIME] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_PIB_DOK]    Script Date: 03/23/2018 09:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_PIB_DOK](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CAR] [varchar](26) NULL,
	[NOBILL] [varchar](50) NOT NULL,
	[DOCCODE] [varchar](200) NULL,
	[DOCNUMBER] [varchar](100) NULL,
	[DOCDATE] [date] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_TBL_PIB_HDR_LOCALDATETIME]    Script Date: 03/23/2018 09:18:49 ******/
ALTER TABLE [dbo].[TBL_PIB_HDR] ADD  CONSTRAINT [DF_TBL_PIB_HDR_LOCALDATETIME]  DEFAULT (getdate()) FOR [LOCALDATETIME]
GO
