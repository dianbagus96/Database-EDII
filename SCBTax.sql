USE [SCBTax]
GO
/****** Object:  Table [dbo].[tblUserweb]    Script Date: 03/23/2018 09:25:46 ******/
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
	[Limit] [varchar](25) NULL,
	[inUse] [varchar](50) NULL,
	[ipAdd] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TbltxSSP_G2]    Script Date: 03/23/2018 09:25:46 ******/
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
	[JMS_Flag] [char](1) NULL,
	[IBReffNum] [varchar](18) NULL,
	[trackingId] [varchar](18) NULL,
	[correlationID] [varchar](18) NULL,
	[CountSend] [char](1) NULL,
	[TimeNextSend] [char](14) NULL,
	[JMS_Create] [char](1) NULL,
	[JMS_Send] [char](1) NULL,
 CONSTRAINT [PK_TbltxSSP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLTXGROUP]    Script Date: 03/23/2018 09:25:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLTXGROUP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BATCHNO] [varchar](50) NULL,
	[GROUPID] [varchar](50) NULL,
	[TGLBAYAR] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTrml]    Script Date: 03/23/2018 09:25:46 ******/
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
/****** Object:  Table [dbo].[TblStatus]    Script Date: 03/23/2018 09:25:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblStatus](
	[KdTab] [char](3) NOT NULL,
	[KdRec] [char](4) NOT NULL,
	[Keterangan] [varchar](150) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblsetting]    Script Date: 03/23/2018 09:25:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblsetting](
	[alertBeforeExpire] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLREKON]    Script Date: 03/23/2018 09:25:46 ******/
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
	[IDBILLING] [varchar](15) NULL,
	[NTB] [varchar](12) NULL,
	[NTPN] [varchar](16) NULL,
	[JUMLAH] [varchar](50) NULL,
	[KDMATAUANG] [char](3) NULL,
	[NOSAKTI] [varchar](50) NULL,
	[STATUS] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRek]    Script Date: 03/23/2018 09:25:46 ******/
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
	[KODEBANK_TEMP] [varchar](15) NULL,
	[NOREKIDR_TEMP] [varchar](15) NULL,
	[NOREKUSD_TEMP] [varchar](15) NULL,
	[NOREKWALKING_TEMP] [varchar](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPibHdr]    Script Date: 03/23/2018 09:25:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPibHdr](
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
/****** Object:  Table [dbo].[tblPibDtl]    Script Date: 03/23/2018 09:25:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPibDtl](
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
/****** Object:  Table [dbo].[tblPenyetor]    Script Date: 03/23/2018 09:25:46 ******/
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
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NPWPI] [varchar](15) NULL,
	[Status] [char](1) NULL,
	[masterNo] [varchar](50) NULL,
	[productCode] [varchar](50) NULL,
	[glDepartmentID] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblPelimpahanMPNG2]    Script Date: 03/23/2018 09:25:46 ******/
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
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[NOMOR_SAKTI] [varchar](20) NULL,
	[FLAG_PELIMPAHAN] [varchar](1) NULL,
 CONSTRAINT [PK_TblPelimpahanMPNG2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblpaswdhistory]    Script Date: 03/23/2018 09:25:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblpaswdhistory](
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[DatePass] [datetime] NULL,
	[Datepassed] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNTB]    Script Date: 03/23/2018 09:25:46 ******/
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
/****** Object:  Table [dbo].[tblNomor]    Script Date: 03/23/2018 09:25:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNomor](
	[STANSeq] [char](6) NULL,
	[SSBPSeq] [char](4) NULL,
	[SSPCPSeq] [char](7) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNasabah]    Script Date: 03/23/2018 09:25:46 ******/
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
	[status] [char](1) NULL,
	[Email] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLLOGS2B]    Script Date: 03/23/2018 09:25:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLLOGS2B](
	[IDLOG] [bigint] IDENTITY(1,1) NOT NULL,
	[CUSTOMER_ID] [varchar](7) NULL,
	[ASSESSMENT_NUMBER] [varchar](15) NULL,
	[VALUE_DATE] [date] NULL,
	[STATUS] [varchar](50) NULL,
	[BATCH] [varchar](8) NULL,
	[PAYMENT_AMOUNT] [decimal](18, 2) NULL,
	[PAYEE_ACCOUNT_NUMBER] [varchar](15) NULL,
	[RESP_CODE] [varchar](5) NULL,
	[STS_KIRIM] [varchar](5) NULL,
 CONSTRAINT [PK_TBLLOGS2B] PRIMARY KEY CLUSTERED 
(
	[IDLOG] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLLOGMPN]    Script Date: 03/23/2018 09:25:46 ******/
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
/****** Object:  Table [dbo].[TblJnsByrNew]    Script Date: 03/23/2018 09:25:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblJnsByrNew](
	[IDBYR] [numeric](18, 0) NOT NULL,
	[KdMAP] [char](4) NULL,
	[KdJnsByr] [char](3) NULL,
	[NmJnsByr] [varchar](150) NULL,
	[show] [int] NULL,
	[kdEdi] [char](10) NULL,
	[Grup] [int] NULL,
	[KdMap6] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblJnsByr]    Script Date: 03/23/2018 09:25:45 ******/
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
	[NmJnsByr] [varchar](150) NULL,
	[show] [int] NULL,
	[kdEdi] [char](10) NULL,
	[Grup] [int] NULL,
	[KdMap6] [varchar](50) NULL,
	[Status] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblImportir]    Script Date: 03/23/2018 09:25:45 ******/
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
	[MataUangLC] [varchar](50) NULL,
	[KomisiLC] [float] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLHISTORYPAYMENT]    Script Date: 03/23/2018 09:25:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLHISTORYPAYMENT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JNS_TRANSAKSI] [varchar](50) NULL,
	[TGL_TRANSAKSI] [varchar](50) NULL,
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
	[LOG_ACT] [varchar](50) NULL,
 CONSTRAINT [PK_TBLHISTORYPAYMENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblHeaderDJP]    Script Date: 03/23/2018 09:25:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblHeaderDJP](
	[trackingId] [varchar](18) NOT NULL,
	[correlationID] [varchar](18) NULL,
	[messageVersion] [varchar](30) NULL,
	[typeName] [varchar](30) NULL,
	[subTypeName] [varchar](30) NULL,
	[messageSender] [varchar](30) NULL,
	[domainName] [varchar](30) NULL,
	[subDomainType] [varchar](30) NULL,
	[countryCode] [varchar](3) NULL,
	[messageTimestamp] [varchar](30) NULL,
	[initiatedTimestamp] [varchar](30) NULL,
	[possibleDuplicate] [varchar](30) NULL,
	[captureSystem] [varchar](30) NULL,
	[processName] [varchar](30) NULL,
	[eventType] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[trackingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblHariLibur]    Script Date: 03/23/2018 09:25:45 ******/
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
/****** Object:  Table [dbo].[TblGroupVerified]    Script Date: 03/23/2018 09:25:45 ******/
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
 CONSTRAINT [PK_TblGroupVerified] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGroupuser]    Script Date: 03/23/2018 09:25:45 ******/
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
/****** Object:  Table [dbo].[tblExchange]    Script Date: 03/23/2018 09:25:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblExchange](
	[ID] [int] NULL,
	[RateUSD] [float] NULL,
	[Status] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblebbs]    Script Date: 03/23/2018 09:25:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblebbs](
	[id] [varchar](50) NULL,
	[norek] [varchar](50) NULL,
	[nama] [nchar](10) NULL,
	[cabang] [nchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblConfig]    Script Date: 03/23/2018 09:25:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblConfig](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[MapRule] [int] NULL,
	[CoT] [time](7) NULL,
	[expiredBill] [varchar](3) NULL,
 CONSTRAINT [PK_tblConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCabangApp]    Script Date: 03/23/2018 09:25:45 ******/
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
	[eBBs] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[TblBillingSettlement]    Script Date: 03/23/2018 09:25:45 ******/
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
/****** Object:  Table [dbo].[TBLBILLINGMPN]    Script Date: 03/23/2018 09:25:45 ******/
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
	[TXAMT] [decimal](18, 0) NULL,
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
	[NOREKCUS] [char](15) NULL,
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
	[GROUPID] [varchar](10) NULL,
	[STSRESPONXML] [char](1) NULL,
	[EMAIL] [varchar](250) NULL,
	[BatchNo] [varchar](15) NULL,
	[FLAG_PELIMPAHAN] [int] NULL,
	[NOSAKTI2] [varchar](50) NULL,
	[flagPayment] [char](1) NULL,
	[STATUS_REKON] [varchar](50) NULL,
	[STATUS_REVERSAL] [varchar](50) NULL,
	[nmPenyetor] [varchar](50) NULL,
	[npwpPenyetor] [varchar](15) NULL,
 CONSTRAINT [PK_TBLBILLINGMPN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblbankpersepsi]    Script Date: 03/23/2018 09:25:45 ******/
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
/****** Object:  Table [dbo].[tblAuditTrail]    Script Date: 03/23/2018 09:25:45 ******/
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
/****** Object:  Table [dbo].[TBLACT]    Script Date: 03/23/2018 09:25:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLACT](
	[ACTION] [varchar](50) NULL,
	[DESCRIPTION] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLACCRISK]    Script Date: 03/23/2018 09:25:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLACCRISK](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOREK] [varchar](50) NULL,
	[RISK] [varchar](50) NULL,
	[DESC_RISK] [varchar](255) NULL,
	[ACTION] [varchar](50) NULL,
	[REMARKS] [varchar](50) NULL,
	[NOTIF] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_TXSIMULATOR_MPN]    Script Date: 03/23/2018 09:25:45 ******/
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
/****** Object:  Table [dbo].[TBL_SIMULATOR_MPN]    Script Date: 03/23/2018 09:25:45 ******/
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
/****** Object:  Table [dbo].[TBL_REK_KORAN]    Script Date: 03/23/2018 09:25:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_REK_KORAN](
	[ID_REK_KORAN] [bigint] IDENTITY(1,1) NOT NULL,
	[TRANSACTION_CODE] [varchar](20) NOT NULL,
	[DEBIT_KREDIT] [varchar](1) NOT NULL,
	[REFERENCE_NUMBER] [varchar](20) NOT NULL,
	[TRANSACTION_DATE] [date] NOT NULL,
	[VALUE_DATE] [date] NOT NULL,
	[AMOUNT] [decimal](18, 2) NOT NULL,
	[ID_BILLING] [varchar](20) NOT NULL,
	[DATE_CREATE] [datetime] NOT NULL,
	[SALDO_AWAL] [decimal](18, 2) NOT NULL,
	[SALDO_AKHIR] [decimal](18, 2) NOT NULL,
	[SETTLEMENT_DATE] [date] NULL,
	[REK_CUSTOMER] [varchar](15) NULL,
 CONSTRAINT [PK_TBL_REK_KORAN] PRIMARY KEY CLUSTERED 
(
	[ID_REK_KORAN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_PIB_SERIAL]    Script Date: 03/23/2018 09:25:45 ******/
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
/****** Object:  Table [dbo].[TBL_PIB_PGT]    Script Date: 03/23/2018 09:25:45 ******/
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
/****** Object:  Table [dbo].[TBL_PIB_HDR]    Script Date: 03/23/2018 09:25:45 ******/
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
	[LOCALDATETIME] [datetime] NULL,
	[stsT2G] [char](3) NULL,
	[stsMPN] [char](3) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_PIB_DOK]    Script Date: 03/23/2018 09:25:45 ******/
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
/****** Object:  Table [dbo].[login]    Script Date: 03/23/2018 09:25:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login](
	[password] [varchar](50) NULL,
	[username] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[genNewNTB]    Script Date: 03/23/2018 09:25:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[genNewNTB] @NTB VARCHAR(12) OUTPUT
	-- Add the parameters for the stored procedure here
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
/****** Object:  StoredProcedure [dbo].[SP_GETSETTLEMENTDATE]    Script Date: 03/23/2018 09:25:43 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GenSTAN]    Script Date: 03/23/2018 09:25:43 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GenNTB]    Script Date: 03/23/2018 09:25:43 ******/
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
/****** Object:  Default [DF_TBL_PIB_HDR_LOCALDATETIME]    Script Date: 03/23/2018 09:25:45 ******/
ALTER TABLE [dbo].[TBL_PIB_HDR] ADD  CONSTRAINT [DF_TBL_PIB_HDR_LOCALDATETIME]  DEFAULT (getdate()) FOR [LOCALDATETIME]
GO
/****** Object:  Default [DF_tblCabangApp_kdBank]    Script Date: 03/23/2018 09:25:45 ******/
ALTER TABLE [dbo].[tblCabangApp] ADD  CONSTRAINT [DF_tblCabangApp_kdBank]  DEFAULT ('0000') FOR [kdBank]
GO
/****** Object:  Default [DF_tblExchange_status]    Script Date: 03/23/2018 09:25:45 ******/
ALTER TABLE [dbo].[tblExchange] ADD  CONSTRAINT [DF_tblExchange_status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_tblImportir_Status]    Script Date: 03/23/2018 09:25:45 ******/
ALTER TABLE [dbo].[tblImportir] ADD  CONSTRAINT [DF_tblImportir_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_TblJnsByr_Status]    Script Date: 03/23/2018 09:25:45 ******/
ALTER TABLE [dbo].[TblJnsByr] ADD  CONSTRAINT [DF_TblJnsByr_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_tblPenyetor_Status]    Script Date: 03/23/2018 09:25:46 ******/
ALTER TABLE [dbo].[tblPenyetor] ADD  CONSTRAINT [DF_tblPenyetor_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_TbltxSSP_DtCreated]    Script Date: 03/23/2018 09:25:46 ******/
ALTER TABLE [dbo].[TbltxSSP_G2] ADD  CONSTRAINT [DF_TbltxSSP_DtCreated]  DEFAULT (getdate()) FOR [DtCreated]
GO
/****** Object:  Default [DF_TbltxSSP_G2_JMS_Flag]    Script Date: 03/23/2018 09:25:46 ******/
ALTER TABLE [dbo].[TbltxSSP_G2] ADD  CONSTRAINT [DF_TbltxSSP_G2_JMS_Flag]  DEFAULT ((0)) FOR [JMS_Flag]
GO
/****** Object:  Default [DF_TbltxSSP_G2_CountSend]    Script Date: 03/23/2018 09:25:46 ******/
ALTER TABLE [dbo].[TbltxSSP_G2] ADD  CONSTRAINT [DF_TbltxSSP_G2_CountSend]  DEFAULT ('0') FOR [CountSend]
GO
/****** Object:  Default [DF_TbltxSSP_G2_TimeNextSend]    Script Date: 03/23/2018 09:25:46 ******/
ALTER TABLE [dbo].[TbltxSSP_G2] ADD  CONSTRAINT [DF_TbltxSSP_G2_TimeNextSend]  DEFAULT ('00000000000000') FOR [TimeNextSend]
GO
/****** Object:  Default [DF_TbltxSSP_G2_JMS_Create]    Script Date: 03/23/2018 09:25:46 ******/
ALTER TABLE [dbo].[TbltxSSP_G2] ADD  CONSTRAINT [DF_TbltxSSP_G2_JMS_Create]  DEFAULT ((0)) FOR [JMS_Create]
GO
/****** Object:  Default [DF_TbltxSSP_G2_JMS_Send]    Script Date: 03/23/2018 09:25:46 ******/
ALTER TABLE [dbo].[TbltxSSP_G2] ADD  CONSTRAINT [DF_TbltxSSP_G2_JMS_Send]  DEFAULT ((0)) FOR [JMS_Send]
GO
