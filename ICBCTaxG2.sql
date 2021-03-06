USE [ICBCTaxG2]
GO
/****** Object:  User [edii]    Script Date: 03/23/2018 09:13:51 ******/
CREATE USER [edii] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tblUserweb]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUserweb](
	[EmployeeNumber] [int] IDENTITY(1,1) NOT NULL,
	[FINo] [char](4) NOT NULL,
	[BranchNo] [char](6) NOT NULL,
	[TrmlID] [varchar](16) NOT NULL,
	[Password] [nvarchar](100) NULL,
	[DepartmentID] [int] NULL,
	[DepartmentName] [varchar](50) NULL,
	[NationalEmplNumber] [varchar](50) NULL,
	[FirstName] [varchar](30) NULL,
	[MiddleName] [varchar](20) NULL,
	[LastName] [varchar](30) NULL,
	[Title] [varchar](10) NULL,
	[Birthdate] [datetime] NULL,
	[Extension] [varchar](10) NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](30) NULL,
	[StateOrProvince] [varchar](20) NULL,
	[PostalCode] [varchar](10) NULL,
	[Country] [varchar](50) NULL,
	[HomePhone] [varchar](20) NULL,
	[WorkPhone] [varchar](20) NULL,
	[EmailName] [varchar](50) NULL,
	[SupervisorID] [varchar](20) NULL,
	[Notes] [varchar](100) NULL,
	[OfficeLocation] [varchar](50) NULL,
	[RuleID] [decimal](10, 0) NULL,
	[LockUser] [char](2) NOT NULL,
	[FirstLogin] [datetime] NULL,
	[LastLogin] [datetime] NULL,
	[Registered] [datetime] NULL,
	[ExpiredPassword] [datetime] NULL,
	[LastChPwd] [datetime] NULL,
	[FirstChPwd] [varchar](1) NULL,
	[Status] [varchar](1) NULL,
	[UserName] [varchar](50) NOT NULL,
	[CreateBy] [varchar](50) NOT NULL,
	[expired] [char](1) NULL,
	[idCabangApp] [decimal](18, 0) NULL,
	[Privillege] [varchar](50) NULL,
	[Limit] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTrml]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTrml](
	[idTrml] [decimal](18, 0) NOT NULL,
	[kdTrml] [varchar](5) NULL,
	[ketTrml] [varchar](50) NULL,
	[simbolTrml] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblStatus]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblStatus](
	[KdTab] [char](3) NOT NULL,
	[KdRec] [char](4) NOT NULL,
	[Keterangan] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLREKON]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLREKON](
	[KODEBANK] [varchar](12) NULL,
	[TGLBAYAR] [varchar](6) NULL,
	[WAKTU] [varchar](4) NULL,
	[TGLBUKU] [varchar](6) NULL,
	[IDBILLING] [varchar](15) NOT NULL,
	[NTB] [varchar](12) NULL,
	[NTPN] [varchar](16) NULL,
	[JUMLAH] [decimal](18, 2) NULL,
	[KDMATAUANG] [char](3) NULL,
	[NOSAKTI] [varchar](16) NULL,
	[STATUS] [varchar](50) NULL,
 CONSTRAINT [PK_TBLREKON] PRIMARY KEY CLUSTERED 
(
	[IDBILLING] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRekeningFT]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRekeningFT](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[NOREK] [varchar](50) NULL,
	[NAMA] [varchar](100) NULL,
	[NOREK_TMP] [varchar](50) NULL,
	[NAMA_TMP] [varchar](100) NULL,
 CONSTRAINT [PK_tblRekeningFT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRekening]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRekening](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NPWP] [varchar](15) NULL,
	[NoRek] [varchar](16) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRek]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRek](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KODEBANK] [varchar](50) NULL,
	[NOREK_IDR] [varchar](50) NULL,
	[NOREK_USD] [varchar](15) NULL,
	[NOREK_WALKING] [varchar](15) NULL,
	[KODEBANK_TEMP] [varchar](50) NULL,
	[NOREKIDR_TEMP] [varchar](50) NULL,
	[NOREKUSD_TEMP] [varchar](15) NULL,
	[NOREKWALKING_TEMP] [varchar](15) NULL,
	[LIMIT] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblPelimpahanMPNG2]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblPelimpahanMPNG2](
	[TGLBUKU] [date] NULL,
	[TOTAL] [decimal](18, 2) NULL,
	[USERNAME] [varchar](50) NULL,
	[VALUTA] [varchar](3) NULL,
	[JUMLAH_RECORD] [int] NULL,
	[DTCREATED] [datetime] NULL,
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_TblPelimpahanMPNG2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNTB]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNTB](
	[lastNTB] [varchar](12) NULL,
	[LastUiid] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNomor]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNomor](
	[STANSeq] [char](6) NULL,
	[SSBPSeq] [char](4) NULL,
	[SSPCPSeq] [char](7) NULL,
	[NTBSeq] [char](7) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLogNTB]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLogNTB](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDBILLING] [varchar](16) NOT NULL,
	[NTB] [varchar](12) NOT NULL,
	[DATETIME] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLLOGMPN]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLLOGMPN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BILLINGID] [varchar](15) NULL,
	[STAN] [varchar](6) NULL,
	[NTB] [varchar](12) NULL,
	[NTPN] [varchar](50) NULL,
	[ACT] [varchar](50) NULL,
	[WAKTU] [datetime] NULL,
	[STATUS] [varchar](50) NULL,
	[KETERANGAN] [varchar](250) NULL,
	[NOREK] [varchar](100) NULL,
	[UNAME] [varchar](50) NULL,
 CONSTRAINT [PK_TBLLOGMPN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLLOGCOREBANK]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLLOGCOREBANK](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDBILLING] [varchar](15) NULL,
	[CHANNEL] [varchar](4) NULL,
	[APP_SERNO] [varchar](50) NULL,
	[ACTION] [varchar](50) NULL,
	[TIME] [datetime] NULL,
	[MEDIUMID_DEBIT] [varchar](50) NULL,
	[MEDIUMID_CREDIT] [varchar](50) NULL,
	[CUSTNAME] [varchar](150) NULL,
	[BALANCE] [float] NULL,
	[LSTBAL] [float] NULL,
	[AVABAL] [float] NULL,
	[AMOUNT] [float] NULL,
	[ERRCODE] [varchar](10) NULL,
	[ERRMSG] [ntext] NULL,
	[HOST_CODE] [varchar](10) NULL,
	[HOST_MSG] [ntext] NULL,
	[XML] [ntext] NULL,
 CONSTRAINT [PK_TBLLOGCOREBANK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLINTERFACEREFNUM]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLINTERFACEREFNUM](
	[CTR] [int] NOT NULL,
	[CURR_DATE] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLHISTORYPAYMENT]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLHISTORYPAYMENT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JNS_TRANSAKSI] [varchar](50) NULL,
	[TGL_TRANSAKSI] [datetime] NULL,
	[ACC_PENGIRIM] [varchar](50) NULL,
	[VALUTA_PENGIRIM] [varchar](50) NULL,
	[TRACK_ID] [varchar](50) NULL,
	[ACC_PENERIMA] [varchar](50) NULL,
	[VALUTA_PENERIMA] [varchar](50) NULL,
	[CHANNEL_ID] [varchar](50) NULL,
	[AMOUNT] [varchar](50) NULL,
	[CODE_BANK] [varchar](50) NULL,
	[BRANCH] [varchar](50) NULL,
	[REFERENCE_ID] [varchar](50) NULL,
	[RESPONSE_CODE] [varchar](50) NULL,
	[LOG_ACT] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblHariLibur]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblHariLibur](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tglLibur] [datetime] NULL,
	[KetLibur] [varchar](200) NULL,
	[tglBuku] [date] NULL,
	[jam] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblGroupVerified]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblGroupVerified](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BATCHNO] [varchar](50) NULL,
	[NOREK] [varchar](50) NULL,
	[NAMA] [varchar](50) NULL,
	[TGLBAYAR] [datetime] NULL,
	[BALANCE] [varchar](50) NULL,
	[AVALBALANCE] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGroupuser]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGroupuser](
	[Id_group] [char](2) NOT NULL,
	[Name_group] [char](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblConfig]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConfig](
	[CoT] [time](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCabangApp]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCabangApp](
	[idCabangApp] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[kdBank] [varchar](4) NULL,
	[kdCabBank] [varchar](6) NULL,
	[cabNama] [varchar](50) NULL,
	[cabAlamat] [varchar](100) NULL,
	[cabKota] [varchar](50) NULL,
	[kdKPPN] [varchar](3) NULL,
	[NoRekKPPN] [varchar](19) NULL,
	[idTrml] [varchar](6) NULL,
	[eBBS] [varchar](50) NULL,
	[DesceBBS] [varchar](50) NULL,
	[rekDEVISA] [varchar](50) NULL,
	[rekPBB] [varchar](50) NULL,
	[rekBPHTB] [varchar](50) NULL,
	[rekPERSEPSI] [varchar](50) NULL,
	[cabNPWP] [varchar](50) NULL,
	[rekCusWalking] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblcabang]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblcabang](
	[brchcd6] [varchar](6) NULL,
	[nmbrch] [varchar](50) NULL,
	[trmlkd] [varchar](50) NULL,
	[bankcd] [varchar](50) NULL,
	[norek] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblBillingSettlement]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblBillingSettlement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BankID] [varchar](12) NULL,
	[billingInfo1] [varchar](200) NULL,
	[billingInfo2] [varchar](200) NULL,
	[billingInfo3] [varchar](200) NULL,
	[billingInfo4] [varchar](200) NULL,
	[billingInfo5] [varchar](200) NULL,
	[billingInfo6] [varchar](200) NULL,
	[billingInfo7] [varchar](200) NULL,
	[billingInfo8] [varchar](200) NULL,
	[billingInfo9] [varchar](200) NULL,
	[billingInfo10] [varchar](200) NULL,
	[BranchCode] [varchar](6) NULL,
	[ChannelType] [varchar](4) NULL,
	[currency] [varchar](3) NULL,
	[gmt] [datetime] NULL,
	[localDatetime] [datetime] NULL,
	[settlementDate] [datetime] NULL,
	[switcherCode] [varchar](3) NULL,
	[terminalId] [varchar](16) NULL,
	[terminalLocation] [varchar](200) NULL,
	[transactionId] [varchar](12) NULL,
	[paymentCode] [varchar](15) NULL,
	[amount] [numeric](15, 0) NULL,
	[customerName] [varchar](200) NULL,
	[responseCode] [varchar](2) NULL,
	[ntb] [varchar](15) NULL,
	[ntpn] [varchar](15) NULL,
	[billerAccountNumber] [varchar](12) NULL,
	[FL_PAYMENT_TYPE] [float] NULL,
	[eXpiredDate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLBILLINGMPN]    Script Date: 03/23/2018 09:13:51 ******/
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
	[NOREKBANK] [varchar](50) NULL,
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
	[BALANCE] [nchar](50) NULL,
	[AVALBALANCE] [nchar](50) NULL,
	[InterfaceRefNum] [varchar](50) NULL,
	[ReversalRefNum] [varchar](50) NULL,
 CONSTRAINT [PK_TBLBILLINGMPN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBatchNo]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBatchNo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BatchNo] [varchar](15) NULL,
	[UserName] [varchar](50) NULL,
	[dateCreate] [datetime] NULL,
	[KodeBatch] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblbankpersepsi]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblbankpersepsi](
	[idbank] [nvarchar](4) NULL,
	[npwp] [nvarchar](15) NULL,
	[nmbank] [nvarchar](20) NULL,
	[alamat] [nvarchar](35) NULL,
	[tcpipdjp] [nvarchar](16) NULL,
	[portdjp] [nvarchar](5) NULL,
	[start] [nvarchar](3) NULL,
	[headermp3] [nvarchar](9) NULL,
	[jenply] [nvarchar](4) NULL,
	[drive] [nvarchar](1) NULL,
	[flgbu] [nvarchar](1) NULL,
	[flgres] [nvarchar](1) NULL,
	[flgdet] [nvarchar](1) NULL,
	[SchStart] [nvarchar](20) NULL,
	[SchStop] [nvarchar](20) NULL,
	[Intervual] [int] NULL,
	[KdIntervual] [int] NULL,
	[TglBukuNow] [datetime] NULL,
	[TglBukuCOT] [datetime] NULL,
	[TxNo] [int] NULL,
	[hdBankCode] [char](4) NULL,
	[hdBranchCode] [char](6) NULL,
	[Djp_Cot] [char](5) NULL,
	[cabang] [varchar](50) NULL,
	[DOK] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAuditTrail]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAuditTrail](
	[Iduser] [char](20) NULL,
	[nama] [varchar](50) NULL,
	[Pagevisit] [char](50) NULL,
	[Waktu] [datetime] NULL,
	[Aktivitas] [varchar](200) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Branch] [nvarchar](max) NULL,
	[TerminalID] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Registered] [datetime] NULL,
	[Privilege] [nvarchar](max) NULL,
	[AccountTitle] [nvarchar](max) NULL,
	[LastLogin] [datetime] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 03/23/2018 09:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_GETSETTLEMENTDATE]    Script Date: 03/23/2018 09:13:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GETSETTLEMENTDATE] @TGLBUKU VARCHAR(10), @COT TIME
	AS 
	BEGIN
		SET DATEFORMAT YMD
		DECLARE @SETTLEMENTDATE VARCHAR(10), @tempSETTLEMENTDATE DATE, @TIMENOW TIME, @DAY VARCHAR(100), @TGLBKDB VARCHAR(10)
				,@DTTIME DATE, @STL1 DATE, @STL2 DATE , @MSG VARCHAR(100)
		
		SET @tempSETTLEMENTDATE=@TGLBUKU;
		SET @TIMENOW=GETDATE();
		SET @DTTIME=@TGLBUKU;
		SET @DAY = (SELECT(DATENAME(dw, CAST(DATEPART(m, @TGLBUKU) AS VARCHAR) 
									+ '/' + CAST(DATEPART(d, @TGLBUKU) AS VARCHAR) 
									+ '/'  + CAST(DATEPART(yy, @TGLBUKU) AS VARCHAR))
							)
					);
		
		IF (@DAY <> 'SATURDAY' AND @DAY <> 'SUNDAY') --jika weekday
		BEGIN
			IF @TIMENOW > @COT --jika sekarang lebih dari COT
			BEGIN
				IF @DAY='FRIDAY' --jika sekarang jum'at 
				BEGIN
					SET @tempSETTLEMENTDATE = DATEADD(day, 3, @TGLBUKU);
				END
				ELSE --jika selain jumat
				BEGIN
					SET @tempSETTLEMENTDATE = DATEADD(day, 1, @TGLBUKU);
				END
			END
			IF DATEPART(year,@DTTIME) <> DATEPART(year,@tempSETTLEMENTDATE) --jika sudah ganti tahun
			BEGIN
				--SET @tempSETTLEMENTDATE=@TGLBUKU;				
				SET @STL1 = DATEADD(day, 2, @TGLBUKU);
				SET @STL2 = DATEADD(day, 1, @TGLBUKU);

				IF DATEPART(year,@DTTIME) = DATEPART(year,@STL1) --same years
				BEGIN
					SET @tempSETTLEMENTDATE = DATEADD(day, 2, @TGLBUKU);
				END
				ELSE IF DATEPART(year,@DTTIME) = DATEPART(year,@STL2) --same years
				BEGIN
					SET @tempSETTLEMENTDATE = DATEADD(day, 1, @TGLBUKU);
				END
				ELSE
				BEGIN
					SET @tempSETTLEMENTDATE = @TGLBUKU;
				END
			END
		END
		ELSE --jika weekend
		BEGIN
			IF @DAY='SATURDAY' --jika sabtu
			BEGIN
				SET @tempSETTLEMENTDATE = DATEADD(day, 2, @TGLBUKU);
			END
			ELSE IF @DAY='SUNDAY' --jika minggu
			BEGIN
				SET @tempSETTLEMENTDATE = DATEADD(day, 1, @TGLBUKU);
			END
			IF DATEPART(year,@DTTIME) <> DATEPART(year,@tempSETTLEMENTDATE) --jika sudah ganti tahun
			BEGIN
				--SET @tempSETTLEMENTDATE=@TGLBUKU;				
				SET @STL1 = DATEADD(day, 1, @TGLBUKU);

				IF DATEPART(year,@DTTIME) = DATEPART(year,@STL1) --same years
				BEGIN
					SET @tempSETTLEMENTDATE = DATEADD(day, 1, @TGLBUKU);
				END
				ELSE
				BEGIN
					SET @tempSETTLEMENTDATE = @TGLBUKU;
				END
			END
		END

		SET @TGLBKDB = (SELECT tglBuku FROM tblHariLibur WHERE CONVERT(datetime,tglLIBUR,105)=@tempSETTLEMENTDATE);
		IF @TGLBKDB IS NOT NULL
		BEGIN
			SET @tempSETTLEMENTDATE = @TGLBKDB;
		END

		IF DATEPART(year,@DTTIME) <> DATEPART(year,@tempSETTLEMENTDATE) --jika sudah ganti tahun
		BEGIN
			SET @tempSETTLEMENTDATE=@TGLBUKU;
		END
		SET @SETTLEMENTDATE=@tempSETTLEMENTDATE;

		SELECT @SETTLEMENTDATE; --@SETTLEMENTDATE
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_GenSTAN]    Script Date: 03/23/2018 09:13:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
			-- Author: <Author,,Name>
			-- Create date: <Create Date,,>
			-- Description: <Description,,>
			-- =============================================
			CREATE PROCEDURE [dbo].[SP_GenSTAN] 
			AS
			BEGIN
			DECLARE @temp varchar(7), @result varchar(7)

			SET @temp = (SELECT STANSeq FROM tblNomor)

			IF  (@temp IS NULL) OR (@temp = '999999')
				BEGIN
					--SET @temp = '0000001'
					SET @result = 1000000 + '0000001'
					SET @result = RIGHT(@result, 6)
					IF @temp IS NULL
						BEGIN
							INSERT INTO tblNomor (STANSeq) VALUES(@result)
						END
					ELSE IF @temp = '999999'
						BEGIN
							UPDATE tblNomor SET STANSeq=@result
						END
				END
			ELSE
				BEGIN
					SET @temp = @temp + 1
					SET @result = 1000000 + @temp
					SET @result = RIGHT(@result, 6)
					UPDATE tblNomor SET STANSeq=@result
				END
			SELECT @result as STANSeq
			END
GO
/****** Object:  StoredProcedure [dbo].[SP_GenNTB]    Script Date: 03/23/2018 09:13:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GenNTB]
			AS
			BEGIN
				DECLARE @tempNTB VARCHAR(12), @seqNTB INT, @dateNow VARCHAR(8), @seqTemp VARCHAR(6)
					SET @seqTemp = 0
					SET @tempNTB = (SELECT lastNTB FROM tblNTB)
					SET @dateNow = (SELECT CONVERT(VARCHAR(8),GETDATE(),12))
				IF @tempNTB IS NULL
					BEGIN
						SET @tempNTB = (SELECT CONVERT(VARCHAR(8),GETDATE(),5)) + '0'
						SET @tempNTB = REPLACE(@tempNTB, '-', '')
						INSERT INTO tblNTB(lastNTB) VALUES(@tempNTB)
						SET @tempNTB = SUBSTRING(@tempNTB, 1, 6)
					END
				ELSE
					BEGIN
						SET @seqTemp = SUBSTRING(@tempNTB, 7, 6)
						SET @tempNTB = SUBSTRING(@tempNTB, 1, 6)
					END
				IF @tempNTB <> @dateNow
					BEGIN
					SET @seqTemp = 0
					END
				ELSE
					SET @seqTemp = @seqTemp
					SET @seqNTB = @seqTemp + 1
					SET @seqTemp = RIGHT('000000' + CONVERT(VARCHAR,@seqNTB), 6)
					SET @tempNTB = @dateNow + @seqTemp
					UPDATE tblNTB SET lastNTB=@tempNTB
				SELECT @tempNTB
			END
GO
/****** Object:  Default [DF__AspNetUse__Regis__498EEC8D]    Script Date: 03/23/2018 09:13:51 ******/
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Registered]
GO
/****** Object:  Default [DF_tblLogNTB_CountSend]    Script Date: 03/23/2018 09:13:51 ******/
ALTER TABLE [dbo].[tblLogNTB] ADD  CONSTRAINT [DF_tblLogNTB_CountSend]  DEFAULT (getdate()) FOR [DATETIME]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]    Script Date: 03/23/2018 09:13:51 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]    Script Date: 03/23/2018 09:13:51 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]    Script Date: 03/23/2018 09:13:51 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]    Script Date: 03/23/2018 09:13:51 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
