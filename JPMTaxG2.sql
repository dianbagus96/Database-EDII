USE [JPMTaxG2]
GO
/****** Object:  Table [dbo].[password_resets]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[password_resets](
	[email] [nvarchar](255) NOT NULL,
	[token] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[migrations]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[migrations](
	[migration] [nvarchar](255) NOT NULL,
	[batch] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[remember_token] [nvarchar](100) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[gid] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK__users__3213E83F59063A47] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TJNSBYR]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TJNSBYR](
	[IDBYR] [numeric](28, 0) NULL,
	[KDMAP4] [varchar](4) NULL,
	[KDMAP6] [varchar](6) NULL,
	[NMJNSBYR] [varchar](110) NULL,
	[ACCKN] [varchar](35) NULL,
	[GRUP] [numeric](28, 0) NULL,
	[KDJNSBYR] [varchar](3) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUserweb]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUserweb](
	[EmployeeNumber] [varchar](50) NULL,
	[FINo] [varchar](50) NULL,
	[BranchNo] [varchar](50) NULL,
	[TrmlID] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[DepartmentID] [varchar](50) NULL,
	[DepartmentName] [varchar](50) NULL,
	[NationalEmplNumber] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Title] [varchar](50) NULL,
	[Birthdate] [varchar](50) NULL,
	[Extension] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[StateOrProvince] [varchar](50) NULL,
	[PostalCode] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[HomePhone] [varchar](50) NULL,
	[WorkPhone] [varchar](50) NULL,
	[EmailName] [varchar](50) NULL,
	[SupervisorID] [varchar](50) NULL,
	[Notes] [varchar](50) NULL,
	[OfficeLocation] [varchar](50) NULL,
	[RuleID] [varchar](50) NULL,
	[LockUser] [varchar](50) NULL,
	[FirstLogin] [varchar](50) NULL,
	[LastLogin] [varchar](50) NULL,
	[Registered] [varchar](50) NULL,
	[ExpiredPassword] [varchar](50) NULL,
	[LastChPwd] [varchar](50) NULL,
	[FirstChPwd] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[CreateBy] [varchar](50) NULL,
	[expired] [varchar](50) NULL,
	[idCabangApp] [varchar](50) NULL,
	[Privillege] [varchar](50) NULL,
	[inUse] [varchar](50) NULL,
	[ipAdd] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbluser]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbluser](
	[usrnme] [varchar](50) NULL,
	[fullnm] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
	[status] [varchar](1) NULL,
	[akses] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTxSSPCP]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTxSSPCP](
	[ID] [numeric](18, 0) NOT NULL,
	[IDSSPCP] [numeric](18, 0) NOT NULL,
	[KodeMAP] [char](6) NOT NULL,
	[KodeJnsByr] [char](3) NOT NULL,
	[TxAmt] [float] NOT NULL,
	[Tgl] [datetime] NOT NULL,
	[Waktu] [datetime] NOT NULL,
	[IDBYR] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TbltxSSP_G2]    Script Date: 03/23/2018 09:14:57 ******/
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
	[BatchNo] [varchar](15) NULL,
	[UserName] [varchar](15) NULL,
	[IDPeserta] [varchar](50) NULL,
	[KdIDPeserta] [char](1) NULL,
	[IDBilling] [varchar](16) NULL,
	[NoIdentitasLain] [varchar](16) NULL,
	[ResponseCodeG2] [char](2) NULL,
	[CountSend] [char](1) NULL,
	[TimeNextSend] [char](14) NULL,
	[Uraian] [varchar](255) NULL,
	[expiredBilling] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TbltxSSP]    Script Date: 03/23/2018 09:14:57 ******/
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
	[UserName] [varchar](15) NULL,
	[NoFaktur] [varchar](50) NULL,
	[Kurs] [varchar](50) NULL,
	[NTB] [varchar](12) NULL,
	[NAMAMAP] [varchar](250) NULL,
	[BatchNo] [varchar](16) NULL,
	[NoReferensi] [varchar](50) NULL,
	[StatusAML] [char](3) NULL,
	[flagAML] [char](1) NULL,
 CONSTRAINT [PK_TbltxSSP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TbltxBilling]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TbltxBilling](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDBILLING] [varchar](15) NULL,
	[IDSSPCP] [numeric](18, 0) NULL,
	[kdsetor] [varchar](15) NOT NULL,
	[NPWP] [char](15) NULL,
	[KdMAP] [char](6) NULL,
	[IDBYR] [varchar](50) NULL,
	[KdJnsByr] [char](3) NULL,
	[MsPjk] [varchar](12) NULL,
	[ThPjk] [int] NULL,
	[hdBankCode] [varchar](12) NULL,
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
	[NTPN] [varchar](16) NULL,
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
	[NoDokumen] [varchar](30) NULL,
	[PrtFlag] [bit] NULL,
	[VerFlag] [char](1) NULL,
	[DeptCode] [char](2) NULL,
	[BankRefNumber] [char](16) NULL,
	[ResponseCode] [char](2) NULL,
	[Lokasi] [varchar](50) NULL,
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
	[KPPBC] [varchar](10) NULL,
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
	[Akun] [varchar](6) NULL,
	[BudgetId] [varchar](12) NULL,
	[KanalPembayaran] [varchar](50) NULL,
	[SwitcherCode] [varchar](30) NULL,
	[TglDokumen] [varchar](10) NULL,
	[JenisDokumen] [varchar](50) NULL,
	[UNIT_ESELON_I] [varchar](30) NULL,
	[K_L] [varchar](30) NULL,
	[SATKER] [varchar](30) NULL,
	[Amount] [varchar](12) NULL,
	[VIA] [varchar](15) NULL,
	[FILLING] [bigint] NULL,
	[stsWS] [char](1) NULL,
	[NOSAKTI] [varchar](50) NULL,
	[STATUS_REKON] [varchar](50) NULL,
	[Re_Inquiry] [char](1) NULL,
	[stsPay] [char](3) NULL,
	[stsReversal] [char](3) NULL,
	[CUSTID] [varchar](50) NULL,
	[stsRelease] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTrml]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTrml](
	[idTrml] [varchar](50) NULL,
	[kdTrml] [varchar](50) NULL,
	[ketTrml] [varchar](50) NULL,
	[simbolTrml] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblStatus]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblStatus](
	[KdTab] [varchar](50) NULL,
	[KdRec] [varchar](50) NULL,
	[Keterangan] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSEQ_GrpID]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSEQ_GrpID](
	[tanggal] [date] NULL,
	[counter] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblResponPay]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblResponPay](
	[idBilling] [varchar](16) NULL,
	[respon] [varchar](3) NULL,
	[waktu] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblRespon]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblRespon](
	[id] [bigint] NOT NULL,
	[IDSSPCP] [varchar](50) NULL,
	[KodeRespon] [char](3) NULL,
	[UraianRespon] [varchar](2000) NULL,
	[TglRespon] [datetime] NULL,
	[EDINUMBER] [varchar](35) NULL,
	[car] [varchar](26) NULL,
	[KodeStatus] [char](1) NULL,
	[TglCreate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLREKON]    Script Date: 03/23/2018 09:14:57 ******/
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
/****** Object:  Table [dbo].[tblRekening]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRekening](
	[ID] [int] NOT NULL,
	[NPWP] [varchar](15) NULL,
	[NoRek] [varchar](16) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[GROUP_CONCAT]    Script Date: 03/23/2018 09:14:59 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[GROUP_CONCAT]
(
	@CAR AS VARCHAR(26)
)
RETURNS VARCHAR(2000)
AS
BEGIN

DECLARE @hasil VARCHAR(MAX)
	SELECT @hasil = COALESCE(@hasil + ', ','') + DOKNO
	FROM tblPibDOk
	WHERE CAR=@CAR AND DOKKD='380'
RETURN @hasil
END
GO
/****** Object:  Table [dbo].[tblpaswdhistory]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblpaswdhistory](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[DatePass] [datetime] NULL,
	[DatePassed] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNomor]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNomor](
	[STANSeq] [char](6) NULL,
	[SSBPSeq] [char](4) NULL,
	[SSPCPSeq] [char](10) NULL,
	[SspStanSeq] [char](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNasabah]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNasabah](
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
/****** Object:  Table [dbo].[TblJnsByr]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblJnsByr](
	[IDBYR] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[tblHariLibur]    Script Date: 03/23/2018 09:14:57 ******/
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
	[stsLibur] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGroupuser]    Script Date: 03/23/2018 09:14:57 ******/
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
/****** Object:  Table [dbo].[tblCustID]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCustID](
	[CUSTID] [varchar](50) NOT NULL,
	[NAMA] [varchar](50) NULL,
	[ACCOUNT] [varchar](50) NOT NULL,
	[stsAccount] [varchar](50) NULL,
 CONSTRAINT [PK_tblCustID] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblConfigDJP]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblConfigDJP](
	[DefaultChannel] [char](10) NULL,
	[CurrentSettlement] [datetime] NULL,
	[CutOffSettlement] [datetime] NULL,
	[BankCode] [char](4) NULL,
	[BranchCode] [char](6) NULL,
	[CutOffDJP] [char](5) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblConfig]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConfig](
	[ID] [numeric](18, 0) NOT NULL,
	[MapRule] [int] NULL,
	[CoT2] [time](7) NULL,
	[CoT] [time](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCabangApp]    Script Date: 03/23/2018 09:14:57 ******/
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
	[rekDEVISA] [varchar](50) NULL,
	[rekPBB] [varchar](50) NULL,
	[rekBPHTB] [varchar](50) NULL,
	[rekPERSEPSI] [varchar](50) NULL,
	[cabNPWP] [varchar](50) NULL,
	[kdBanktemp] [varchar](4) NULL,
	[kdCabBanktemp] [varchar](6) NULL,
	[cabNamatemp] [varchar](50) NULL,
	[cabAlamattemp] [varchar](100) NULL,
	[cabKotatemp] [varchar](50) NULL,
	[kdKPPNtemp] [varchar](50) NULL,
	[NoRekKPPNtemp] [varchar](50) NULL,
	[idTrmltemp] [varchar](50) NULL,
	[rekDEVISAtemp] [varchar](50) NULL,
	[rekBPHTBtemp] [varchar](50) NULL,
	[rekPBBtemp] [varchar](50) NULL,
	[rekPERSEPSItemp] [varchar](50) NULL,
	[cabNPWPtemp] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAuditTrail]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAuditTrail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Iduser] [char](20) NULL,
	[nama] [varchar](50) NULL,
	[Pagevisit] [char](50) NULL,
	[Waktu] [datetime] NULL,
	[Aktivitas] [varchar](200) NULL,
	[ipaddress] [varchar](15) NULL,
	[kdcabang] [varchar](6) NULL,
 CONSTRAINT [PK_tblAuditTrail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_SIMULATOR_MPN_]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_SIMULATOR_MPN_](
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
/****** Object:  Table [dbo].[TBL_SIMULATOR_MPN]    Script Date: 03/23/2018 09:14:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_SIMULATOR_MPN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NPWP] [varchar](50) NULL,
	[NAMAWP] [varchar](100) NULL,
	[ALAMATWP] [varchar](150) NULL,
	[KOTAWP] [varchar](50) NULL,
	[KODEBANK] [varchar](4) NULL,
	[KODECABANG] [varchar](6) NULL,
	[KDMAP] [varchar](50) NULL,
	[KDJNSBYR] [varchar](50) NULL,
	[URAIAN] [varchar](50) NULL,
	[IDPESERTA] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[SYS_GetUTCDateTime]    Script Date: 03/23/2018 09:15:00 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GenStanSsp]    Script Date: 03/23/2018 09:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
			-- Author: <Author,,Name>
			-- Create date: <Create Date,,>
			-- Description: <Description,,>
			-- =============================================
			CREATE PROCEDURE [dbo].[SP_GenStanSsp] 
			AS
			BEGIN
			DECLARE @temp varchar(7), @result varchar(7)

			SET @temp = (SELECT TOP 1 SspStanSeq FROM tblNomor)

			IF  (@temp IS NULL) OR (@temp = '999999')
				BEGIN
					--SET @temp = '0000001'
					SET @result = 1000000 + '0000001'
					SET @result = RIGHT(@result, 6)
					IF @temp IS NULL
						BEGIN
							INSERT INTO tblNomor (SspStanSeq) VALUES(@result)
						END
					ELSE IF @temp = '999999'
						BEGIN
							UPDATE tblNomor SET SspStanSeq=@result
						END
				END
			ELSE
				BEGIN
					SET @temp = @temp + 1
					SET @result = 1000000 + @temp
					SET @result = RIGHT(@result, 6)
					UPDATE tblNomor SET SspStanSeq=@result
				END
			SELECT @result as SspStanSeq
			END
GO
/****** Object:  StoredProcedure [dbo].[genNewNTB]    Script Date: 03/23/2018 09:14:55 ******/
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
			INSERT INTO tblSEQ_NTB (IDSEQ, TGL) VALUES (@NB+1, GETDATE())
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
/****** Object:  UserDefinedFunction [dbo].[fniGetUTCDateTime]    Script Date: 03/23/2018 09:14:59 ******/
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
/****** Object:  UserDefinedFunction [dbo].[getTGBK]    Script Date: 03/23/2018 09:14:59 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[getTGBK]()

RETURNS varchar(10)
AS
BEGIN
        DECLARE @OUTTGBK VARCHAR(10)
	SELECT @OUTTGBK = (SELECT convert(varchar,TGLBUKUNOW,105) AS OUTTGBK FROM TBLBANKPERSEPSI)
        RETURN @OUTTGBK
END
GO
/****** Object:  UserDefinedFunction [dbo].[genTGBK2]    Script Date: 03/23/2018 09:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[genTGBK2](@INTGBK VARCHAR(4))

RETURNS datetime
AS
BEGIN
        DECLARE @OUTTGBK datetime, @TGBK datetime, @tgbkn varchar(10), @TGLBKDB datetime
	set @tgbkn = convert(varchar(2),right(@INTGBK,2)) + '-' + convert(varchar(2),left(@INTGBK,2)) + '-' + convert(varchar(4),YEAR(dbo.fniGetUTCDateTime()))
	SELECT @TGBK = (SELECT convert(datetime,@tgbkn,105))

        IF DATEDIFF(dy,0,convert(datetime,@TGBK,105)) >= DATEDIFF(dy,0,convert(datetime,dbo.fniGetUTCDateTime(),105))
    		BEGIN
			SET @OUTTGBK = @TGBK
		END
  	ELSE
		BEGIN
	    		SET @OUTTGBK = DATEDIFF(dy,-1,convert(datetime,dbo.fniGetUTCDateTime(),105))
  		END

	SET @TGLBKDB = (SELECT tglBuku FROM tblHariLibur WHERE CONVERT(datetime,tglLIBUR,105)=@OUTTGBK);
		IF @TGLBKDB IS NOT NULL
		BEGIN
			SET @OUTTGBK = @TGLBKDB;
		END
		
RETURN @OUTTGBK
END
GO
/****** Object:  UserDefinedFunction [dbo].[genTGBK]    Script Date: 03/23/2018 09:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[genTGBK](@INTGBK VARCHAR(4))

RETURNS datetime
AS
BEGIN
        DECLARE @OUTTGBK datetime, @TGBK datetime, @tgbkn varchar(10), @TGLBKDB datetime
	set @tgbkn = convert(varchar(2),right(@INTGBK,2)) + '-' + convert(varchar(2),left(@INTGBK,2)) + '-' + convert(varchar(4),YEAR(dbo.fniGetUTCDateTime()))
	SELECT @TGBK = (SELECT convert(datetime,@tgbkn,105))

        IF DATEDIFF(dy,0,convert(datetime,@TGBK,105)) >= DATEDIFF(dy,0,convert(datetime,dbo.fniGetUTCDateTime(),105))
    		BEGIN
			SET @OUTTGBK = @TGBK
		END
  	ELSE
		BEGIN
	    		SET @OUTTGBK = DATEDIFF(dy,-1,convert(datetime,dbo.fniGetUTCDateTime(),105))
  		END

	SET @TGLBKDB = (SELECT tglBuku FROM tblHariLibur WHERE CONVERT(datetime,tglLIBUR,105)=@OUTTGBK);
		IF @TGLBKDB IS NOT NULL
		BEGIN
			SET @OUTTGBK = @TGLBKDB;
		END
		
RETURN @OUTTGBK
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnGenNTB]    Script Date: 03/23/2018 09:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnGenNTB]() 
RETURNS varchar(12)
AS
BEGIN
        DECLARE @OUTNTB VARCHAR(12), @gtgBK varchar(2), @dy varchar(3), @doy varchar(3), @NB varchar(6), @NBV varchar(7)
	SELECT @gtgBK = (RIGHT(DATEPART(yy,dbo.fniGetUTCDateTime()),2))
	SELECT @dy = (select DATEDIFF(dy,DATEADD(yy, DATEDIFF(yy,0,convert(datetime,dbo.fniGetUTCDateTime(),105)), 0),convert(datetime,dbo.fniGetUTCDateTime(),105)) + 1)
	SELECT @doy = (SELECT RIGHT('00' + @dy, 3))
	SELECT @NB = (SELECT ISNULL(MAX(RIGHT(RTRIM(NTB),7)),0) + 1 as OUTNTB FROM TbltxSSP WHERE RIGHT(left(CONVERT(VARCHAR,DtCreated,105),10),7) = RIGHT(left(CONVERT(VARCHAR,dbo.fniGetUTCDateTime(),105),10),7))
	SELECT @NBV = (SELECT RIGHT('0000000' + @NB, 7))
	SELECT @OUTNTB = (@gtgBK + @doy + @NBV)
        RETURN @OUTNTB
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnGenNOSSPCP]    Script Date: 03/23/2018 09:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnGenNOSSPCP]()
RETURNS varchar(13)
AS
BEGIN
        DECLARE @OUT VARCHAR(13),  @NB varchar(6), @NBV varchar(6)
	SELECT @NB = (SELECT ISNULL(MAX(RIGHT(RTRIM(NoSSPCP),6)),0) + 1 as OUT FROM TblSSPCP WHERE RIGHT(LEFT(CONVERT(varchar, tgl, 105), 10), 7) = RIGHT(LEFT(CONVERT(varchar, dbo.fniGetUTCDateTime(), 105), 10), 7))
	SELECT @NBV = (SELECT RIGHT('0000000' + @NB, 6))
	SELECT @OUT = ('061'+'0306' + @NBV)
        RETURN @OUT
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnGenNOREF]    Script Date: 03/23/2018 09:14:59 ******/
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
/****** Object:  Default [DF__tblCustID__stsAc__3E52440B]    Script Date: 03/23/2018 09:14:57 ******/
ALTER TABLE [dbo].[tblCustID] ADD  DEFAULT ((0)) FOR [stsAccount]
GO
/****** Object:  Default [DF_tblResponPay_waktu]    Script Date: 03/23/2018 09:14:57 ******/
ALTER TABLE [dbo].[tblResponPay] ADD  CONSTRAINT [DF_tblResponPay_waktu]  DEFAULT (getdate()) FOR [waktu]
GO
/****** Object:  Default [DF_tblSSPCP_DtCreated]    Script Date: 03/23/2018 09:14:57 ******/
ALTER TABLE [dbo].[tblSSPCP] ADD  CONSTRAINT [DF_tblSSPCP_DtCreated]  DEFAULT (getdate()) FOR [DtCreated]
GO
/****** Object:  Default [DF_tblSSPCP_KodeId]    Script Date: 03/23/2018 09:14:57 ******/
ALTER TABLE [dbo].[tblSSPCP] ADD  CONSTRAINT [DF_tblSSPCP_KodeId]  DEFAULT ('5') FOR [KodeId]
GO
/****** Object:  Default [DF_TbltxSSP_DtCreated]    Script Date: 03/23/2018 09:14:57 ******/
ALTER TABLE [dbo].[TbltxSSP] ADD  CONSTRAINT [DF_TbltxSSP_DtCreated]  DEFAULT (getdate()) FOR [DtCreated]
GO
/****** Object:  Default [DF_TbltxSSP_G2_CountSend]    Script Date: 03/23/2018 09:14:57 ******/
ALTER TABLE [dbo].[TbltxSSP_G2] ADD  CONSTRAINT [DF_TbltxSSP_G2_CountSend]  DEFAULT ('0') FOR [CountSend]
GO
/****** Object:  Default [DF_TbltxSSP_G2_TimeNextSend]    Script Date: 03/23/2018 09:14:57 ******/
ALTER TABLE [dbo].[TbltxSSP_G2] ADD  CONSTRAINT [DF_TbltxSSP_G2_TimeNextSend]  DEFAULT ('00000000000000') FOR [TimeNextSend]
GO
/****** Object:  Default [DF_tbluser_status]    Script Date: 03/23/2018 09:14:57 ******/
ALTER TABLE [dbo].[tbluser] ADD  CONSTRAINT [DF_tbluser_status]  DEFAULT ((0)) FOR [status]
GO
