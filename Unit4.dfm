object formPosudbe: TformPosudbe
  Left = 0
  Top = 0
  Caption = 'formPosudbe'
  ClientHeight = 436
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object gridPosudbe: TDBGrid
    Left = 0
    Top = 0
    Width = 707
    Height = 185
    Align = alTop
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
  object btnNovaPosudba: TButton
    Left = 8
    Top = 221
    Width = 89
    Height = 44
    Caption = 'Nova Posudba'
    TabOrder = 1
    OnClick = btnNovaPosudbaClick
  end
  object btnObrisi: TButton
    Left = 8
    Top = 271
    Width = 89
    Height = 42
    Caption = 'Obrisi posudbu'
    TabOrder = 2
    OnClick = btnObrisiClick
  end
  object btnProdulji: TButton
    Left = 8
    Top = 319
    Width = 89
    Height = 39
    Caption = 'Produlji'
    TabOrder = 3
  end
  object editProdulji: TEdit
    Left = 130
    Top = 361
    Width = 138
    Height = 26
    Alignment = taCenter
    NumbersOnly = True
    TabOrder = 4
    Text = '7'
  end
  object UpDown1: TUpDown
    Left = 103
    Top = 319
    Width = 16
    Height = 28
    Associate = editProdulji
    Position = 7
    TabOrder = 5
  end
  object DKnjige: TDataSource
    DataSet = TKnjige
    Left = 104
    Top = 140
  end
  object TKnjige: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'ISBN'
    MasterFields = 'isbnKnjige'
    MasterSource = DPosudbe
    TableName = 'Knjige'
    Left = 104
    Top = 180
  end
  object DPosudbe: TDataSource
    DataSet = TPosudbe
    Left = 152
    Top = 140
  end
  object TPosudbe: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'clanskiBroj'
    MasterFields = 'clanskiBroj'
    MasterSource = FormClanoviPosudbe.DClanovi
    TableName = 'Posudbe'
    Left = 152
    Top = 180
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
  object DClanovi: TDataSource
    DataSet = TClanovi
    Left = 200
    Top = 140
  end
  object TClanovi: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'prezime LIKE "K%"'
    IndexFieldNames = 'clanskiBroj'
    TableName = 'Clanovi'
    Left = 200
    Top = 180
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
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=KnjiznicaManagement;Data Source=DESKTOP' +
      '-N5RRRS5\SQLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 160
  end
end