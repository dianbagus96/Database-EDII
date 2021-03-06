USE [ANZTax]
GO
/****** Object:  Table [dbo].[ERRDEFF]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERRDEFF](
	[ID] [float] NULL,
	[DESCRIPTION] [nvarchar](255) NULL,
	[ Blank] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[EnkripsiData]    Script Date: 03/23/2018 09:12:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[EnkripsiData](@val as varchar(100)) 
RETURNS varbinary(255)
AS
BEGIN

        DECLARE @hasil varbinary(255)
		SET @hasil = EncryptByKey(Key_GUID('PasswordFieldSymmetricKey'),@val) 
        RETURN @hasil
END
GO
/****** Object:  UserDefinedFunction [dbo].[DekripData]    Script Date: 03/23/2018 09:12:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[DekripData](@field as varchar(100)) 
RETURNS varchar(200)
AS
BEGIN

        DECLARE @hasil varchar(200)
		SET @hasil = CONVERT(varchar, DecryptByKey(@field))
        RETURN @hasil
END
GO
/****** Object:  Table [dbo].[datTxBC]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[datTxBC](
	[KodeMAP] [char](4) NOT NULL,
	[KodeJnsByr] [char](3) NOT NULL,
	[TxAmt] [float] NOT NULL,
	[Tgl] [datetime] NOT NULL,
	[Waktu] [datetime] NOT NULL,
	[TxNoBC] [char](12) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[datSSP]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[datSSP](
	[NPWP] [char](15) NOT NULL,
	[KdMAP] [char](4) NOT NULL,
	[KdJnsByr] [char](3) NOT NULL,
	[MsPjk] [char](4) NOT NULL,
	[ThPjk] [int] NOT NULL,
	[hdBankCode] [char](4) NOT NULL,
	[hdBranchNo] [char](4) NOT NULL,
	[NoSK] [char](15) NULL,
	[TglByr] [datetime] NOT NULL,
	[JamByr] [datetime] NOT NULL,
	[TxNo] [varchar](12) NOT NULL,
	[TxAmt] [float] NOT NULL,
	[NamaWP] [varchar](50) NULL,
	[AlamtWP] [varchar](50) NULL,
	[KotaWP] [varchar](50) NULL,
	[NTPP] [varchar](16) NULL,
	[TrmlID] [varchar](16) NOT NULL,
	[CurrCode] [varchar](3) NULL,
	[STAN] [varchar](6) NULL,
	[DtAuthdByMP3] [datetime] NULL,
	[DtCreated] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[DtModified] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[RevFlag] [int] NULL,
	[S90MsgID] [varchar](100) NULL,
	[Rekcreflag] [int] NULL,
	[Rekcreadate] [datetime] NULL,
	[RekStat] [char](2) NULL,
	[Rekstatdate] [datetime] NULL,
	[ProcCode] [varchar](6) NULL,
	[Pelabuhan] [varchar](50) NULL,
	[NoDokumen] [varchar](4) NULL,
	[PrtFlag] [bit] NULL,
	[VerFlag] [bit] NULL,
	[DeptCode] [char](2) NULL,
	[BankRefNumber] [char](16) NULL,
	[ResponseCode] [char](2) NULL,
	[MsgType] [char](4) NULL,
	[Lokasi] [char](4) NULL,
	[TxNoBC] [varchar](12) NULL,
	[NTB] [char](20) NULL,
	[Discount] [float] NULL,
	[KPKN] [varchar](10) NULL,
	[NoReg] [char](20) NULL,
	[Kurs] [float] NULL,
	[NPWPPenyetor] [char](15) NULL,
	[NamaPenyetor] [char](30) NULL,
	[NoFaktur] [char](15) NULL,
	[EximFlag] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[datBC]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[datBC](
	[NoRegistrasi] [char](12) NULL,
	[TglAjuPIB] [datetime] NULL,
	[NoAjuPIB] [char](6) NULL,
	[KodeSetor] [char](5) NULL,
	[KodeBayar] [char](5) NULL,
	[KodeKPBC] [char](6) NULL,
	[NoPendaftaranPIB] [char](6) NULL,
	[TglPendaftaranPIB] [datetime] NULL,
	[NoSSPCP] [char](30) NULL,
	[NPWP] [char](15) NOT NULL,
	[Nama] [varchar](50) NULL,
	[Alamat] [varchar](50) NULL,
	[Kota] [varchar](50) NULL,
	[KodePos] [char](10) NULL,
	[Dokumen] [varchar](20) NULL,
	[NoDokumen] [varchar](50) NULL,
	[TglDokumen] [datetime] NULL,
	[Tgl] [datetime] NOT NULL,
	[Waktu] [datetime] NOT NULL,
	[TxNoBC] [char](12) NOT NULL,
	[hdBankCode] [char](4) NULL,
	[hdBranchNo] [char](4) NULL,
	[TrmlID] [varchar](16) NULL,
	[DeptCode] [char](2) NULL,
	[DtCreated] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[PrintFlag] [bit] NULL,
	[NoSPKBM] [varchar](18) NULL,
	[KPKN] [varchar](10) NULL,
	[TglSPKBM] [datetime] NULL,
	[Lokasi] [char](4) NULL,
	[MsPjk] [char](10) NULL,
	[ThPjk] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BU_TbltxSSP]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BU_TbltxSSP](
	[ID] [numeric](18, 0) NOT NULL,
	[IDSSPCP] [numeric](18, 0) NULL,
	[kdsetor] [char](5) NULL,
	[NPWP] [char](15) NULL,
	[KdMAP] [char](8) NULL,
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
	[VerFlag] [bit] NULL,
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
	[KPPBB] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BU_tblSSPCP_]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BU_tblSSPCP_](
	[ID] [numeric](18, 0) NOT NULL,
	[Car] [char](26) NULL,
	[KodeSetor] [char](5) NULL,
	[KodeBayar] [char](5) NULL,
	[KodeKPBC] [char](6) NULL,
	[NoPendaftaranPIB] [char](6) NULL,
	[TglPendaftaranPIB] [datetime] NULL,
	[NoSSPCP] [nvarchar](30) NULL,
	[IdNpwp] [char](1) NULL,
	[NPWP] [char](15) NULL,
	[Nama] [varchar](50) NULL,
	[Alamat] [varchar](255) NULL,
	[Kota] [varchar](50) NULL,
	[KodePos] [varchar](10) NULL,
	[Dokumen] [varchar](20) NULL,
	[NoDokumen] [varchar](50) NULL,
	[TglDokumen] [datetime] NULL,
	[TxNo] [varchar](12) NULL,
	[Tgl] [datetime] NULL,
	[Waktu] [datetime] NULL,
	[hdBankCode] [char](4) NULL,
	[hdBranchNo] [char](6) NULL,
	[TrmlID] [varchar](16) NULL,
	[DeptCode] [char](2) NULL,
	[DtCreated] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[PrintFlag] [bit] NULL,
	[NoSPKBM] [varchar](18) NULL,
	[KPKN] [varchar](10) NULL,
	[TglSPKBM] [datetime] NULL,
	[Lokasi] [char](4) NULL,
	[MsPjk] [char](10) NULL,
	[ThPjk] [int] NULL,
	[Status] [char](3) NULL,
	[EDINum] [varchar](30) NULL,
	[VerifiedBy] [varchar](50) NULL,
	[Source] [bit] NULL,
	[Total] [float] NULL,
	[cicilan] [int] NULL,
	[KodeId] [char](10) NULL,
	[KodeKPP] [char](10) NULL,
	[SNRF] [char](14) NULL,
	[MsgType] [char](4) NULL,
	[ProcCode] [char](6) NULL,
	[STAN] [char](6) NULL,
	[NTPP] [varchar](50) NULL,
	[TgBuku] [datetime] NULL,
	[VERFLAG] [char](1) NULL,
	[StsDjp] [char](1) NULL,
	[adviceReason] [varchar](3) NULL,
	[S90MsgID] [varchar](999) NULL,
	[responsecode] [char](2) NULL,
	[revflag] [char](1) NULL,
	[TglBuku] [datetime] NULL,
	[CurrCode] [varchar](3) NULL,
	[DtAuthdByMP3] [datetime] NULL,
	[TXNoBC] [varchar](50) NULL,
	[StsSBY] [int] NULL,
	[NewSts] [char](1) NULL,
	[JnsPenerimaan] [varchar](1) NULL,
	[JnsPenyetor] [varchar](3) NULL,
	[NPWPA] [char](15) NULL,
	[NPWPB] [char](15) NULL,
	[NPWPC] [char](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BU_tblPibHdr]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BU_tblPibHdr](
	[CAR] [nvarchar](26) NOT NULL,
	[KdKpbc] [nvarchar](6) NULL,
	[PibNo] [nvarchar](6) NULL,
	[PibTg] [smalldatetime] NULL,
	[JnPib] [nvarchar](1) NULL,
	[JnImp] [nvarchar](1) NULL,
	[JkWaktu] [smallint] NULL,
	[CrByr] [nvarchar](1) NULL,
	[DokTupKd] [nvarchar](1) NULL,
	[DokTupNo] [nvarchar](6) NULL,
	[DokTupTg] [smalldatetime] NULL,
	[PosNo] [nvarchar](4) NULL,
	[PosSub] [nvarchar](2) NULL,
	[ImpId] [nvarchar](1) NULL,
	[ImpNpwp] [nvarchar](15) NULL,
	[ImpNama] [nvarchar](50) NULL,
	[ImpAlmt] [nvarchar](70) NULL,
	[ImpStatus] [nvarchar](3) NULL,
	[ApiKd] [nvarchar](1) NULL,
	[ApiNo] [nvarchar](15) NULL,
	[PpjkId] [nvarchar](1) NULL,
	[PpjkNpwp] [nvarchar](15) NULL,
	[PpjkNama] [nvarchar](50) NULL,
	[PpjkAlmt] [nvarchar](70) NULL,
	[PpjkNo] [nvarchar](6) NULL,
	[PpjkTg] [smalldatetime] NULL,
	[IndId] [nvarchar](1) NULL,
	[IndNpwp] [nvarchar](15) NULL,
	[IndNama] [nvarchar](50) NULL,
	[IndAlmt] [nvarchar](70) NULL,
	[PasokNama] [nvarchar](50) NULL,
	[PasokAlmt] [nvarchar](70) NULL,
	[PasokNeg] [nvarchar](2) NULL,
	[PelBkr] [nvarchar](5) NULL,
	[PelMuat] [nvarchar](5) NULL,
	[PelTransit] [nvarchar](5) NULL,
	[TmpTbn] [nvarchar](4) NULL,
	[Moda] [nvarchar](1) NULL,
	[AngkutNama] [nvarchar](17) NULL,
	[AngkutNo] [nvarchar](7) NULL,
	[AngkutFl] [nvarchar](2) NULL,
	[TgTiba] [smalldatetime] NULL,
	[KdVal] [nvarchar](3) NULL,
	[Ndpbm] [float] NULL,
	[NilInv] [float] NULL,
	[Freight] [float] NULL,
	[BTambahan] [float] NULL,
	[Diskon] [float] NULL,
	[KdAss] [nvarchar](1) NULL,
	[Asuransi] [float] NULL,
	[KdHrg] [nvarchar](1) NULL,
	[Fob] [float] NULL,
	[Cif] [float] NULL,
	[Bruto] [float] NULL,
	[Netto] [float] NULL,
	[JmCont] [smallint] NULL,
	[JmBrg] [smallint] NULL,
	[Status] [nvarchar](2) NULL,
	[Snrf] [nvarchar](10) NULL,
	[KdFas] [nvarchar](2) NULL,
	[Lengkap] [bit] NOT NULL,
	[IdPIB] [numeric](18, 0) NULL,
	[DTCREATED] [datetime] NULL,
	[EDINUM] [varchar](30) NULL,
	[NamaTTD] [varchar](50) NULL,
	[KotaTTD] [varchar](70) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Results]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Results](
	[car] [varchar](42) NULL,
	[KodeSetor] [char](5) NULL,
	[KodeBayar] [char](5) NULL,
	[KodeKPBC] [char](6) NULL,
	[NoPendaftaranPIB] [char](6) NULL,
	[TglPendaftaranPIB] [datetime] NULL,
	[NoSSPCP] [char](30) NULL,
	[NPWP] [char](15) NOT NULL,
	[Nama] [varchar](50) NULL,
	[Alamat] [varchar](50) NULL,
	[Kota] [varchar](50) NULL,
	[KodePos] [char](10) NULL,
	[Dokumen] [varchar](20) NULL,
	[NoDokumen] [varchar](50) NULL,
	[TglDokumen] [datetime] NULL,
	[TxNoBC] [char](12) NOT NULL,
	[Tgl] [datetime] NOT NULL,
	[Waktu] [datetime] NOT NULL,
	[hdBankCode] [char](4) NULL,
	[hdBranchNo] [char](4) NULL,
	[TrmlID] [varchar](16) NULL,
	[DeptCode] [char](2) NULL,
	[DtCreated] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[PrintFlag] [bit] NULL,
	[NoSPKBM] [varchar](18) NULL,
	[KPKN] [varchar](10) NULL,
	[TglSPKBM] [datetime] NULL,
	[Lokasi] [char](4) NULL,
	[MsPjk] [char](10) NULL,
	[ThPjk] [int] NULL,
	[status] [varchar](2) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[refLokasi]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[refLokasi](
	[KdLokasi] [char](4) NOT NULL,
	[Kota] [char](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[refFI]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[refFI](
	[fiNo] [char](12) NOT NULL,
	[fiName] [char](30) NULL,
	[fiAddress] [char](50) NULL,
	[fiHostName] [char](30) NULL,
	[fiPortNo] [int] NULL,
	[fiContact] [char](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LogTx]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LogTx](
	[txdate] [datetime] NULL,
	[STAN] [varchar](6) NULL,
	[strKirim] [nvarchar](500) NULL,
	[strTerima] [nvarchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kode_pembayaran]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kode_pembayaran](
	[ID] [int] NULL,
	[JENIS] [nvarchar](50) NULL,
	[KDGROUP] [nvarchar](50) NULL,
	[PDE] [nvarchar](1) NULL,
	[KDDOK] [int] NULL,
	[NAMADOK] [text] NULL,
	[IMPOR] [tinyint] NULL,
	[EKSPOR] [tinyint] NULL,
	[CUKAI] [tinyint] NULL,
	[TERTENTU] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KODE_GROUP]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KODE_GROUP](
	[ID] [int] NULL,
	[KDGROUP] [int] NULL,
	[NMGROUP] [text] NULL,
	[IMPOR] [tinyint] NULL,
	[EKSPOR] [tinyint] NULL,
	[CUKAI] [tinyint] NULL,
	[TERTENTU] [tinyint] NULL,
	[PDE] [nvarchar](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_rights]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_rights](
	[RuleͅID] [numeric](18, 0) NOT NULL,
	[group_name] [varchar](50) NOT NULL,
	[table_name] [varchar](50) NOT NULL,
	[can_insert] [bit] NULL,
	[can_delete] [bit] NULL,
	[can_update] [bit] NULL,
	[can_select] [char](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TJNSBYR]    Script Date: 03/23/2018 09:12:43 ******/
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
/****** Object:  Table [dbo].[test]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[tanggal] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblwajibpajak]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblwajibpajak](
	[npwp] [nvarchar](15) NULL,
	[pan] [nvarchar](16) NULL,
	[nama] [nvarchar](30) NULL,
	[alamat] [nvarchar](50) NULL,
	[kota] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblValuta]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblValuta](
	[KdEdi] [nvarchar](3) NULL,
	[KdISO] [nvarchar](3) NULL,
	[UrEdi] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUserwebPeb]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUserwebPeb](
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
	[idCabangApp] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUserweb]    Script Date: 03/23/2018 09:12:43 ******/
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
	[Privillege] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbluser]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbluser](
	[usrnme] [nvarchar](16) NULL,
	[fullnm] [nvarchar](50) NULL,
	[pass] [nvarchar](16) NULL,
	[lvlcd] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblunit]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblunit](
	[kddept] [nvarchar](255) NULL,
	[kdunit] [nvarchar](255) NULL,
	[nmunit] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTxSSPCPINC]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTxSSPCPINC](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IDSSPCP] [numeric](18, 0) NOT NULL,
	[KodeMAP] [char](6) NOT NULL,
	[KodeJnsByr] [char](3) NOT NULL,
	[kdEdi] [char](3) NULL,
	[TxAmt] [float] NOT NULL,
 CONSTRAINT [PK_tblTxSSPCPINC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTxSSPCP]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTxSSPCP](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IDSSPCP] [numeric](18, 0) NOT NULL,
	[KodeMAP] [char](6) NOT NULL,
	[KodeJnsByr] [char](3) NOT NULL,
	[TxAmt] [float] NOT NULL,
	[Tgl] [datetime] NOT NULL,
	[Waktu] [datetime] NOT NULL,
	[IDBYR] [numeric](18, 0) NULL,
 CONSTRAINT [PK_tblTxSSPCP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TbltxSSP_G2]    Script Date: 03/23/2018 09:12:43 ******/
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
	[UraianBayarPajak] [varchar](255) NULL,
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
	[CountSend] [char](1) NULL,
	[TimeNextSend] [char](14) NULL,
	[Uraian] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbltxssbp]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbltxssbp](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IDSSBP] [numeric](18, 0) NOT NULL,
	[NOSSBP] [varchar](30) NULL,
	[TGLSSBP] [datetime] NULL,
	[ACCTKN] [varchar](15) NULL,
	[KEMENTRIAN] [varchar](3) NULL,
	[UNIT] [varchar](3) NULL,
	[SATKER] [char](6) NULL,
	[FUNGSI] [char](2) NULL,
	[SUBFUNGSI] [char](2) NULL,
	[PROGRAM] [char](4) NULL,
	[KEGIATAN] [char](4) NULL,
	[SUBKEGIATAN] [char](4) NULL,
	[LOKASI] [char](4) NULL,
	[SPN] [varchar](30) NULL,
	[TGLSPN] [datetime] NULL,
	[KPPN] [varchar](3) NULL,
	[KEPERLUAN] [varchar](50) NULL,
	[TT] [varchar](2) NULL,
	[TA] [varchar](2) NULL,
	[JENIS] [varchar](10) NULL,
	[NOURUT] [varchar](10) NULL,
 CONSTRAINT [PK_tbltxssbp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblttd]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblttd](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](50) NULL,
	[tgl_awal] [datetime] NULL,
	[tgl_akhir] [datetime] NULL,
	[kode] [varchar](50) NULL,
	[payment] [varchar](50) NULL,
 CONSTRAINT [PK_tblttd] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTrml]    Script Date: 03/23/2018 09:12:43 ******/
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
/****** Object:  Table [dbo].[tbltrans]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbltrans](
	[pibno] [nvarchar](14) NULL,
	[mapcd] [nvarchar](4) NULL,
	[setorcd] [nvarchar](3) NULL,
	[msgtyp] [nvarchar](4) NULL,
	[npwp] [nvarchar](15) NULL,
	[nth] [nvarchar](6) NULL,
	[masapjk] [nvarchar](8) NULL,
	[ntt] [nvarchar](12) NULL,
	[bankcd] [nvarchar](4) NULL,
	[brchcd] [nvarchar](3) NULL,
	[termcd] [nvarchar](16) NULL,
	[advcd] [nvarchar](3) NULL,
	[prosescd] [nvarchar](6) NULL,
	[nsk] [nvarchar](15) NULL,
	[tglbayar] [nvarchar](8) NULL,
	[tgltransmit] [nvarchar](10) NULL,
	[ccycd] [nvarchar](3) NULL,
	[transamt] [money] NULL,
	[jenply] [nvarchar](4) NULL,
	[flgrev] [nvarchar](1) NULL,
	[flgctk] [nvarchar](1) NULL,
	[ntpp] [nvarchar](16) NULL,
	[lupddt] [datetime] NULL,
	[lupdtime] [nvarchar](10) NULL,
	[usrnme] [nvarchar](8) NULL,
	[flgkrm] [nchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbltranrev]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbltranrev](
	[pibno] [nvarchar](14) NULL,
	[mapcd] [nvarchar](4) NULL,
	[setorcd] [nvarchar](3) NULL,
	[msgtyp] [nvarchar](4) NULL,
	[npwp] [nvarchar](15) NULL,
	[nth] [nvarchar](6) NULL,
	[masapjk] [nvarchar](8) NULL,
	[ntt] [nvarchar](12) NULL,
	[bankcd] [nvarchar](4) NULL,
	[brchcd] [nvarchar](3) NULL,
	[termcd] [nvarchar](16) NULL,
	[advcd] [nvarchar](3) NULL,
	[prosescd] [nvarchar](6) NULL,
	[nsk] [nvarchar](15) NULL,
	[tglbayar] [nvarchar](8) NULL,
	[tgltransmit] [nvarchar](10) NULL,
	[ccycd] [nvarchar](3) NULL,
	[transamt] [money] NULL,
	[jenply] [nvarchar](4) NULL,
	[flgrev] [nvarchar](1) NULL,
	[ntpp] [nvarchar](16) NULL,
	[lupddt] [datetime] NULL,
	[lupdtime] [nvarchar](10) NULL,
	[usrnme] [nvarchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbltranhist]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbltranhist](
	[pibno] [nvarchar](14) NULL,
	[mapcd] [nvarchar](4) NULL,
	[setorcd] [nvarchar](3) NULL,
	[msgtyp] [nvarchar](4) NULL,
	[npwp] [nvarchar](15) NULL,
	[nth] [nvarchar](6) NULL,
	[masapjk] [nvarchar](8) NULL,
	[ntt] [nvarchar](12) NULL,
	[bankcd] [nvarchar](4) NULL,
	[brchcd] [nvarchar](3) NULL,
	[termcd] [nvarchar](16) NULL,
	[advcd] [nvarchar](3) NULL,
	[prosescd] [nvarchar](6) NULL,
	[nsk] [nvarchar](15) NULL,
	[tglbayar] [nvarchar](8) NULL,
	[tgltransmit] [nvarchar](10) NULL,
	[ccycd] [nvarchar](3) NULL,
	[transamt] [money] NULL,
	[jenply] [nvarchar](4) NULL,
	[flgrev] [nvarchar](1) NULL,
	[ntpp] [nvarchar](16) NULL,
	[lupddt] [datetime] NULL,
	[lupdtime] [nvarchar](10) NULL,
	[usrnme] [nvarchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbltes]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbltes](
	[tes] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbltemp]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbltemp](
	[pibno] [nvarchar](14) NULL,
	[mapcd] [nvarchar](4) NULL,
	[setorcd] [nvarchar](3) NULL,
	[msgtyp] [nvarchar](4) NULL,
	[npwp] [nvarchar](15) NULL,
	[nth] [nvarchar](6) NULL,
	[masapjk] [nvarchar](8) NULL,
	[ntt] [nvarchar](12) NULL,
	[bankcd] [nvarchar](4) NULL,
	[brchcd] [nvarchar](3) NULL,
	[termcd] [nvarchar](16) NULL,
	[advcd] [nvarchar](3) NULL,
	[prosescd] [nvarchar](6) NULL,
	[nsk] [nvarchar](15) NULL,
	[tglbayar] [nvarchar](8) NULL,
	[tgltransmit] [nvarchar](10) NULL,
	[ccycd] [nvarchar](3) NULL,
	[transamt] [money] NULL,
	[jenply] [nvarchar](4) NULL,
	[flgrev] [nvarchar](1) NULL,
	[flgctk] [nvarchar](1) NULL,
	[ntpp] [nvarchar](16) NULL,
	[lupddt] [datetime] NULL,
	[lupdtime] [nvarchar](10) NULL,
	[usrnme] [nvarchar](8) NULL,
	[flgkrm] [nchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLTARIF]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLTARIF](
	[NOHS] [varchar](12) NULL,
	[SERITRP] [numeric](28, 0) NULL,
	[KDTRPBM] [varchar](1) NULL,
	[TBM] [numeric](28, 0) NULL,
	[KDSATBM] [varchar](3) NULL,
	[KDTRPCUK] [varchar](1) NULL,
	[TCUK] [numeric](28, 0) NULL,
	[KDSATCUK] [varchar](3) NULL,
	[TPPN] [numeric](28, 0) NULL,
	[TPBM] [numeric](28, 0) NULL,
	[EDINUM] [varchar](13) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLTABEL]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLTABEL](
	[KDTAB] [varchar](2) NULL,
	[KDREC] [varchar](4) NULL,
	[URAIAN] [varchar](40) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblsubkegiatan]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblsubkegiatan](
	[kdsgiat] [nvarchar](255) NULL,
	[nmsgiat] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblsubfungsi]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblsubfungsi](
	[kdfungsi] [nvarchar](255) NULL,
	[kdsfung] [nvarchar](255) NULL,
	[nmsfung] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSTBS]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSTBS](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IDSTBS] [numeric](18, 0) NOT NULL,
	[noPEB] [char](26) NULL,
	[jnsKMDTS] [char](15) NULL,
	[posTrf] [float] NULL,
	[TPE] [float] NULL,
	[jmlMT] [numeric](18, 0) NULL,
	[nilaiEx] [float] NULL,
	[HPE] [float] NULL,
	[kurs] [float] NULL,
	[jmlSetoran] [float] NULL,
 CONSTRAINT [PK_tblSTBS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblStatus]    Script Date: 03/23/2018 09:12:43 ******/
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
/****** Object:  Table [dbo].[tblSSPCPWebSvc]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSSPCPWebSvc](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[EDIBANK] [varchar](35) NULL,
	[EDIUSER] [varchar](35) NULL,
	[CAR] [varchar](26) NULL,
	[TGL] [datetime] NULL,
	[KDKPBC] [varchar](6) NULL,
	[KDSETORAN] [varchar](6) NULL,
	[NAMAIMP] [varchar](50) NULL,
	[IDIMP] [varchar](2) NULL,
	[NPWPIMP] [varchar](15) NULL,
	[ALAMATIMP] [varchar](50) NULL,
	[KDBANK] [varchar](10) NULL,
	[NAMABANK] [varchar](50) NULL,
	[ALAMATBANK] [varchar](50) NULL,
	[KOD_JP1] [varchar](6) NULL,
	[JUM_JP1] [float] NULL,
	[KOD_JP2] [varchar](6) NULL,
	[JUM_JP2] [float] NULL,
	[KOD_JP3] [varchar](6) NULL,
	[JUM_JP3] [float] NULL,
	[KOD_JP4] [varchar](6) NULL,
	[JUM_JP4] [float] NULL,
	[KOD_JP5] [varchar](6) NULL,
	[JUM_JP5] [float] NULL,
	[KOD_JP6] [varchar](6) NULL,
	[JUM_JP6] [float] NULL,
	[KOD_JP7] [varchar](6) NULL,
	[JUM_JP7] [float] NULL,
	[KOD_JP8] [varchar](6) NULL,
	[JUM_JP8] [float] NULL,
	[KOD_JP9] [varchar](6) NULL,
	[JUM_JP9] [float] NULL,
	[KOD_JP10] [varchar](6) NULL,
	[JUM_JP10] [float] NULL,
	[KOD_JP11] [varchar](6) NULL,
	[JUM_JP11] [float] NULL,
	[NPWP1] [varchar](15) NULL,
	[NPWP2] [varchar](15) NULL,
	[NPWP3] [varchar](15) NULL,
	[NTPP1] [varchar](16) NULL,
	[NTPP2] [varchar](16) NULL,
	[NTPP3] [varchar](16) NULL,
	[NTB1] [varchar](16) NULL,
	[NTB2] [varchar](16) NULL,
	[NTB3] [varchar](16) NULL,
	[NOSSPCP] [varchar](16) NULL,
	[TGLSSPCP] [datetime] NULL,
	[MASAPAJAK] [varchar](4) NULL,
	[THNPAJAK] [varchar](4) NULL,
	[JENIS] [varchar](2) NULL,
	[NTPN] [varchar](30) NULL,
	[KODEPOS] [varchar](5) NULL,
	[NTB] [varchar](16) NULL,
	[KPP] [varchar](10) NULL,
	[PETUGASBANK] [varchar](30) NULL,
	[JABATANBANK] [varchar](50) NULL,
	[DEPBANK] [varchar](50) NULL,
	[FlagWebNon] [varchar](1) NULL,
	[FlagWebNTP] [varchar](1) NULL,
 CONSTRAINT [PK_tblSSPCPWebSvc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSSPCPINC]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSSPCPINC](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Car] [char](26) NULL,
	[KodeBayar] [varchar](4) NULL,
	[KodeKPBC] [char](6) NULL,
	[KodeID] [char](1) NULL,
	[NPWP] [char](16) NOT NULL,
	[Nama] [varchar](50) NULL,
	[Alamat] [varchar](255) NULL,
	[Kota] [varchar](50) NULL,
	[KodePos] [char](6) NULL,
	[TrmlID] [varchar](16) NULL,
	[DtCreated] [datetime] NULL,
	[Status] [char](2) NULL,
	[EDINum] [varchar](30) NULL,
	[SNRF] [char](14) NULL,
	[KodeSetor] [char](5) NULL,
	[NewSts] [char](1) NULL,
	[MsPjk] [char](10) NULL,
	[ThPjk] [char](4) NULL,
	[KPP] [char](10) NULL,
	[NPWPA] [char](15) NULL,
	[NPWPB] [char](15) NULL,
	[NPWPC] [char](15) NULL,
	[tglspkbm] [datetime] NULL,
	[nospkbm] [char](18) NULL,
	[tgldok] [datetime] NULL,
	[GroupID] [varchar](50) NULL,
	[BatchNo] [varchar](50) NULL,
	[source] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSeq]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSeq](
	[Seq] [int] NULL,
	[tglSeq] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSendEcho]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSendEcho](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[iso] [varchar](255) NOT NULL,
	[status] [char](1) NOT NULL,
 CONSTRAINT [PK_tblSendEcho] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblScheduler]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblScheduler](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[scriptpath] [varchar](128) NULL,
	[name] [varchar](128) NULL,
	[time_interval] [numeric](10, 0) NULL,
	[fire_times] [numeric](10, 0) NULL,
	[time_last_fired] [numeric](10, 0) NULL,
 CONSTRAINT [PK_tblScheduler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblsatuankerja_]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblsatuankerja_](
	[KodeSatker] [nvarchar](255) NULL,
	[NamaSatuanKerja] [nvarchar](255) NULL,
	[Dept] [nvarchar](255) NULL,
	[Unit] [nvarchar](255) NULL,
	[kppn] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblsatuankerja]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblsatuankerja](
	[KodeSatker] [nvarchar](255) NULL,
	[NamaSatuanKerja] [nvarchar](255) NULL,
	[Dept] [nvarchar](255) NULL,
	[Unit] [nvarchar](255) NULL,
	[kppn] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLSATUAN]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLSATUAN](
	[KDEDI] [varchar](3) NULL,
	[UREDI] [varchar](45) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblRuleDtl]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblRuleDtl](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[RuleID] [numeric](18, 0) NOT NULL,
	[GroupMenuID] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_TblRuleDtl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRTEsandi]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRTEsandi](
	[Sandi] [varchar](4) NOT NULL,
	[NamaSandi] [varchar](100) NOT NULL,
	[Keterangan] [text] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [char](1) NULL,
 CONSTRAINT [PK_tblRTEsandi] PRIMARY KEY CLUSTERED 
(
	[Sandi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblResponWebSvc]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblResponWebSvc](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[KDBANK] [varchar](4) NULL,
	[KDCABANG] [varchar](6) NULL,
	[CAR] [varchar](26) NULL,
	[IDTrader] [varchar](15) NULL,
	[NamaTrader] [varchar](50) NULL,
	[NamaDOK] [varchar](10) NULL,
	[EDINumTrader] [varchar](35) NULL,
	[WKProses] [datetime] NULL,
	[Hasil] [varchar](10) NULL,
	[Uraian] [varchar](200) NULL,
	[FlagWebRes] [varchar](1) NULL,
 CONSTRAINT [PK_TblResponWebSvc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblRespon_]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblRespon_](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IDSSPCP] [numeric](18, 0) NULL,
	[KodeRespon] [char](3) NULL,
	[UraianRespon] [varchar](2000) NULL,
	[TglRespon] [datetime] NULL,
 CONSTRAINT [PK_TblRespon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblRespon]    Script Date: 03/23/2018 09:12:43 ******/
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
 CONSTRAINT [PK_TblResponSSPCP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLREKON]    Script Date: 03/23/2018 09:12:43 ******/
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
/****** Object:  Table [dbo].[tblrekGL]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblrekGL](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[rekGL] [varchar](50) NULL,
 CONSTRAINT [PK_tblrekGL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblrek]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblrek](
	[kode_bank] [varchar](50) NULL,
	[norek_idr] [varchar](50) NULL,
	[norek_usd] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblprogram]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblprogram](
	[kdprogram] [nvarchar](255) NULL,
	[nmprogram] [nvarchar](255) NULL,
	[kdbidang] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPibTrf]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPibTrf](
	[CAR] [nvarchar](26) NOT NULL,
	[NoHs] [nvarchar](12) NULL,
	[SeriTrp] [smallint] NULL,
	[KdTrpBm] [nvarchar](3) NULL,
	[KdSatBm] [nvarchar](3) NULL,
	[TrpBm] [float] NULL,
	[KdCuk] [nvarchar](3) NULL,
	[KdTrpCuk] [nvarchar](3) NULL,
	[KdSatCuk] [nvarchar](3) NULL,
	[TrpCuk] [float] NULL,
	[TrpPpn] [float] NULL,
	[TrpPbm] [float] NULL,
	[ID] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPibRes]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPibRes](
	[CAR] [nvarchar](26) NULL,
	[RESKD] [nvarchar](3) NULL,
	[RESTG] [smalldatetime] NULL,
	[RESWK] [nvarchar](6) NULL,
	[DOKRESNO] [nvarchar](30) NULL,
	[DOKRESTG] [smalldatetime] NULL,
	[KPBC] [nvarchar](6) NULL,
	[PIBNO] [nvarchar](6) NULL,
	[PIBTG] [smalldatetime] NULL,
	[KDGUDANG] [nvarchar](4) NULL,
	[PEJABAT1] [nvarchar](20) NULL,
	[NIP1] [nvarchar](9) NULL,
	[JABATAN1] [nvarchar](50) NULL,
	[PEJABAT2] [nvarchar](20) NULL,
	[NIP2] [nvarchar](9) NULL,
	[JATUHTEMPO] [smalldatetime] NULL,
	[KOMTG] [smalldatetime] NULL,
	[KOMWK] [nvarchar](6) NULL,
	[DesKripsi] [ntext] NULL,
	[dibaca] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPibPgt]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPibPgt](
	[CAR] [nvarchar](26) NOT NULL,
	[KdBeban] [nvarchar](3) NULL,
	[KdFasil] [nvarchar](1) NULL,
	[NilBeban] [float] NULL,
	[ID] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPibNpt]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPibNpt](
	[Car] [nvarchar](26) NOT NULL,
	[ResKd] [nvarchar](3) NULL,
	[RESTG] [smalldatetime] NULL,
	[RESWK] [nvarchar](6) NULL,
	[BMBYR] [float] NULL,
	[CUKBYR] [float] NULL,
	[PPNBYR] [float] NULL,
	[PPNBMBYR] [float] NULL,
	[PPHBYR] [float] NULL,
	[DENDA] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPibKms]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPibKms](
	[CAR] [nvarchar](26) NOT NULL,
	[JnKemas] [nvarchar](2) NOT NULL,
	[JmKemas] [int] NOT NULL,
	[merkkemas] [nvarchar](30) NULL,
	[ID] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPibHdr]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPibHdr](
	[CAR] [nvarchar](26) NOT NULL,
	[KdKpbc] [nvarchar](6) NULL,
	[PibNo] [nvarchar](6) NULL,
	[PibTg] [smalldatetime] NULL,
	[JnPib] [nvarchar](1) NULL,
	[JnImp] [nvarchar](1) NULL,
	[JkWaktu] [smallint] NULL,
	[CrByr] [nvarchar](1) NULL,
	[DokTupKd] [nvarchar](1) NULL,
	[DokTupNo] [nvarchar](6) NULL,
	[DokTupTg] [smalldatetime] NULL,
	[PosNo] [nvarchar](4) NULL,
	[PosSub] [nvarchar](2) NULL,
	[ImpId] [nvarchar](1) NULL,
	[ImpNpwp] [nvarchar](15) NULL,
	[ImpNama] [nvarchar](50) NULL,
	[ImpAlmt] [nvarchar](70) NULL,
	[ImpStatus] [nvarchar](3) NULL,
	[ApiKd] [nvarchar](1) NULL,
	[ApiNo] [nvarchar](15) NULL,
	[PpjkId] [nvarchar](1) NULL,
	[PpjkNpwp] [nvarchar](15) NULL,
	[PpjkNama] [nvarchar](50) NULL,
	[PpjkAlmt] [nvarchar](70) NULL,
	[PpjkNo] [nvarchar](6) NULL,
	[PpjkTg] [smalldatetime] NULL,
	[IndId] [nvarchar](1) NULL,
	[IndNpwp] [nvarchar](15) NULL,
	[IndNama] [nvarchar](50) NULL,
	[IndAlmt] [nvarchar](70) NULL,
	[PasokNama] [nvarchar](50) NULL,
	[PasokAlmt] [nvarchar](70) NULL,
	[PasokNeg] [nvarchar](2) NULL,
	[PelBkr] [nvarchar](5) NULL,
	[PelMuat] [nvarchar](5) NULL,
	[PelTransit] [nvarchar](5) NULL,
	[TmpTbn] [nvarchar](4) NULL,
	[Moda] [nvarchar](1) NULL,
	[AngkutNama] [nvarchar](17) NULL,
	[AngkutNo] [nvarchar](7) NULL,
	[AngkutFl] [nvarchar](2) NULL,
	[TgTiba] [smalldatetime] NULL,
	[KdVal] [nvarchar](3) NULL,
	[Ndpbm] [float] NULL,
	[NilInv] [float] NULL,
	[Freight] [float] NULL,
	[BTambahan] [float] NULL,
	[Diskon] [float] NULL,
	[KdAss] [nvarchar](1) NULL,
	[Asuransi] [float] NULL,
	[KdHrg] [nvarchar](1) NULL,
	[Fob] [float] NULL,
	[Cif] [float] NULL,
	[Bruto] [float] NULL,
	[Netto] [float] NULL,
	[JmCont] [smallint] NULL,
	[JmBrg] [smallint] NULL,
	[Status] [nvarchar](2) NULL,
	[Snrf] [nvarchar](10) NULL,
	[KdFas] [nvarchar](2) NULL,
	[Lengkap] [bit] NOT NULL,
	[IdPIB] [numeric](18, 0) NULL,
	[DTCREATED] [datetime] NULL,
	[EDINUM] [varchar](30) NULL,
	[NamaTTD] [varchar](50) NULL,
	[KotaTTD] [varchar](70) NULL,
	[GroupID] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPibFas]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPibFas](
	[CAR] [varchar](26) NOT NULL,
	[Serial] [smallint] NOT NULL,
	[KdFasBM] [nvarchar](1) NULL,
	[FasBM] [float] NULL,
	[KdFasCuk] [nvarchar](1) NULL,
	[FasCuk] [float] NULL,
	[KdFasPpn] [nvarchar](1) NULL,
	[FasPpn] [float] NULL,
	[KdFasPph] [nvarchar](1) NULL,
	[FasPph] [float] NULL,
	[KdFasPbm] [nvarchar](1) NULL,
	[FasPbm] [float] NULL,
	[ID] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPibDtl]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPibDtl](
	[CAR] [nvarchar](26) NOT NULL,
	[Serial] [smallint] NOT NULL,
	[NoHs] [nvarchar](12) NULL,
	[SeriTrp] [smallint] NULL,
	[BrgUrai] [text] NULL,
	[Merk] [nvarchar](15) NULL,
	[Tipe] [nvarchar](15) NULL,
	[SpfLain] [nvarchar](15) NULL,
	[BrgAsal] [nvarchar](2) NULL,
	[DNilInv] [float] NULL,
	[DCif] [float] NULL,
	[KdSat] [nvarchar](3) NULL,
	[JmlSat] [float] NULL,
	[KemasJn] [nvarchar](2) NULL,
	[KemasJm] [int] NULL,
	[SatBmJm] [float] NULL,
	[SatCukJm] [float] NULL,
	[NettoDtl] [float] NULL,
	[KdFasDtl] [nvarchar](2) NULL,
	[DtlOk] [bit] NOT NULL,
	[ID] [numeric](18, 0) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPibDok]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPibDok](
	[CAR] [nvarchar](26) NOT NULL,
	[DokKd] [nvarchar](3) NOT NULL,
	[DokNo] [nvarchar](60) NULL,
	[DokTg] [smalldatetime] NOT NULL,
	[ID] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPibConR]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPibConR](
	[CAR] [nvarchar](26) NULL,
	[ResKd] [nvarchar](3) NULL,
	[CONTNO] [nvarchar](17) NULL,
	[CONTUKUR] [nvarchar](2) NULL,
	[CONTTIPE] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPibCon]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPibCon](
	[CAR] [nvarchar](26) NOT NULL,
	[ContNo] [nvarchar](17) NOT NULL,
	[ContUkur] [nvarchar](2) NOT NULL,
	[ContTipe] [nvarchar](1) NOT NULL,
	[ID] [numeric](10, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPetugas]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPetugas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nama] [varchar](50) NULL,
	[Jabatan] [varchar](50) NULL,
	[Departemen] [varchar](50) NULL,
 CONSTRAINT [PK_tblPetugas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLPELLN]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLPELLN](
	[KDEDI] [varchar](5) NOT NULL,
	[UREDI] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLPELDN]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLPELDN](
	[KDEDI] [varchar](5) NOT NULL,
	[UREDI] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPebQq]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPebQq](
	[CAR] [nvarchar](255) NULL,
	[IdQq] [nvarchar](255) NULL,
	[NpwpQq] [nvarchar](255) NULL,
	[NiperQq] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPebKms]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPebKms](
	[CAR] [nvarchar](255) NULL,
	[JnKemas] [nvarchar](255) NULL,
	[JmKemas] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPebHdr_Enc]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPebHdr_Enc](
	[CAR] [varbinary](255) NULL,
	[NPWPEKS] [varbinary](255) NULL,
	[NamaEks] [varbinary](255) NULL,
	[AlmtEks] [varbinary](255) NULL,
	[KDVAL] [varbinary](255) NULL,
	[FOB] [varbinary](255) NULL,
	[KDKTR] [varbinary](255) NULL,
	[NoPEB] [varbinary](255) NULL,
	[TglPEB] [datetime] NULL,
	[Identifikasi] [varbinary](255) NULL,
	[DHE] [varbinary](255) NULL,
	[Sandi] [varbinary](255) NULL,
	[Dok] [varbinary](255) NULL,
	[keterangan] [text] NULL,
	[bnkRef] [varbinary](255) NULL,
	[remark] [varbinary](255) NULL,
	[flag] [varchar](1) NULL,
	[src] [varchar](1) NULL,
	[upDok] [varchar](50) NULL,
	[DanaMasuk] [varbinary](255) NULL,
	[KeteranganBank] [text] NULL,
	[UserName] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPebHdr]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPebHdr](
	[CAR] [varchar](26) NULL,
	[NPWPEKS] [varchar](15) NULL,
	[NamaEks] [varchar](50) NULL,
	[AlmtEks] [varchar](70) NULL,
	[KDVAL] [varchar](3) NULL,
	[FOB] [float] NULL,
	[KDKTR] [varchar](6) NULL,
	[NoPEB] [varchar](8) NULL,
	[TglPEB] [datetime] NULL,
	[Identifikasi] [varchar](16) NULL,
	[DHE] [numeric](18, 2) NULL,
	[Sandi] [varchar](4) NULL,
	[Dok] [varchar](1) NULL,
	[keterangan] [text] NULL,
	[bnkRef] [varchar](50) NULL,
	[remark] [varchar](255) NULL,
	[flag] [varchar](1) NULL,
	[src] [varchar](1) NULL,
	[upDok] [varchar](50) NULL,
	[DanaMasuk] [numeric](18, 2) NULL,
	[KeteranganBank] [text] NULL,
	[UserName] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPebGabDtl]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPebGabDtl](
	[CAR] [nvarchar](255) NULL,
	[SeriEks] [float] NULL,
	[SeriBrgG] [float] NULL,
	[HsG] [nvarchar](255) NULL,
	[UrBrgG] [nvarchar](255) NULL,
	[DMerkG] [nvarchar](255) NULL,
	[SizeG] [nvarchar](255) NULL,
	[TypeG] [nvarchar](255) NULL,
	[KdBrgG] [nvarchar](255) NULL,
	[JnSatuanG] [nvarchar](255) NULL,
	[JmSatuanG] [float] NULL,
	[NetDetG] [float] NULL,
	[FOBPerSatG] [float] NULL,
	[FOBPerBrgG] [float] NULL,
	[ExSeriBrgG] [float] NULL,
	[JmKoliG] [float] NULL,
	[JnKoliG] [nvarchar](255) NULL,
	[DtlGOk] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPebGabDok]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPebGabDok](
	[CAR] [nvarchar](255) NULL,
	[SeriEks] [float] NULL,
	[SeriBrgG] [float] NULL,
	[KtrSstbG] [nvarchar](255) NULL,
	[KdDokG] [nvarchar](255) NULL,
	[NoDokG] [nvarchar](255) NULL,
	[TgDokG] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPebGab]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPebGab](
	[CAR] [nvarchar](255) NULL,
	[SeriEks] [float] NULL,
	[JnPEBG] [nvarchar](255) NULL,
	[JnEksG] [nvarchar](255) NULL,
	[IdeksG] [nvarchar](255) NULL,
	[NpwpEksG] [nvarchar](255) NULL,
	[NamaEksG] [nvarchar](255) NULL,
	[AlmtEksG] [nvarchar](255) NULL,
	[NiperG] [nvarchar](255) NULL,
	[KdValG] [nvarchar](255) NULL,
	[FOBG] [float] NULL,
	[JmBrgG] [float] NULL,
	[NoLpseG] [nvarchar](255) NULL,
	[TgLpseG] [datetime] NULL,
	[InstFasG] [nvarchar](255) NULL,
	[KdktrFasG] [nvarchar](255) NULL,
	[FasBCG] [nvarchar](255) NULL,
	[KpkerG] [nvarchar](255) NULL,
	[FasilitasG] [nvarchar](255) NULL,
	[KwbcG] [nvarchar](255) NULL,
	[GabOK] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPebDtl]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPebDtl](
	[CAR] [nvarchar](255) NULL,
	[SERIBRG] [float] NULL,
	[HS] [nvarchar](255) NULL,
	[URBRG1] [nvarchar](255) NULL,
	[URBRG2] [nvarchar](255) NULL,
	[URBRG3] [nvarchar](255) NULL,
	[URBRG4] [nvarchar](255) NULL,
	[DMERK] [nvarchar](255) NULL,
	[SIZE] [nvarchar](255) NULL,
	[TYPE] [nvarchar](255) NULL,
	[KDBRG] [nvarchar](255) NULL,
	[KDIZIN] [nvarchar](255) NULL,
	[NOIZIN] [nvarchar](255) NULL,
	[TGIZIN] [datetime] NULL,
	[JMKOLI] [float] NULL,
	[JNKOLI] [nvarchar](255) NULL,
	[DNilInv] [float] NULL,
	[FOBPERBRG] [float] NULL,
	[FOBPERSAT] [float] NULL,
	[KDPE] [nvarchar](255) NULL,
	[TARIPPE] [float] NULL,
	[HPATOK] [float] NULL,
	[JMSATUAN] [float] NULL,
	[JNSATUAN] [nvarchar](255) NULL,
	[NETDET] [float] NULL,
	[JMSATPE] [float] NULL,
	[JNSATPE] [nvarchar](255) NULL,
	[KDVALPE] [nvarchar](255) NULL,
	[NILVALPE] [float] NULL,
	[PEPERBRG] [float] NULL,
	[DTLOK] [bit] NOT NULL,
	[NCV] [bit] NOT NULL,
	[DVolume] [float] NULL,
	[NegAsal] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPebDok]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPebDok](
	[CAR] [nvarchar](255) NULL,
	[KdDok] [nvarchar](255) NULL,
	[NoDok] [nvarchar](255) NULL,
	[TgDok] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPebConR]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPebConR](
	[CAR] [nvarchar](255) NULL,
	[ResKd] [nvarchar](255) NULL,
	[CONTNO] [nvarchar](255) NULL,
	[CONTUKUR] [nvarchar](255) NULL,
	[CONTTIPE] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPebCon]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPebCon](
	[CAR] [nvarchar](255) NULL,
	[NoCont] [nvarchar](255) NULL,
	[Size] [nvarchar](255) NULL,
	[Type] [nvarchar](255) NULL,
	[NoSegel] [nvarchar](255) NULL,
	[Stuff] [nvarchar](255) NULL,
	[JnPartOf] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPebBerkala]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPebBerkala](
	[CAR] [varchar](26) NULL,
	[SeriBrg] [numeric](18, 0) NULL,
	[NoDaftInvK] [varchar](6) NULL,
	[TgDaftInvK] [datetime] NULL,
	[NoInvK] [varchar](30) NULL,
	[TgInvK] [datetime] NULL,
	[NamaBeliK] [varchar](50) NULL,
	[AlmtBeliK] [varchar](70) NULL,
	[NegBeliK] [char](2) NULL,
	[TgEksK] [datetime] NULL,
	[ModaK] [char](1) NULL,
	[CarrierK] [varchar](20) NULL,
	[VoyK] [varchar](7) NULL,
	[BenderaK] [char](2) NULL,
	[NegTujuK] [char](2) NULL,
	[BerkalaOk] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPartnerKPBC]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPartnerKPBC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kode] [char](6) NULL,
	[Nama] [varchar](50) NULL,
	[NoEDI] [varchar](20) NULL,
	[KPBC] [varchar](20) NULL,
 CONSTRAINT [PK_tblPartnerKPBC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblpaketdata]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblpaketdata](
	[pckdatcd] [nvarchar](4) NULL,
	[keterangan] [nvarchar](50) NULL,
	[inout] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNTB]    Script Date: 03/23/2018 09:12:43 ******/
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
/****** Object:  Table [dbo].[TblNotaNomer]    Script Date: 03/23/2018 09:12:43 ******/
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
/****** Object:  Table [dbo].[tblNotaKredit]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNotaKredit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NONK] [varchar](25) NULL,
	[TGLNK] [varchar](6) NULL,
	[TGLBUKU] [datetime] NULL,
	[CABANG] [varchar](6) NULL,
	[NoRek] [varchar](16) NULL,
 CONSTRAINT [PK_tblNotaKredit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNotaDebet]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNotaDebet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOND] [varchar](25) NULL,
	[TGLND] [varchar](6) NULL,
	[TGLBUKU] [datetime] NULL,
	[CABANG] [varchar](6) NULL,
 CONSTRAINT [PK_tblNotaDebet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblNomorReferensiNotaDebet]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblNomorReferensiNotaDebet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NoPelimpahan] [varchar](26) NULL,
	[TrmlID] [varchar](6) NULL,
	[TglPelimpahan] [datetime] NULL,
	[tgLBUKU1] [datetime] NULL,
	[tGLbUKU2] [datetime] NULL,
 CONSTRAINT [PK_TblNomorReferensiNotaDebet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNomor]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNomor](
	[STANSeq] [char](6) NULL,
	[SSBPSeq] [char](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblnmi]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblnmi](
	[nmicd] [nvarchar](3) NULL,
	[nmidesc] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLNEGARA]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLNEGARA](
	[KDEDI] [varchar](2) NULL,
	[UREDI] [varchar](40) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNasabah]    Script Date: 03/23/2018 09:12:43 ******/
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
/****** Object:  Table [dbo].[tblMenu]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMenu](
	[MenuID] [numeric](18, 0) NOT NULL,
	[MenuDesc] [varchar](50) NULL,
	[GrupMenu] [int] NULL,
	[LinkID] [char](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblmatauang]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblmatauang](
	[ccycd] [nvarchar](3) NULL,
	[keterangan] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMapSsbp]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMapSsbp](
	[KdMap] [nvarchar](255) NULL,
	[Kdjnsbyr] [nvarchar](255) NULL,
	[Nama] [nvarchar](255) NULL,
	[JnsSetor] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblmap]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblmap](
	[kodemap] [nvarchar](4) NULL,
	[keterangan] [nvarchar](35) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLLOG]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLLOG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTRANS] [int] NULL,
	[TGL] [datetime] NULL,
	[USERNAME] [varchar](25) NULL,
	[ACTIVITY] [text] NOT NULL,
	[STATUS] [char](1) NULL,
	[TIPE] [varchar](5) NULL,
	[GROUPID] [varchar](8) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLKURS]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLKURS](
	[KDKURS] [varchar](3) NULL,
	[TGAWAL] [datetime] NULL,
	[TGAKHIR] [datetime] NULL,
	[NILAI] [varchar](255) NULL,
	[KET] [varchar](30) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblkppn]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblkppn](
	[kdkppn] [nvarchar](255) NULL,
	[tipekppn] [nvarchar](255) NULL,
	[kdkanwil] [nvarchar](255) NULL,
	[nmkppn] [nvarchar](255) NULL,
	[almkppn] [nvarchar](255) NULL,
	[telkppn] [nvarchar](255) NULL,
	[kotakppn] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[kodepos] [nvarchar](255) NULL,
	[faxkppn] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKppbb]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKppbb](
	[kdKppbb] [char](4) NULL,
	[nmKppbb] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblKPP]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKPP](
	[KODE_KPP] [char](5) NOT NULL,
	[Deskripsi] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLKPBC]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLKPBC](
	[KDKPBC] [varchar](6) NULL,
	[URKDKPBC] [varchar](48) NULL,
	[KOTA] [varchar](20) NULL,
	[EDINUM] [varchar](35) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLKONVERSI]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLKONVERSI](
	[KDMAP6] [char](6) NULL,
	[KDMAP4] [char](4) NULL,
	[NMMAK] [varchar](1000) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblkodersp]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblkodersp](
	[rspcd] [nvarchar](2) NULL,
	[keterangan] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblkodeproses]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblkodeproses](
	[prosescd] [nvarchar](6) NULL,
	[keterangan] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblkodejenset]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblkodejenset](
	[kodemap] [nvarchar](4) NULL,
	[kdjenset] [nvarchar](3) NULL,
	[keterangan] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblkodeadvrsp]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblkodeadvrsp](
	[advcd] [nvarchar](3) NULL,
	[keterangan] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLKEMASAN]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLKEMASAN](
	[KDEDI] [varchar](2) NULL,
	[UREDI] [varchar](45) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblkegiatan]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblkegiatan](
	[kdgiat] [nvarchar](255) NULL,
	[nmgiat] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLKAPAL]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLKAPAL](
	[ANGKUTNAMA] [varchar](17) NULL,
	[ANGKUTFL] [varchar](2) NULL,
	[EDINUM] [varchar](13) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblJPH]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblJPH](
	[KdJph] [varchar](2) NULL,
	[NmJph] [varchar](70) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblJnsByrNew]    Script Date: 03/23/2018 09:12:43 ******/
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
/****** Object:  Table [dbo].[TblJnsByr]    Script Date: 03/23/2018 09:12:43 ******/
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
/****** Object:  Table [dbo].[tbljenply]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbljenply](
	[jenplycd] [nvarchar](4) NULL,
	[keterangan] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblISORef]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblISORef](
	[KDTAB] [char](3) NULL,
	[KDREC] [char](3) NULL,
	[Uraian] [char](50) NULL,
	[Tindakan] [char](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLINSTALASI]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLINSTALASI](
	[KODE] [varchar](10) NOT NULL,
	[PEMILIK] [varchar](50) NULL,
	[ALAMAT] [varchar](70) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblImportirValid]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblImportirValid](
	[NPWP] [varchar](50) NULL,
	[Nama] [varchar](400) NULL,
	[Alamat] [varchar](400) NULL,
	[Kota] [varchar](50) NULL,
	[KodePos] [varchar](50) NULL,
	[kdjnsbyr] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblImportir]    Script Date: 03/23/2018 09:12:43 ******/
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
	[NoAcc] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblHariLibur]    Script Date: 03/23/2018 09:12:43 ******/
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
/****** Object:  Table [dbo].[TBLHANGGAR]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLHANGGAR](
	[KPBCHGR] [varchar](16) NULL,
	[URAIAN] [varchar](140) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLGUDANG]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLGUDANG](
	[KDKPBC] [varchar](6) NULL,
	[KDGDG] [varchar](4) NULL,
	[URAIAN] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblGrupMenu]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblGrupMenu](
	[GrupID] [int] NULL,
	[GrupDesc] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGroupuserPeb]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGroupuserPeb](
	[Id_group] [char](2) NOT NULL,
	[Name_group] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGroupuser]    Script Date: 03/23/2018 09:12:43 ******/
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
/****** Object:  Table [dbo].[tblfungsi]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblfungsi](
	[kdfungsi] [nvarchar](255) NULL,
	[nmfungsi] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEksportir]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEksportir](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NPWPEKS] [varchar](100) NULL,
	[NAMAEKS] [varchar](200) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbldepartemen]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbldepartemen](
	[kddept] [nvarchar](255) NULL,
	[nmdept] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLDATA]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLDATA](
	[KDPRSH] [varchar](1) NULL,
	[IDUSER] [varchar](1) NULL,
	[NPWPUSER] [varchar](15) NULL,
	[NAMAUSER] [varchar](50) NULL,
	[ALMTUSER] [varchar](70) NULL,
	[NOREG] [varchar](6) NULL,
	[KPBCUSER] [varchar](6) NULL,
	[AKTIVASI] [varchar](14) NULL,
	[SRP] [varchar](20) NULL,
	[EDINUM] [varchar](13) NULL,
	[NAMATTD] [varchar](50) NULL,
	[KOTATTD] [varchar](50) NULL,
	[ALMTOPR] [varchar](70) NULL,
	[PHONE] [varchar](50) NULL,
	[FAX] [varchar](50) NULL,
	[ZIPCODE] [varchar](5) NULL,
	[TGLIJINPPJK] [datetime] NULL,
	[NOIJINPPJK] [varchar](30) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblConfig]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConfig](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[MapRule] [int] NULL,
	[CoT] [time](7) NULL,
 CONSTRAINT [PK_tblConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCabangApp]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCabangApp](
	[idCabangApp] [int] IDENTITY(1,1) NOT NULL,
	[kdBank] [varchar](4) NULL,
	[kdCabBank] [varchar](6) NULL,
	[cabNama] [varchar](50) NULL,
	[cabAlamat] [varchar](100) NULL,
	[cabKota] [varchar](50) NULL,
	[cabPic] [varchar](50) NULL,
	[cabEmail] [varchar](50) NULL,
	[cabPhone] [varchar](50) NULL,
	[cabFax] [varchar](50) NULL,
	[cabSelisihWaktu] [varchar](50) NULL,
	[kdKPPN] [varchar](50) NULL,
	[rekDEVISA] [varchar](50) NULL,
	[rekPBB] [varchar](50) NULL,
	[rekBPHTB] [varchar](50) NULL,
	[rekPERSEPSI] [varchar](50) NULL,
	[cabNPWP] [varchar](15) NULL,
	[trmlid] [varchar](50) NULL,
 CONSTRAINT [PK_tblCabangApp] PRIMARY KEY CLUSTERED 
(
	[idCabangApp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblcabang]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblcabang](
	[brchcd] [nvarchar](3) NULL,
	[nmbrch] [nvarchar](50) NULL,
	[nourut] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLBNKPIB]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLBNKPIB](
	[CAR] [varchar](26) NULL,
	[SNRF] [varchar](14) NULL,
	[STATUS] [varchar](3) NULL,
	[EDINUM] [varchar](13) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblbitmap]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblbitmap](
	[pckdatcd] [nvarchar](4) NULL,
	[pribitmap] [nvarchar](64) NULL,
	[scbitmap] [nvarchar](64) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblBillingSettlement]    Script Date: 03/23/2018 09:12:43 ******/
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
	[eXpiredDate] [datetime] NULL,
 CONSTRAINT [PK_TblBillingSettlement] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLBILLINGMPN]    Script Date: 03/23/2018 09:12:43 ******/
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
	[LOCALDATETIME] [varchar](50) NULL,
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
	[STSDATA] [varchar](50) NULL,
	[idCore] [varchar](16) NULL,
	[stsCore] [char](2) NULL,
	[rcCore] [varchar](3) NULL,
	[dtCore] [datetime] NULL,
	[errCore] [varchar](50) NULL,
	[InterfaceRefNum] [varchar](20) NULL,
 CONSTRAINT [PK_TBLBILLINGMPN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBLBARANG]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBLBARANG](
	[NOHS] [varchar](10) NULL,
	[SERITRP] [varchar](10) NULL,
	[BRGSERI] [varchar](10) NULL,
	[BRGURAI] [varchar](95) NULL,
	[MERK] [varchar](15) NULL,
	[TIPE] [varchar](15) NULL,
	[SPFLAIN] [varchar](15) NULL,
	[EDINUM] [varchar](13) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAuditTrailPeb]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAuditTrailPeb](
	[Iduser] [char](20) NULL,
	[nama] [varchar](50) NULL,
	[Pagevisit] [char](50) NULL,
	[Waktu] [datetime] NULL,
	[Aktivitas] [varchar](200) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAuditTrail]    Script Date: 03/23/2018 09:12:43 ******/
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
/****** Object:  Table [dbo].[tblAdviceReason]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAdviceReason](
	[AdviceCode] [varchar](50) NULL,
	[DetailCode] [varchar](50) NULL,
	[Message] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_SIMULATOR_MPN]    Script Date: 03/23/2018 09:12:43 ******/
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
/****** Object:  View [dbo].[SYS_GetUTCDateTime]    Script Date: 03/23/2018 09:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SYS_GetUTCDateTime]
AS

select getdate() as UTCDateTime
GO
/****** Object:  Table [dbo].[spfmenu]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spfmenu](
	[kdmenu] [nvarchar](6) NULL,
	[nmmenu] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spfaccess]    Script Date: 03/23/2018 09:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spfaccess](
	[lvlcd] [nvarchar](1) NULL,
	[kdmenu] [nvarchar](6) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_SeqRqUID]    Script Date: 03/23/2018 09:12:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SeqRqUID] 

AS
BEGIN
	DECLARE @curSeq varchar(7), @chSeq varchar(7), @result varchar(7)
	
	SET @chSeq = (select Seq from tblSeq)
	IF @chSeq IS NULL
		BEGIN
			INSERT INTO tblSeq(Seq,tglSeq) VALUES(1, GETDATE())
		END

	SET @curSeq = (SELECT Seq FROM tblSeq where CONVERT(varchar(10),tglSeq,105) = CONVERT(varchar(10),GETDATE(),105))
	IF @curSeq IS NULL
		BEGIN
			SET @curSeq = 1
			UPDATE tblSeq SET Seq=2, tglSeq=GETDATE()
		END
	ELSE
		BEGIN
			UPDATE tblSeq SET Seq=@curSeq+1
		END

	SET @result = (SELECT RIGHT('000000' + @curSeq, 7))
	SELECT @result AS Seq
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GETSETTLEMENTDATE]    Script Date: 03/23/2018 09:12:39 ******/
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
				--ELSE
				--BEGIN
				--	SET @tempSETTLEMENTDATE = @TGLBUKU;
				--END
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
				IF @TIMENOW < @COT --jika sekarang kurang dari COT
				BEGIN
					SET @tempSETTLEMENTDATE = @TGLBUKU;
				END
				ELSE
				BEGIN
					SET @STL1 = DATEADD(day, 1, @TGLBUKU);
					IF DATEPART(year,@DTTIME) = DATEPART(year,@STL1) --same years
					BEGIN
						SET @tempSETTLEMENTDATE = DATEADD(day, 1, @TGLBUKU);
					END
				END
			END
		END

		SET @TGLBKDB = (SELECT tglBuku FROM tblHariLibur WHERE CONVERT(datetime,tglLIBUR,105)=@tempSETTLEMENTDATE);
		IF @TGLBKDB IS NOT NULL
		BEGIN
			SET @tempSETTLEMENTDATE = @TGLBKDB;
		END

		--IF DATEPART(year,@DTTIME) <> DATEPART(year,@tempSETTLEMENTDATE) --jika sudah ganti tahun
		--BEGIN
		--	SET @tempSETTLEMENTDATE=@TGLBUKU;
		--END
		SET @SETTLEMENTDATE=@tempSETTLEMENTDATE;

		SELECT @SETTLEMENTDATE; --@SETTLEMENTDATE
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_GenSTAN]    Script Date: 03/23/2018 09:12:39 ******/
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
					UPDATE tblNomor SET STANSeq = @result
				END
		END
	ELSE
		BEGIN
			SET @temp = @temp + 1
			SET @result = 1000000 + @temp
			SET @result = RIGHT(@result, 6)
			UPDATE tblNomor SET STANSeq = @result
		END
	SELECT @result as STANSeq
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_GenNTB]    Script Date: 03/23/2018 09:12:39 ******/
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
/****** Object:  View [dbo].[vwBilling]    Script Date: 03/23/2018 09:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  View dbo.vwBilling    Script Date: 4/29/2008 9:29:13 AM ******/
CREATE VIEW [dbo].[vwBilling]
AS
SELECT     dbo.tblSSPCPINC.Car, dbo.tblSSPCPINC.KodeBayar, dbo.tblSSPCPINC.KodeKPBC, dbo.tblSSPCPINC.KodeID, dbo.tblSSPCPINC.NPWP, 
                      dbo.tblSSPCPINC.Nama, dbo.tblSSPCPINC.Alamat, dbo.tblSSPCP.Status, dbo.tblSSPCP.SNRF, dbo.tblSSPCP.Tgl, dbo.tblSSPCP.NTPP, 
                      dbo.tblSSPCP.EDINum, dbo.tblSSPCP.Total
FROM         dbo.tblSSPCPINC INNER JOIN
                      dbo.tblSSPCP ON dbo.tblSSPCPINC.Car = dbo.tblSSPCP.Car
WHERE     (dbo.tblSSPCPINC.EDINum <> '')
GO
/****** Object:  Table [dbo].[TbltxSSP]    Script Date: 03/23/2018 09:12:43 ******/
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
	[KdMAP] [char](8) NULL,
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
	[VerFlag] [bit] NULL,
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
	[NoRekCus] [varchar](50) NULL,
	[Remark] [varchar](30) NULL,
	[GroupID] [varchar](10) NULL,
	[BatchNo] [varchar](12) NULL,
	[IDFE] [int] NULL,
 CONSTRAINT [PK_TbltxSSP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[getTGBK]    Script Date: 03/23/2018 09:12:44 ******/
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
/****** Object:  StoredProcedure [dbo].[genNewNTB]    Script Date: 03/23/2018 09:12:39 ******/
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
/****** Object:  UserDefinedFunction [dbo].[fniGetUTCDateTime]    Script Date: 03/23/2018 09:12:44 ******/
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
/****** Object:  UserDefinedFunction [dbo].[fnGenNTB]    Script Date: 03/23/2018 09:12:44 ******/
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
	SELECT @NB = (SELECT ISNULL(MAX(RIGHT(RTRIM(NTB),6)),0) + 1 as OUTNTB FROM TbltxSSP WHERE DATEDIFF(dy,0,convert(datetime,DtCreated,105)) = DATEDIFF(dy,0,convert(datetime,dbo.fniGetUTCDateTime(),105)))
	SELECT @NBV = (SELECT RIGHT('0000000' + @NB, 7))
	SELECT @OUTNTB = (@gtgBK + @doy + @NBV)
        RETURN @OUTNTB
END
GO
/****** Object:  UserDefinedFunction [dbo].[fnGenNOSSPCP]    Script Date: 03/23/2018 09:12:44 ******/
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
/****** Object:  UserDefinedFunction [dbo].[fnGenNOREF]    Script Date: 03/23/2018 09:12:44 ******/
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
	SELECT @NB = (SELECT ISNULL(MAX(RIGHT(RTRIM(BankRefNumber),6)),0) + 1 as OUTREF FROM TbltxSSP WHERE RIGHT(LEFT(CONVERT(varchar, tglbyr, 105), 10), 7) = RIGHT(LEFT(CONVERT(varchar, dbo.fniGetUTCDateTime(), 105), 10), 7))
	SELECT @NBV = (SELECT RIGHT('0000000' + @NB, 6))
	SELECT @OUTREF = (@CBG + @tgl + @NBV)
        RETURN @OUTREF
END
GO
/****** Object:  View [dbo].[viewRekaputilasi]    Script Date: 03/23/2018 09:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  View dbo.viewRekaputilasi    Script Date: 4/29/2008 9:29:13 AM ******/
CREATE VIEW [dbo].[viewRekaputilasi]
AS
SELECT     KPKN, hdBankCode, hdBranchNo, SUM(TxAmt) AS Total, COUNT(*) AS VARDETIL, TglBuku, TglBuku AS TglPenerimaan1, 
                      TglBuku AS TglPenerimaan2, KdMAP, NoRek, TrmlID, adviceReason
FROM         dbo.TbltxSSP
WHERE     (TglBuku IS NOT NULL) AND ((len(ntpp)>0)  and (NTPP <> '0000000000000000')) AND (RevFlag <> 1 OR
                      RevFlag IS NULL) AND (ResponseCode = '00') AND (MsgType NOT IN ('0220', '0230', '0400')) AND (adviceReason IS NULL or adviceReason = '')
GROUP BY hdBranchNo, KPKN, TglBuku, hdBankCode, KdMAP, NoRek, TrmlID, adviceReason
GO
/****** Object:  View [dbo].[viewNotaKreditKPKN_]    Script Date: 03/23/2018 09:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viewNotaKreditKPKN_]
AS
SELECT     dbo.TbltxSSP.NTPP, dbo.TbltxSSP.hdBankCode, dbo.TbltxSSP.hdBranchNo, dbo.TbltxSSP.KPKN, dbo.TbltxSSP.TglByr, dbo.TbltxSSP.JamByr, 
                      dbo.TbltxSSP.TglBuku, dbo.TbltxSSP.NamaWP, dbo.TbltxSSP.AlamtWP, dbo.TbltxSSP.KotaWP, dbo.TbltxSSP.KdMAP, dbo.TbltxSSP.TxAmt, 
                      dbo.TbltxSSP.KdJnsByr, dbo.TbltxSSP.MsPjk, dbo.TbltxSSP.ThPjk, dbo.tblSSPCP.NoDokumen, dbo.tblSSPCP.TglDokumen, dbo.tblSSPCP.KodeKPBC, 
                      dbo.TbltxSSP.TxNo, dbo.TbltxSSP.STAN, dbo.TbltxSSP.NPWP, dbo.TbltxSSP.NoSK, dbo.TbltxSSP.TrmlID
FROM         dbo.TbltxSSP LEFT OUTER JOIN
                      dbo.tblSSPCP ON dbo.TbltxSSP.IDSSPCP = dbo.tblSSPCP.ID
WHERE     (dbo.TbltxSSP.TglBuku IS NOT NULL) AND (dbo.TbltxSSP.NTPP <> '') AND (dbo.TbltxSSP.RevFlag <> 1 OR
                      dbo.TbltxSSP.RevFlag IS NULL) AND (dbo.TbltxSSP.TglBuku IS NOT NULL) AND (dbo.TbltxSSP.ResponseCode = '00')
GO
/****** Object:  View [dbo].[viewNotaKreditKPKN]    Script Date: 03/23/2018 09:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viewNotaKreditKPKN]
AS
SELECT     dbo.TbltxSSP.NTPP, dbo.TbltxSSP.hdBankCode, dbo.TbltxSSP.hdBranchNo, dbo.TbltxSSP.KPKN, dbo.TbltxSSP.TglByr, dbo.TbltxSSP.JamByr, 
                      dbo.TbltxSSP.TglBuku, dbo.TbltxSSP.NamaWP, dbo.TbltxSSP.AlamtWP, dbo.TbltxSSP.KotaWP, dbo.TbltxSSP.KdMAP, dbo.TbltxSSP.TxAmt, 
                      dbo.TbltxSSP.KdJnsByr, dbo.TbltxSSP.MsPjk, dbo.TbltxSSP.ThPjk, dbo.tblSSPCP.NoDokumen, dbo.tblSSPCP.TglDokumen, dbo.tblSSPCP.KodeKPBC, 
                      dbo.TbltxSSP.TxNo, dbo.TbltxSSP.STAN, dbo.TbltxSSP.NPWP, dbo.TbltxSSP.NoSK, dbo.TbltxSSP.TrmlID
FROM         dbo.TbltxSSP LEFT OUTER JOIN
                      dbo.tblSSPCP ON dbo.TbltxSSP.IDSSPCP = dbo.tblSSPCP.ID
WHERE     (dbo.TbltxSSP.TglBuku IS NOT NULL) AND ((len(dbo.TbltxSSP.NTPP) <> 0) and (dbo.TbltxSSP.NTPP <> '0000000000000000')) AND (dbo.TbltxSSP.RevFlag <> 1 OR
                      dbo.TbltxSSP.RevFlag IS NULL)  AND (dbo.TbltxSSP.ResponseCode = '00')
GO
/****** Object:  View [dbo].[viewNotaKredit]    Script Date: 03/23/2018 09:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  View dbo.viewNotaKredit    Script Date: 4/29/2008 9:29:13 AM ******/
CREATE VIEW [dbo].[viewNotaKredit]
AS
SELECT     KPKN, hdBankCode, hdBranchNo, SUM(TxAmt) AS Total, COUNT(*) AS VARDETIL, TglBuku, TglBuku AS TglPenerimaan1, 
                      TglBuku AS TglPenerimaan2, NoRek
FROM         dbo.TbltxSSP
WHERE     (TglBuku IS NOT NULL) AND ((len(ntpp)>0)  and (NTPP <> '0000000000000000')) AND (ResponseCode = '00') AND (MsgType NOT IN ('0220', '0230', '0400')) and (adviceReason is null or adviceReason = '')
GROUP BY hdBranchNo, KPKN, TglBuku, hdBankCode, NoRek
GO
/****** Object:  View [dbo].[viewNotaDebet]    Script Date: 03/23/2018 09:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  View dbo.viewNotaDebet    Script Date: 4/29/2008 9:29:13 AM ******/
CREATE VIEW [dbo].[viewNotaDebet]
AS
SELECT     SUM(dbo.TbltxSSP.TxAmt) AS TOTAL, dbo.TbltxSSP.TglBuku, dbo.tblNotaKredit.NONK, dbo.tblNotaKredit.TGLNK, dbo.TbltxSSP.KPKN, 
                      dbo.TbltxSSP.hdBankCode, dbo.tblNotaKredit.CABANG, dbo.tblNotaKredit.NoRek, dbo.TbltxSSP.hdBranchNo, dbo.TbltxSSP.TrmlID
FROM         dbo.TbltxSSP INNER JOIN
                      dbo.tblNotaKredit ON dbo.TbltxSSP.TglBuku = dbo.tblNotaKredit.TGLBUKU AND dbo.TbltxSSP.hdBranchNo = dbo.tblNotaKredit.CABANG AND 
                      dbo.TbltxSSP.NoRek = dbo.tblNotaKredit.NoRek
WHERE     (dbo.TbltxSSP.TglBuku IS NOT NULL) AND ((len(ntpp)>0)  and (NTPP <> '0000000000000000')) AND (dbo.TbltxSSP.MsgType NOT IN ('0220', '0230')) AND 
                      (dbo.TbltxSSP.ResponseCode = '00')
GROUP BY dbo.TbltxSSP.TglBuku, dbo.tblNotaKredit.NONK, dbo.tblNotaKredit.TGLNK, dbo.tblNotaKredit.NoRek, dbo.tblNotaKredit.CABANG, dbo.TbltxSSP.KPKN, 
                      dbo.TbltxSSP.hdBankCode, dbo.TbltxSSP.hdBranchNo, dbo.tblNotaKredit.CABANG, dbo.TbltxSSP.hdBranchNo, dbo.tblNotaKredit.CABANG, 
                      dbo.tblNotaKredit.NoRek, dbo.TbltxSSP.hdBranchNo, dbo.TbltxSSP.NoRek, dbo.TbltxSSP.TrmlID
GO
/****** Object:  View [dbo].[viewNKR]    Script Date: 03/23/2018 09:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  View dbo.viewNKR    Script Date: 4/29/2008 9:29:13 AM ******/
CREATE VIEW [dbo].[viewNKR]
AS
SELECT     KdMAP, SUM(TxAmt) AS TOTALMAP, COUNT(KdMAP) AS JMLMAP, TglBuku, hdBranchNo, NoRek
FROM         dbo.TbltxSSP
WHERE     (TglBuku IS NOT NULL) AND ((len(ntpp)>0)  and (NTPP <> '0000000000000000')) AND (RevFlag <> 1 OR
                      RevFlag IS NULL) AND (ResponseCode = '00') AND (MsgType NOT IN ('0220', '0230', '0400'))
GROUP BY KdMAP, TglBuku, hdBranchNo, NoRek
GO
/****** Object:  View [dbo].[ViewHeaderNotaKredit]    Script Date: 03/23/2018 09:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  View dbo.ViewHeaderNotaKredit    Script Date: 4/29/2008 9:29:13 AM ******/
CREATE VIEW [dbo].[ViewHeaderNotaKredit]
AS
SELECT     hdBranchNo, TglByr, SUM(TxAmt) AS Total, COUNT(*) AS VARDETIL, KPKN, TglBuku
FROM         dbo.TbltxSSP
WHERE     (TglBuku IS NOT NULL) AND (NTPP IS NOT NULL OR
                      NTPP <> '') AND (RevFlag <> 1 OR
                      RevFlag IS NULL) AND (ResponseCode = '00') AND (MsgType <> '0400')
GROUP BY TglByr, hdBranchNo, KPKN, TglBuku
GO
/****** Object:  View [dbo].[vwNotaKreditNew]    Script Date: 03/23/2018 09:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  View dbo.vwNotaKreditNew    Script Date: 4/29/2008 9:29:13 AM ******/
CREATE VIEW [dbo].[vwNotaKreditNew]
AS
SELECT     dbo.TbltxSSP.KdMAP AS NotaKredit, COUNT(dbo.TbltxSSP.KdMAP) AS JmlDok, SUM(dbo.TbltxSSP.TxAmt) AS JmlTerima, dbo.TbltxSSP.TglByr, 
                      dbo.TbltxSSP.hdBranchNo, dbo.TbltxSSP.TrmlID AS TerminalID, dbo.TblJnsByr.NmJnsByr AS Uraian, dbo.TbltxSSP.IDBYR, dbo.TbltxSSP.TglBuku, 
                      dbo.TbltxSSP.adviceReason
FROM         dbo.TbltxSSP INNER JOIN
                      dbo.TblJnsByr ON dbo.TbltxSSP.IDBYR = dbo.TblJnsByr.IDBYR
WHERE     (LEN(dbo.TbltxSSP.NTPP) > 0 AND dbo.TbltxSSP.NTPP<>'0000000000000000') AND (dbo.TbltxSSP.adviceReason IS NULL)
GROUP BY dbo.TbltxSSP.KdMAP, dbo.TbltxSSP.TglByr, dbo.TbltxSSP.hdBranchNo, dbo.TbltxSSP.TrmlID, dbo.TblJnsByr.NmJnsByr, dbo.TbltxSSP.IDBYR, 
                      dbo.TbltxSSP.TglBuku, dbo.TbltxSSP.adviceReason
GO
/****** Object:  View [dbo].[vwBILL]    Script Date: 03/23/2018 09:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwBILL]
AS
SELECT     TOP 100 PERCENT Car AS AJU, NoSSPCP, KodeKPBC AS KPBC, NPWP, Nama, Alamat, TrmlID AS TERMINAL, Tgl AS TANGGAL, 
                      DtCreated AS TANGGAL_CREATED, EDINum, NTPP AS NTPN, { fn IFNULL
                          ((SELECT     txamt
                              FROM         TBLTXSSP
                              WHERE     KDMAP = '411123' AND IDSSPCP = TblSSPCP.ID), 0) } AS '411123', { fn IFNULL
                          ((SELECT     txAMT
                              FROM         TBLTXSSP
                              WHERE     KDMAP = '411222' AND IDSSPCP = TBLSSPCP.ID), 0) } AS '411222', { fn IFNULL
                          ((SELECT     txAMT
                              FROM         TBLTXSSP
                              WHERE     KDMAP = '411212' AND IDSSPCP = TBLSSPCP.ID), 0) } AS '411212', { fn IFNULL
                          ((SELECT     txAMT
                              FROM         TBLTXSSP
                              WHERE     KDMAP = '423146' AND IDSSPCP = TBLSSPCP.ID), 0) } AS '423146', { fn IFNULL
                          ((SELECT     txAMT
                              FROM         TBLTXSSP
                              WHERE     KDMAP = '411514' AND IDSSPCP = TBLSSPCP.ID), 0) } AS '411514', { fn IFNULL
                          ((SELECT     txAMT
                              FROM         TBLTXSSP
                              WHERE     KDMAP = '411519' AND IDSSPCP = TBLSSPCP.ID), 0) } AS '411519', { fn IFNULL
                          ((SELECT     txAMT
                              FROM         TBLTXSSP
                              WHERE     KDMAP = '411512' AND IDSSPCP = TBLSSPCP.ID), 0) } AS '411512', { fn IFNULL
                          ((SELECT     txAMT
                              FROM         TBLTXSSP
                              WHERE     KDMAP = '412119' AND IDSSPCP = TBLSSPCP.ID), 0) } AS '412119', { fn IFNULL
                          ((SELECT     txAMT
                              FROM         TBLTXSSP
                              WHERE     KDMAP = '412113' AND IDSSPCP = TBLSSPCP.ID), 0) } AS '412113', { fn IFNULL
                          ((SELECT     txAMT
                              FROM         TBLTXSSP
                              WHERE     KDMAP = '412112' AND IDSSPCP = TBLSSPCP.ID), 0) } AS '412112', { fn IFNULL
                          ((SELECT     txAMT
                              FROM         TBLTXSSP
                              WHERE     KDMAP = '412111' AND IDSSPCP = TBLSSPCP.ID), 0) } AS '412111',
                          (SELECT     SUM(TxAMT)
                            FROM          TBLTXSSP
                            WHERE      IDSSPCP = TBLSSPCP.ID) AS TOTAL
FROM         dbo.tblSSPCP
WHERE     (NTPP IS NOT NULL) AND (NTPP <> '') AND (EDINum <> '') AND (EDINum IS NOT NULL)
ORDER BY Tgl, TrmlID
GO
/****** Object:  View [dbo].[viewRptRekapNotaKredit2]    Script Date: 03/23/2018 09:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viewRptRekapNotaKredit2] AS SELECT LEFT(KdMAP, 2) AS MAP, SUM(VARDETIL) AS JmlMAP, SUM(Total) AS NiminalMap, hdBranchNo AS CabangBank, TglBuku, NoRek, TrmlID, adviceReason FROM dbo.viewRekaputilasi WHERE (TglBuku IS NOT NULL) AND (adviceReason IS NULL OR adviceReason = '') GROUP BY hdBranchNo, LEFT(KdMAP, 2), TglBuku, NoRek, TrmlID, adviceReason
GO
/****** Object:  View [dbo].[viewRptRekapNotaKredit1]    Script Date: 03/23/2018 09:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viewRptRekapNotaKredit1] AS SELECT LEFT(KdMAP, 1) AS MAP, SUM(VARDETIL) AS JmlMAP, SUM(Total) AS NiminalMap, hdBranchNo AS CabangBank, TglBuku, NoRek, TrmlID, adviceReason FROM dbo.viewRekaputilasi WHERE (TglBuku IS NOT NULL) AND (adviceReason IS NULL OR adviceReason = '') GROUP BY hdBranchNo, LEFT(KdMAP, 1), TglBuku, NoRek, TrmlID, adviceReason
GO
/****** Object:  View [dbo].[viewRptRekapNotaKredit]    Script Date: 03/23/2018 09:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  View dbo.viewRptRekapNotaKredit    Script Date: 4/29/2008 9:29:13 AM ******/
CREATE VIEW [dbo].[viewRptRekapNotaKredit]
AS
SELECT     LEFT(KdMAP, 4) AS MAP, SUM(VARDETIL) AS JmlMAP, SUM(Total) AS NiminalMap, hdBranchNo AS CabangBank, TglBuku, NoRek, TrmlID, 
                      adviceReason
FROM         dbo.viewRekaputilasi
WHERE     (TglBuku IS NOT NULL)  
AND (adviceReason IS NULL or adviceReason = '')
GROUP BY hdBranchNo, LEFT(KdMAP, 4), TglBuku, NoRek, TrmlID, adviceReason
GO
/****** Object:  View [dbo].[viewHeaderNotaDebet]    Script Date: 03/23/2018 09:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viewHeaderNotaDebet]
AS
SELECT     SUM(TOTAL) AS total, COUNT(NONK) AS Vardetil, TglBuku, CABANG, TglBuku - 1 AS Penerimaan1, TglBuku AS Penerimaan2, GETDATE() AS TglSkr, 
                      KPKN, hdBankCode, TrmlID
FROM         dbo.viewNotaDebet
GROUP BY TglBuku, CABANG, KPKN, hdBankCode, TrmlID
GO
/****** Object:  View [dbo].[viewHeaderNKR]    Script Date: 03/23/2018 09:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viewHeaderNKR]
AS
SELECT     COUNT(KdMAP) AS VARDETIL, SUM(Total) AS TOTAL, hdBranchNo, hdBankCode, CONVERT(varchar, TglBuku, 5) AS TglBukuF, TglBuku, 
                      CONVERT(varchar, TglPenerimaan1, 5) AS TglPenerimaan1, CONVERT(varchar, TglPenerimaan2, 5) AS TglPenerimaan2, KPKN, NoRek
FROM         dbo.viewRekaputilasi
GROUP BY hdBranchNo, hdBankCode, TglBuku, TglPenerimaan1, TglPenerimaan2, KPKN, NoRek
GO
/****** Object:  Default [DF_tblPebHdr_src]    Script Date: 03/23/2018 09:12:43 ******/
ALTER TABLE [dbo].[tblPebHdr] ADD  CONSTRAINT [DF_tblPebHdr_src]  DEFAULT ('0') FOR [src]
GO
/****** Object:  Default [DF_tblPebHdr_Enc_src]    Script Date: 03/23/2018 09:12:43 ******/
ALTER TABLE [dbo].[tblPebHdr_Enc] ADD  CONSTRAINT [DF_tblPebHdr_Enc_src]  DEFAULT ('0') FOR [src]
GO
/****** Object:  Default [DF_tblPibHdr_DTCREATED]    Script Date: 03/23/2018 09:12:43 ******/
ALTER TABLE [dbo].[tblPibHdr] ADD  CONSTRAINT [DF_tblPibHdr_DTCREATED]  DEFAULT (getdate()) FOR [DTCREATED]
GO
/****** Object:  Default [DF_tblRTEsandi_Status]    Script Date: 03/23/2018 09:12:43 ******/
ALTER TABLE [dbo].[tblRTEsandi] ADD  CONSTRAINT [DF_tblRTEsandi_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_tblSSPCPINC_source]    Script Date: 03/23/2018 09:12:43 ******/
ALTER TABLE [dbo].[tblSSPCPINC] ADD  CONSTRAINT [DF_tblSSPCPINC_source]  DEFAULT ((0)) FOR [source]
GO
/****** Object:  Default [DF_TbltxSSP_DtCreated]    Script Date: 03/23/2018 09:12:43 ******/
ALTER TABLE [dbo].[TbltxSSP] ADD  CONSTRAINT [DF_TbltxSSP_DtCreated]  DEFAULT (getdate()) FOR [DtCreated]
GO
/****** Object:  Default [DF_TbltxSSP_G2_CountSend]    Script Date: 03/23/2018 09:12:43 ******/
ALTER TABLE [dbo].[TbltxSSP_G2] ADD  CONSTRAINT [DF_TbltxSSP_G2_CountSend]  DEFAULT ('0') FOR [CountSend]
GO
/****** Object:  Default [DF_TbltxSSP_G2_TimeNextSend]    Script Date: 03/23/2018 09:12:43 ******/
ALTER TABLE [dbo].[TbltxSSP_G2] ADD  CONSTRAINT [DF_TbltxSSP_G2_TimeNextSend]  DEFAULT ('00000000000000') FOR [TimeNextSend]
GO
