object FormClanoviPosudbe: TFormClanoviPosudbe
  Left = 0
  Top = 0
  Caption = 'FormClanoviPosudbe'
  ClientHeight = 808
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    735
    808)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 14
    Width = 56
    Height = 19
    Anchors = [akTop]
    Caption = #268'lanovi:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 566
    Width = 60
    Height = 19
    Anchors = [akBottom]
    Caption = 'Posudbe:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
    ExplicitTop = 490
  end
  object Label9: TLabel
    Left = 198
    Top = 443
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label10: TLabel
    Left = 160
    Top = 488
    Width = 48
    Height = 13
    Caption = 'isbnKnjige'
    FocusControl = DBEdit2
  end
  object Label11: TLabel
    Left = 137
    Top = 530
    Width = 71
    Height = 13
    Caption = 'datumPosudbe'
    FocusControl = DBEdit3
  end
  object Label12: TLabel
    Left = 222
    Top = 443
    Width = 73
    Height = 13
    Caption = 'datumPovratka'
    FocusControl = DBEdit4
  end
  object Label13: TLabel
    Left = 222
    Top = 489
    Width = 50
    Height = 13
    Caption = 'clanskiBroj'
    FocusControl = DBEdit5
  end
  object Label14: TLabel
    Left = 222
    Top = 530
    Width = 58
    Height = 13
    Caption = 'Naziv Knjige'
    FocusControl = DBEdit6
  end
  object gridPosudbe: TDBGrid
    Left = 8
    Top = 591
    Width = 700
    Height = 209
    Anchors = [akBottom]
    DataSource = DPosudbe
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'isbnKnjige'
        Title.Caption = 'ISBN Knjige'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Naziv Knjige'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datumPosudbe'
        Title.Caption = 'Datum Posudbe'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datumPovratka'
        Title.Caption = 'Datum Povratka'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clanskiBroj'
        Title.Caption = #268'lanski Broj'
        Width = 100
        Visible = True
      end>
  end
  object gridClanovi: TDBGrid
    Left = 8
    Top = 39
    Width = 700
    Height = 185
    Anchors = [akTop]
    DataSource = DClanovi
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'clanskiBroj'
        Title.Caption = #269'lanski broj'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ime'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prezime'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefonskiBroj'
        Title.Caption = 'Telefonski Broj'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adresa'
        Width = 150
        Visible = True
      end>
  end
  object btnNovaPosudba: TButton
    Left = 595
    Top = 230
    Width = 113
    Height = 28
    Caption = 'Nova Posudba'
    TabOrder = 2
    OnClick = btnNovaPosudbaClick
  end
  object editPrezime: TEdit
    Left = 500
    Top = 12
    Width = 128
    Height = 21
    Anchors = [akTop]
    TabOrder = 3
  end
  object btnTrazi: TButton
    Left = 634
    Top = 10
    Width = 75
    Height = 25
    Anchors = [akTop]
    Caption = 'Tra'#382'i'
    TabOrder = 4
    OnClick = btnTraziClick
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 461
    Width = 200
    Height = 21
    DataField = 'Id'
    DataSource = DPosudbe
    TabOrder = 5
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 503
    Width = 200
    Height = 21
    DataField = 'isbnKnjige'
    DataSource = DPosudbe
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 543
    Width = 200
    Height = 21
    DataField = 'datumPosudbe'
    DataSource = DPosudbe
    TabOrder = 7
  end
  object DBEdit4: TDBEdit
    Left = 222
    Top = 462
    Width = 200
    Height = 21
    DataField = 'datumPovratka'
    DataSource = DPosudbe
    TabOrder = 8
  end
  object DBEdit5: TDBEdit
    Left = 222
    Top = 503
    Width = 200
    Height = 21
    DataField = 'clanskiBroj'
    DataSource = DPosudbe
    TabOrder = 9
  end
  object DBEdit6: TDBEdit
    Left = 222
    Top = 543
    Width = 200
    Height = 21
    DataField = 'Naziv Knjige'
    DataSource = DPosudbe
    TabOrder = 10
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 242
    Width = 425
    Height = 169
    TabOrder = 11
    object Label4: TLabel
      Left = 3
      Top = 20
      Width = 55
      Height = 13
      Caption = #268'lanski broj'
      FocusControl = dbEditClanskiBroj
    end
    object Label5: TLabel
      Left = 3
      Top = 67
      Width = 16
      Height = 13
      Caption = 'ime'
      FocusControl = dbEditIme
    end
    object Label6: TLabel
      Left = 214
      Top = 67
      Width = 37
      Height = 13
      Caption = 'prezime'
      FocusControl = dbEditPrezime
    end
    object Label7: TLabel
      Left = 214
      Top = 108
      Width = 70
      Height = 13
      Caption = 'Telefonski Broj'
      FocusControl = dbEditTelBroj
    end
    object Label8: TLabel
      Left = 3
      Top = 108
      Width = 33
      Height = 13
      Caption = 'adresa'
      FocusControl = dbeditAdresa
    end
    object dbEditClanskiBroj: TDBEdit
      Left = 3
      Top = 33
      Width = 200
      Height = 21
      DataField = 'clanskiBroj'
      DataSource = DClanovi
      TabOrder = 0
    end
    object dbEditIme: TDBEdit
      Left = 3
      Top = 81
      Width = 200
      Height = 21
      DataField = 'ime'
      DataSource = DClanovi
      TabOrder = 1
    end
    object dbEditPrezime: TDBEdit
      Left = 214
      Top = 81
      Width = 200
      Height = 21
      DataField = 'prezime'
      DataSource = DClanovi
      TabOrder = 2
    end
    object dbEditTelBroj: TDBEdit
      Left = 214
      Top = 124
      Width = 200
      Height = 21
      DataField = 'telefonskiBroj'
      DataSource = DClanovi
      TabOrder = 3
    end
    object dbeditAdresa: TDBEdit
      Left = 3
      Top = 124
      Width = 200
      Height = 21
      DataField = 'adresa'
      DataSource = DClanovi
      TabOrder = 4
    end
  end
  object dbTest: TDBEdit
    Left = 568
    Top = 352
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=KnjiznicaManagement;Data Source=KUKICRO' +
      '\SQLEXPRESS;Use Procedure for Prepare=1;Auto Translate=True;Pack' +
      'et Size=4096;Workstation ID=KUKICRO;Use Encryption for Data=Fals' +
      'e;Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 163
  end
  object TKnjige: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'ISBN'
    MasterFields = 'isbnKnjige'
    MasterSource = DPosudbe
    TableName = 'Knjige'
    Left = 88
    Top = 187
  end
  object TPosudbe: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'clanskiBroj'
    MasterFields = 'clanskiBroj'
    MasterSource = DClanovi
    TableName = 'Posudbe'
    Left = 136
    Top = 187
    object TPosudbeId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object TPosudbeisbnKnjige: TWideStringField
      FieldName = 'isbnKnjige'
      Size = 25
    end
    object TPosudbedatumPosudbe: TDateTimeField
      FieldName = 'datumPosudbe'
    end
    object TPosudbedatumPovratka: TDateTimeField
      FieldName = 'datumPovratka'
    end
    object TPosudbeclanskiBroj: TWideStringField
      FieldName = 'clanskiBroj'
      Size = 50
    end
    object TPosudbeNazivKnjige: TStringField
      FieldKind = fkLookup
      FieldName = 'Naziv Knjige'
      LookupDataSet = TKnjige
      LookupKeyFields = 'ISBN'
      LookupResultField = 'NazivKnjige'
      KeyFields = 'isbnKnjige'
      Size = 100
      Lookup = True
    end
  end
  object DKnjige: TDataSource
    DataSet = TKnjige
    Left = 88
    Top = 147
  end
  object DPosudbe: TDataSource
    DataSet = TPosudbe
    Left = 136
    Top = 147
  end
  object TClanovi: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'prezime LIKE "K%"'
    TableName = 'Clanovi'
    Left = 184
    Top = 187
    object TClanoviclanskiBroj: TWideStringField
      FieldName = 'clanskiBroj'
      Size = 50
    end
    object TClanoviime: TStringField
      FieldName = 'ime'
      Size = 50
    end
    object TClanoviprezime: TStringField
      FieldName = 'prezime'
      Size = 50
    end
    object TClanovitelefonskiBroj: TStringField
      FieldName = 'telefonskiBroj'
      Size = 30
    end
    object TClanoviadresa: TStringField
      FieldName = 'adresa'
      Size = 50
    end
  end
  object DClanovi: TDataSource
    DataSet = TClanovi
    Left = 184
    Top = 147
  end
end
