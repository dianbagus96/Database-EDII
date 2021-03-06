USE [JTrustG2]
GO
/****** Object:  Table [dbo].[test]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[test](
	[ID] [varchar](50) NULL,
	[IDSSPCP] [varchar](50) NULL,
	[kdsetor] [varchar](50) NULL,
	[NPWP] [varchar](50) NULL,
	[KdMAP] [varchar](50) NULL,
	[IDBYR] [varchar](50) NULL,
	[KdJnsByr] [varchar](50) NULL,
	[MsPjk] [varchar](50) NULL,
	[ThPjk] [varchar](50) NULL,
	[hdBankCode] [varchar](50) NULL,
	[hdBranchNo] [varchar](50) NULL,
	[NoSK] [varchar](50) NULL,
	[TglSK] [varchar](50) NULL,
	[TglByr] [varchar](50) NULL,
	[JamByr] [varchar](50) NULL,
	[NoOP] [varchar](50) NULL,
	[AlamatNOP] [varchar](50) NULL,
	[TxNo] [varchar](50) NULL,
	[TxAmt] [varchar](50) NULL,
	[NamaWP] [varchar](50) NULL,
	[AlamtWP] [varchar](50) NULL,
	[KotaWP] [varchar](50) NULL,
	[NTPP] [varchar](50) NULL,
	[TrmlID] [varchar](50) NULL,
	[CurrCode] [varchar](50) NULL,
	[STAN] [varchar](50) NULL,
	[DtAuthdByMP3] [varchar](50) NULL,
	[DtCreated] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[DtModified] [varchar](50) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[RevFlag] [varchar](50) NULL,
	[S90MsgID] [varchar](50) NULL,
	[NoDokumen] [varchar](50) NULL,
	[PrtFlag] [varchar](50) NULL,
	[VerFlag] [varchar](50) NULL,
	[DeptCode] [varchar](50) NULL,
	[BankRefNumber] [varchar](50) NULL,
	[ResponseCode] [varchar](50) NULL,
	[Lokasi] [varchar](50) NULL,
	[NTB] [varchar](50) NULL,
	[Discount] [varchar](50) NULL,
	[KPKN] [varchar](50) NULL,
	[NoReg] [varchar](50) NULL,
	[adviceReason] [varchar](50) NULL,
	[MsgType] [varchar](50) NULL,
	[ProcCode] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[KomFlag] [varchar](50) NULL,
	[IDSSP_TR] [varchar](50) NULL,
	[CusReff] [varchar](50) NULL,
	[TglBuku] [varchar](50) NULL,
	[NoRek] [varchar](50) NULL,
	[stsHistory] [varchar](50) NULL,
	[NoRef] [varchar](50) NULL,
	[KDKPBC] [varchar](50) NULL,
	[CAR] [varchar](50) NULL,
	[PeriodePjk] [varchar](50) NULL,
	[KdJenis] [varchar](50) NULL,
	[KdDasar] [varchar](50) NULL,
	[KPPBB] [varchar](50) NULL,
	[NPWP_PENYETOR] [varchar](50) NULL,
	[NAMA_PENYETOR] [varchar](50) NULL,
	[NoRekCus] [varchar](50) NULL,
	[BatchNo] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[IDPeserta] [varchar](50) NULL,
	[KdIDPeserta] [varchar](50) NULL,
	[IDBilling] [varchar](50) NULL,
	[NoIdentitasLain] [varchar](50) NULL,
	[ResponseCodeG2] [varchar](50) NULL,
	[CountSend] [varchar](50) NULL,
	[TimeNextSend] [varchar](50) NULL,
	[Uraian] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUserweb]    Script Date: 03/23/2018 09:16:55 ******/
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
/****** Object:  Table [dbo].[TblUser]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUser](
	[chat_id] [int] NOT NULL,
	[step] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbltxSSP_G2]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TbltxSSP_G2](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IDSSPCP] [numeric](18, 0) NULL,
	[kdsetor] [char](5) NULL,
	[NPWP] [char](15) NULL,
	[KdMAP] [char](6) NULL,
	[IDBYR] [numeric](18, 0) NULL,
	[KdJnsByr] [char](3) NULL,
	[MsPjk] [char](4) NULL,
	[ThPjk] [char](4) NULL,
	[hdBankCode] [varchar](4) NULL,
	[hdBranchNo] [varchar](6) NULL,
	[NoSK] [char](15) NULL,
	[TglSK] [datetime] NULL,
	[TglByr] [datetime] NULL,
	[JamByr] [datetime] NULL,
	[NoOP] [char](18) NULL,
	[AlamatNOP] [varchar](255) NULL,
	[TxNo] [varchar](12) NULL,
	[TxAmt] [float] NULL,
	[NamaWP] [varchar](50) NULL,
	[AlamtWP] [varchar](255) NULL,
	[KotaWP] [varchar](50) NULL,
	[NTPP] [varchar](16) NULL,
	[TrmlID] [varchar](16) NULL,
	[CurrCode] [varchar](3) NULL,
	[STAN] [varchar](6) NULL,
	[DtAuthdByMP3] [datetime] NULL,
	[DtCreated] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[DtModified] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[RevFlag] [int] NULL,
	[S90MsgID] [varchar](100) NULL,
	[NoDokumen] [varchar](4) NULL,
	[PrtFlag] [bit] NULL,
	[VerFlag] [char](1) NULL,
	[DeptCode] [char](2) NULL,
	[BankRefNumber] [char](16) NULL,
	[ResponseCode] [char](2) NULL,
	[Lokasi] [char](4) NULL,
	[NTB] [char](20) NULL,
	[Discount] [float] NULL,
	[KPKN] [varchar](10) NULL,
	[NoReg] [char](20) NULL,
	[adviceReason] [char](3) NULL,
	[MsgType] [char](4) NULL,
	[ProcCode] [varchar](6) NULL,
	[Status] [char](2) NULL,
	[KomFlag] [int] NULL,
	[IDSSP_TR] [numeric](18, 0) NULL,
	[CusReff] [varchar](16) NULL,
	[TglBuku] [datetime] NULL,
	[NoRek] [varchar](16) NULL,
	[stsHistory] [char](1) NULL,
	[NoRef] [char](22) NULL,
	[KDKPBC] [char](6) NULL,
	[CAR] [char](26) NULL,
	[PeriodePjk] [varchar](12) NULL,
	[KdJenis] [varchar](2) NULL,
	[KdDasar] [varchar](3) NULL,
	[KPPBB] [varchar](10) NULL,
	[NPWP_PENYETOR] [char](15) NULL,
	[NAMA_PENYETOR] [varchar](50) NULL,
	[NoRekCus] [varchar](16) NULL,
	[BatchNo] [varchar](50) NULL,
	[UserName] [varchar](15) NULL,
	[IDPeserta] [varchar](50) NULL,
	[KdIDPerserta] [char](1) NULL,
	[IdBilling] [varchar](16) NULL,
	[NoIdentitasLain] [varchar](50) NULL,
	[ResponseCodeG2] [varchar](50) NULL,
	[UraianBayarPajak] [varchar](255) NULL,
	[CountSend] [char](1) NULL,
	[TimeNextSend] [char](14) NULL,
	[NamaMAP] [varchar](25) NULL,
	[NamaJenisSetor] [varchar](25) NULL,
	[S1STAN] [varchar](6) NULL,
	[TimeNextSend1] [char](14) NULL,
 CONSTRAINT [PK_TbltxSSP_G2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TbltxSSP]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TbltxSSP](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IDSSPCP] [numeric](18, 0) NULL,
	[kdsetor] [char](5) NULL,
	[NPWP] [char](15) NULL,
	[KdMAP] [char](6) NULL,
	[IDBYR] [numeric](18, 0) NULL,
	[KdJnsByr] [char](3) NULL,
	[MsPjk] [char](4) NULL,
	[ThPjk] [int] NULL,
	[hdBankCode] [varchar](4) NULL,
	[hdBranchNo] [varchar](6) NULL,
	[NoSK] [char](15) NULL,
	[TglSK] [datetime] NULL,
	[TglByr] [datetime] NULL,
	[JamByr] [datetime] NULL,
	[NoOP] [char](18) NULL,
	[AlamatNOP] [varchar](255) NULL,
	[TxNo] [varchar](12) NULL,
	[TxAmt] [float] NULL,
	[NamaWP] [varchar](50) NULL,
	[AlamtWP] [varchar](255) NULL,
	[KotaWP] [varchar](50) NULL,
	[NTPP] [varchar](16) NULL,
	[TrmlID] [varchar](16) NULL,
	[CurrCode] [varchar](3) NULL,
	[STAN] [varchar](6) NULL,
	[DtAuthdByMP3] [datetime] NULL,
	[DtCreated] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[DtModified] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[RevFlag] [int] NULL,
	[S90MsgID] [varchar](100) NULL,
	[NoDokumen] [varchar](4) NULL,
	[PrtFlag] [bit] NULL,
	[VerFlag] [char](1) NULL,
	[DeptCode] [char](2) NULL,
	[BankRefNumber] [char](16) NULL,
	[ResponseCode] [char](2) NULL,
	[Lokasi] [char](4) NULL,
	[Discount] [float] NULL,
	[KPKN] [varchar](10) NULL,
	[NoReg] [char](20) NULL,
	[adviceReason] [char](3) NULL,
	[MsgType] [char](4) NULL,
	[ProcCode] [varchar](6) NULL,
	[Status] [char](2) NULL,
	[KomFlag] [int] NULL,
	[IDSSP_TR] [numeric](18, 0) NULL,
	[CusReff] [varchar](16) NULL,
	[TglBuku] [datetime] NULL,
	[NoRek] [varchar](16) NULL,
	[stsHistory] [varchar](2) NULL,
	[NoRef] [char](22) NULL,
	[KDKPBC] [char](6) NULL,
	[CAR] [char](26) NULL,
	[PeriodePjk] [varchar](12) NULL,
	[KdJenis] [varchar](2) NULL,
	[KdDasar] [varchar](3) NULL,
	[KPPBB] [varchar](10) NULL,
	[NPWP_PENYETOR] [char](15) NULL,
	[NAMA_PENYETOR] [varchar](50) NULL,
	[NoRekCus] [varchar](16) NULL,
	[UserName] [varchar](15) NULL,
	[NoFaktur] [varchar](50) NULL,
	[Kurs] [varchar](50) NULL,
	[NTB] [varchar](12) NULL,
	[NAMAMAP] [varchar](250) NULL,
	[BatchNo] [varchar](16) NULL,
	[NoReferensi] [varchar](50) NULL,
	[StatusAML] [char](3) NULL,
	[RC_Inquiry] [char](2) NULL,
	[flagAML] [char](1) NULL,
	[RC_Verifikasi] [char](2) NULL,
	[RC_Billing] [char](2) NULL,
	[Id_Peserta] [varchar](50) NULL,
	[Id_Setoran] [varchar](50) NULL,
 CONSTRAINT [PK_TbltxSSP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTrml]    Script Date: 03/23/2018 09:16:55 ******/
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
/****** Object:  Table [dbo].[TblStatus]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblStatus](
	[KdTab] [char](3) NOT NULL,
	[KdRec] [char](4) NOT NULL,
	[Keterangan] [varchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblsetting]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblsetting](
	[alertBeforeExpire] [varchar](10) NULL,
	[MaxTry] [int] NULL,
	[ExpiredDays] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblS1Messaging]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblS1Messaging](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ISOMessage] [varchar](1000) NULL,
	[Status] [char](1) NULL,
 CONSTRAINT [PK_tblS1Messaging] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblS1Integrated]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblS1Integrated](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[P1] [varchar](100) NULL,
	[P2] [varchar](100) NULL,
	[P3] [varchar](100) NULL,
	[P4] [varchar](100) NULL,
	[P7] [varchar](100) NULL,
	[P11] [varchar](100) NULL,
	[P12] [varchar](100) NULL,
	[P13] [varchar](100) NULL,
	[P18] [varchar](100) NULL,
	[P32] [varchar](100) NULL,
	[P37] [varchar](100) NULL,
	[P39] [varchar](100) NULL,
	[P41] [varchar](100) NULL,
	[P47] [varchar](100) NULL,
	[P48_NPWP] [varchar](100) NULL,
	[P48_Nama] [varchar](100) NULL,
	[P48_Alamat] [varchar](100) NULL,
	[P48_Kota] [varchar](100) NULL,
	[P48_KodeMap] [varchar](100) NULL,
	[P48_KodeJenisSetor] [varchar](100) NULL,
	[P48_MasaPajak] [varchar](100) NULL,
	[P48_TahunPajak] [varchar](100) NULL,
	[P48_NoSK] [varchar](100) NULL,
	[P48_IDPeserta] [varchar](100) NULL,
	[P49] [varchar](100) NULL,
	[P63] [varchar](100) NULL,
 CONSTRAINT [PK_tblS1Integrated] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLREKON]    Script Date: 03/23/2018 09:16:55 ******/
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
/****** Object:  Table [dbo].[tblrekLong]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblrekLong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rekLong] [varchar](53) NOT NULL,
	[rekTiny] [varchar](53) NOT NULL,
	[date] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRekeningFT]    Script Date: 03/23/2018 09:16:55 ******/
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
/****** Object:  Table [dbo].[tblRekening]    Script Date: 03/23/2018 09:16:55 ******/
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
/****** Object:  Table [dbo].[tblRek]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRek](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KODEBANK] [varchar](50) NULL,
	[NOREK_IDR] [varchar](15) NULL,
	[NOREK_USD] [varchar](15) NULL,
	[NOREK_WALKING] [varchar](15) NULL,
	[KODEBANK_TEMP] [varchar](50) NULL,
	[NOREKIDR_TEMP] [varchar](15) NULL,
	[NOREKUSD_TEMP] [varchar](15) NULL,
	[NOREKWALKING_TEMP] [varchar](15) NULL,
	[id_peserta] [varchar](50) NULL,
	[limit] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPenyetor]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPenyetor](
	[NPWPP] [varchar](15) NULL,
	[NAMAP] [varchar](100) NULL,
	[Kota] [varchar](50) NULL,
	[Alamat] [varchar](100) NULL,
	[KodePos] [varchar](8) NULL,
	[NoRek] [varchar](16) NULL,
	[ID] [int] NOT NULL,
	[NPWPI] [varchar](15) NULL,
	[Status] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblPelimpahanMPNG2]    Script Date: 03/23/2018 09:16:55 ******/
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
	[NOSAKTI] [varchar](50) NULL,
 CONSTRAINT [PK_TblPelimpahanMPNG2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNTB]    Script Date: 03/23/2018 09:16:55 ******/
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
/****** Object:  Table [dbo].[TblNotaNomer]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblNotaNomer](
	[SeqNo] [numeric](18, 0) NULL,
	[ID] [numeric](18, 0) NULL,
	[Branch] [varchar](6) NULL,
	[NoRek] [varchar](20) NULL,
	[Type] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNomor]    Script Date: 03/23/2018 09:16:55 ******/
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
/****** Object:  Table [dbo].[tblNasabah]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNasabah](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NPWP] [char](15) NULL,
	[Nama] [varchar](50) NULL,
	[Alamat] [varchar](150) NULL,
	[Kota] [varchar](50) NULL,
	[KodePos] [char](5) NULL,
	[NoAcc] [varchar](50) NULL,
	[status] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLLOGMPN]    Script Date: 03/23/2018 09:16:55 ******/
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
	[KETERANGAN] [varchar](150) NULL,
	[NOREK] [varchar](50) NULL,
	[UNAME] [varchar](50) NULL,
 CONSTRAINT [PK_TBLLOGMPN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblJnsByr]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblJnsByr](
	[IDBYR] [numeric](18, 0) NOT NULL,
	[KdMAP] [char](4) NULL,
	[KdJnsByr] [char](3) NULL,
	[NmJnsByr] [varchar](300) NULL,
	[show] [int] NULL,
	[kdEdi] [char](10) NULL,
	[Grup] [int] NULL,
	[KdMap6] [varchar](50) NULL,
	[Status] [char](1) NULL,
	[NamaMAP] [varchar](25) NULL,
	[NamaJenisSetoran] [varchar](25) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLINTERFACEREFNUM]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLINTERFACEREFNUM](
	[CTR] [int] NOT NULL,
	[CURR_DATE] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblImportir]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblImportir](
	[KodeKantor] [char](6) NULL,
	[NoReg] [char](6) NULL,
	[NoEDI] [char](50) NULL,
	[KodeID] [char](50) NULL,
	[NPWP] [char](15) NULL,
	[Nama] [char](30) NULL,
	[Alamat] [char](50) NULL,
	[Kota] [char](30) NULL,
	[KodePos] [char](10) NULL,
	[P_37] [nchar](12) NULL,
	[KPP] [varchar](10) NULL,
	[Domisili] [varchar](50) NULL,
	[NamaPenyetor] [varchar](50) NULL,
	[NoAcc] [varchar](50) NULL,
	[Status] [char](1) NULL,
	[Komisi] [float] NULL,
	[MataUang] [char](1) NULL,
	[MataUanglC] [char](10) NULL,
	[KomisiLC] [float] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLHISTORYPAYMENT]    Script Date: 03/23/2018 09:16:55 ******/
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
/****** Object:  Table [dbo].[tblHariLibur]    Script Date: 03/23/2018 09:16:55 ******/
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
	[jam] [varchar](50) NULL,
	[stslibur] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblGroupVerified]    Script Date: 03/23/2018 09:16:55 ******/
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
/****** Object:  Table [dbo].[tblGroupuser]    Script Date: 03/23/2018 09:16:55 ******/
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
/****** Object:  Table [dbo].[tblExchange]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblExchange](
	[ID] [int] NULL,
	[RateUSD] [float] NULL,
	[status] [char](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblConfig]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConfig](
	[CoT] [time](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCabangApp]    Script Date: 03/23/2018 09:16:55 ******/
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
	[rekCusWalking] [varchar](50) NULL,
	[CoT] [time](7) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblcabang]    Script Date: 03/23/2018 09:16:55 ******/
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
/****** Object:  Table [dbo].[TblBillingSettlement]    Script Date: 03/23/2018 09:16:55 ******/
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
	[ntb] [varchar](200) NULL,
	[ntpn] [varchar](200) NULL,
	[billerAccountNumber] [varchar](12) NULL,
	[FL_PAYMENT_TYPE] [float] NULL,
	[eXpiredDate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLBILLINGMPN]    Script Date: 03/23/2018 09:16:55 ******/
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
	[InterfaceRefNum] [varchar](50) NULL,
 CONSTRAINT [PK_TBLBILLINGMPN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBatchNo]    Script Date: 03/23/2018 09:16:55 ******/
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
/****** Object:  Table [dbo].[tblbankpersepsi]    Script Date: 03/23/2018 09:16:55 ******/
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
/****** Object:  Table [dbo].[tblAuditTrail]    Script Date: 03/23/2018 09:16:55 ******/
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
/****** Object:  Table [dbo].[TBL_TXSIMULATOR_MPN]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_TXSIMULATOR_MPN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NPWP] [varchar](50) NULL,
	[NAMAWP] [varchar](50) NULL,
	[ALAMATWP] [varchar](50) NULL,
	[KOTAWP] [varchar](50) NULL,
	[KDMAP] [varchar](50) NULL,
	[KDJNSBYR] [varchar](50) NULL,
	[IDPESERTA] [varchar](50) NULL,
	[IDBILLING] [varchar](50) NULL,
	[EXP_BILLING] [varchar](50) NULL,
	[CRT_BILLING] [varchar](50) NULL,
	[MASAPAJAK] [varchar](50) NULL,
	[NOSK] [varchar](50) NULL,
	[RC] [varchar](50) NULL,
	[URAIAN] [varchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_SIMULATOR_MPN]    Script Date: 03/23/2018 09:16:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_SIMULATOR_MPN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NPWP] [varchar](50) NULL,
	[NAMAWP] [varchar](50) NULL,
	[ALAMATWP] [varchar](50) NULL,
	[KOTAWP] [varchar](50) NULL,
	[KDMAP] [varchar](50) NULL,
	[KDJNSBYR] [varchar](50) NULL,
	[URAIAN] [varchar](50) NULL,
	[IDPESERTA] [varchar](50) NULL,
	[IDBILLING] [varchar](50) NULL,
	[EXP_BILLING] [varchar](50) NULL,
	[CRT_BILLING] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[SYS_GetUTCDateTime]    Script Date: 03/23/2018 09:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SYS_GetUTCDateTime]
AS
SELECT     GETDATE() AS UTCDateTime
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SYS_GetUTCDateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SYS_GetUTCDateTime'
GO
/****** Object:  StoredProcedure [dbo].[SP_GETSETTLEMENTDATE]    Script Date: 03/23/2018 09:16:52 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GenSTAN]    Script Date: 03/23/2018 09:16:52 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GenNTB]    Script Date: 03/23/2018 09:16:52 ******/
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
/****** Object:  StoredProcedure [dbo].[genNewNTB]    Script Date: 03/23/2018 09:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[genNewNTB]
	-- Add the parameters for the stored procedure here
	@NTB VARCHAR(12) OUTPUT
AS
BEGIN
	DECLARE @OUTNTB VARCHAR(12), @gtgBK varchar(2), @dy varchar(3), @doy varchar(3), @NB varchar(7), @NBV varchar(7)
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @gtgBK = (RIGHT(DATEPART(yy,getdate()),2))
	SET @dy = (select DATEDIFF(dy,DATEADD(yy, DATEDIFF(yy,0,convert(datetime,getdate(),105)), 0),convert(datetime,getdate(),105)) + 1)
	SET @doy = (SELECT RIGHT('00' + @dy, 3))
	--SELECT @NB = (SELECT ISNULL(MAX(RIGHT(RTRIM(NTB),7)),0) + 1 as OUTNTB FROM TbltxSSP WHERE RIGHT(left(CONVERT(VARCHAR,DtCreated,105),10),10) = RIGHT(left(CONVERT(VARCHAR,getdate(),105),10),10))
	SET @NB = (SELECT IDSEQ FROM TBLSEQ_NTB WHERE CONVERT(VARCHAR,TGL,105) = CONVERT(VARCHAR,GETDATE(),105))
	IF @NB IS NULL
		BEGIN
			SET @NB = 1
			UPDATE tblSEQ_NTB SET IDSEQ=2, TGL=GETDATE()
		END	
	ELSE
		BEGIN		
			UPDATE tblSEQ_NTB SET IDSEQ=@NB+1
		END	
	
	SET @NBV = (SELECT RIGHT('0000000' + @NB, 7))
	SET @OUTNTB = (@gtgBK + @doy + @NBV)
    SELECT @OUTNTB
END
GO
/****** Object:  UserDefinedFunction [dbo].[fniGetUTCDateTime]    Script Date: 03/23/2018 09:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fniGetUTCDateTime]()
RETURNS DATETIME AS
BEGIN
    DECLARE    @vdUTC DATETIME
    SELECT @vdUTC = UTCDateTime FROM SYS_GetUTCDateTime
    RETURN @vdUTC
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnGenNTB]    Script Date: 03/23/2018 09:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnGenNTB]() 
RETURNS varchar(12)
AS
BEGIN
        DECLARE @OUTNTB VARCHAR(12), @gtgBK varchar(2), @dy varchar(3), @doy varchar(3), @NB varchar(6), @NBV varchar(7)
	SELECT @gtgBK = (RIGHT(DATEPART(yy,getdate()),2))
	SELECT @dy = (select DATEDIFF(dy,DATEADD(yy, DATEDIFF(yy,0,convert(datetime,getdate(),105)), 0),convert(datetime,getdate(),105)) + 1)
	SELECT @doy = (SELECT RIGHT('00' + @dy, 3))
	SELECT @NB = (SELECT ISNULL(MAX(RIGHT(RTRIM(NTB),7)),0) + 1 as OUTNTB FROM TbltxSSP WHERE RIGHT(left(CONVERT(VARCHAR,DtCreated,105),10),10) = RIGHT(left(CONVERT(VARCHAR,getdate(),105),10),10))
	SELECT @NBV = (SELECT RIGHT('0000000' + @NB, 7))
	SELECT @OUTNTB = (@gtgBK + @doy + @NBV)
        RETURN @OUTNTB
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnGenNOREF]    Script Date: 03/23/2018 09:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnGenNOREF](@CBG varchar(4)) 
RETURNS varchar(12)
AS
BEGIN
        DECLARE @OUTREF VARCHAR(12), @tgl varchar(2), @NB varchar(6), @NBV varchar(6)
	SELECT @tgl = (RIGHT(DATEPART(dd,dbo.fniGetUTCDateTime()),2))
	SELECT @NB = (SELECT ISNULL(MAX(RIGHT(RTRIM(BankRefNumber),6)),0) + 1 as OUTREF FROM TbltxSSP WHERE RIGHT(LEFT(CONVERT(varchar, DtCreated, 105), 10), 7) = RIGHT(LEFT(CONVERT(varchar, dbo.fniGetUTCDateTime(), 105), 10), 7))
	SELECT @NBV = (SELECT RIGHT('0000000' + @NB, 6))
	SELECT @OUTREF = (@CBG + @tgl + @NBV)
        RETURN @OUTREF
END
GO
/****** Object:  Default [DF_TbltxSSP_DtCreated]    Script Date: 03/23/2018 09:16:55 ******/
ALTER TABLE [dbo].[TbltxSSP] ADD  CONSTRAINT [DF_TbltxSSP_DtCreated]  DEFAULT (getdate()) FOR [DtCreated]
GO
/****** Object:  Default [DF_TbltxSSP_G2_CountSend]    Script Date: 03/23/2018 09:16:55 ******/
ALTER TABLE [dbo].[TbltxSSP_G2] ADD  CONSTRAINT [DF_TbltxSSP_G2_CountSend]  DEFAULT ((0)) FOR [CountSend]
GO
/****** Object:  Default [DF_TbltxSSP_G2_TimeNextSend]    Script Date: 03/23/2018 09:16:55 ******/
ALTER TABLE [dbo].[TbltxSSP_G2] ADD  CONSTRAINT [DF_TbltxSSP_G2_TimeNextSend]  DEFAULT ((0.0)) FOR [TimeNextSend]
GO
/****** Object:  Default [DF_TbltxSSP_G2_TimeNextSend1]    Script Date: 03/23/2018 09:16:55 ******/
ALTER TABLE [dbo].[TbltxSSP_G2] ADD  CONSTRAINT [DF_TbltxSSP_G2_TimeNextSend1]  DEFAULT ((0.0)) FOR [TimeNextSend1]
GO
