object FormClanoviPosudbe: TFormClanoviPosudbe
  Left = 0
  Top = 0
  Caption = 'FormClanoviPosudbe'
  ClientHeight = 455
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    734
    455)
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
  object gridClanovi: TDBGrid
    Left = 8
    Top = 41
    Width = 700
    Height = 185
    Anchors = [akTop]
    DataSource = DClanovi
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = gridClanoviDblClick
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
    TabOrder = 1
    OnClick = btnNovaPosudbaClick
  end
  object editPrezime: TEdit
    Left = 499
    Top = 12
    Width = 128
    Height = 21
    Anchors = [akTop]
    TabOrder = 2
  end
  object btnTrazi: TButton
    Left = 633
    Top = 10
    Width = 75
    Height = 25
    Anchors = [akTop]
    Caption = 'Tra'#382'i'
    TabOrder = 3
    OnClick = btnTraziClick
  end
<<<<<<< HEAD
=======
  object DBEdit1: TDBEdit
    Left = 8
    Top = 461
    Width = 200
    Height = 21
    DataField = 'Id'
    TabOrder = 5
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 503
    Width = 200
    Height = 21
    DataField = 'isbnKnjige'
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 543
    Width = 200
    Height = 21
    DataField = 'datumPosudbe'
    TabOrder = 7
  end
  object DBEdit4: TDBEdit
    Left = 222
    Top = 462
    Width = 200
    Height = 21
    DataField = 'datumPovratka'
    TabOrder = 8
  end
  object DBEdit5: TDBEdit
    Left = 222
    Top = 503
    Width = 200
    Height = 21
    DataField = 'clanskiBroj'
    TabOrder = 9
  end
  object DBEdit6: TDBEdit
    Left = 222
    Top = 543
    Width = 200
    Height = 21
    DataField = 'Naziv Knjige'
    TabOrder = 10
  end
>>>>>>> parent of bef97b7 (Revert "first")
  object GroupBox1: TGroupBox
    Left = 8
    Top = 242
    Width = 425
    Height = 169
    TabOrder = 4
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
      TabOrder = 0
    end
    object dbEditIme: TDBEdit
      Left = 3
      Top = 81
      Width = 200
      Height = 21
      DataField = 'ime'
      TabOrder = 1
    end
    object dbEditPrezime: TDBEdit
      Left = 214
      Top = 81
      Width = 200
      Height = 21
      DataField = 'prezime'
      TabOrder = 2
    end
    object dbEditTelBroj: TDBEdit
      Left = 214
      Top = 124
      Width = 200
      Height = 21
      DataField = 'telefonskiBroj'
      TabOrder = 3
    end
    object dbeditAdresa: TDBEdit
      Left = 3
      Top = 124
      Width = 200
      Height = 21
      DataField = 'adresa'
      TabOrder = 4
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
<<<<<<< HEAD
      'fo=False;Initial Catalog=KnjiznicaManagement;Data Source=DESKTOP' +
      '-N5RRRS5\SQLEXPRESS'
=======
      'fo=False;Initial Catalog=KnjiznicaManagement;Data Source=KUKICRO' +
      '\SQLEXPRESS'
    LoginPrompt = False
>>>>>>> parent of 47ae5f3 (connecton popravljen)
    Provider = 'SQLOLEDB.1'
<<<<<<< HEAD
    Left = 112
    Top = 179
=======
    Left = 96
    Top = 112
>>>>>>> parent of bef97b7 (Revert "first")
  end
  object TKnjige: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Knjige'
<<<<<<< HEAD
    Left = 160
    Top = 171
=======
    Left = 256
    Top = 96
  end
  object DKnjige: TDataSource
    DataSet = TKnjige
    Left = 256
    Top = 168
>>>>>>> parent of bef97b7 (Revert "first")
  end
  object TPosudbe: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'clanskiBroj'
    MasterFields = 'clanskiBroj'
    MasterSource = DClanovi
    TableName = 'Posudbe'
<<<<<<< HEAD
    Left = 208
    Top = 179
=======
    Left = 328
    Top = 96
>>>>>>> parent of bef97b7 (Revert "first")
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
<<<<<<< HEAD
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
    Left = 160
    Top = 131
  end
  object DPosudbe: TDataSource
    DataSet = TPosudbe
    Left = 208
    Top = 131
=======
  end
  object DPosudbe: TDataSource
    DataSet = TPosudbe
    Left = 336
    Top = 168
>>>>>>> parent of bef97b7 (Revert "first")
  end
  object TClanovi: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Clanovi'
<<<<<<< HEAD
    Left = 256
    Top = 171
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
    Left = 256
    Top = 131
=======
    Left = 408
    Top = 96
  end
  object DClanovi: TDataSource
    DataSet = TClanovi
    Left = 416
    Top = 168
>>>>>>> parent of bef97b7 (Revert "first")
  end
end
