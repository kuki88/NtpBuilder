object Evidencija: TEvidencija
  Left = 0
  Top = 0
  Caption = 'Evidencija'
  ClientHeight = 476
  ClientWidth = 663
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    663
    476)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 53
    Top = 171
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
  end
  object Label1: TLabel
    Left = 32
    Top = 338
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 279
    Top = 338
    Width = 73
    Height = 13
    Caption = 'datumPovratka'
    FocusControl = DBEdit4
  end
  object Label4: TLabel
    Left = 32
    Top = 384
    Width = 48
    Height = 13
    Caption = 'isbnKnjige'
    FocusControl = DBEdit2
  end
  object Label5: TLabel
    Left = 279
    Top = 384
    Width = 50
    Height = 13
    Caption = 'clanskiBroj'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 32
    Top = 430
    Width = 71
    Height = 13
    Caption = 'datumPosudbe'
    FocusControl = DBEdit3
  end
  object Label7: TLabel
    Left = 279
    Top = 430
    Width = 58
    Height = 13
    Caption = 'Naziv Knjige'
    FocusControl = DBEdit6
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 357
    Width = 200
    Height = 21
    DataField = 'Id'
    DataSource = DPosudbe
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 403
    Width = 200
    Height = 21
    DataField = 'isbnKnjige'
    DataSource = DPosudbe
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 32
    Top = 446
    Width = 200
    Height = 21
    DataField = 'datumPosudbe'
    DataSource = DPosudbe
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 279
    Top = 357
    Width = 200
    Height = 21
    DataField = 'datumPovratka'
    DataSource = DPosudbe
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 279
    Top = 403
    Width = 200
    Height = 21
    DataField = 'clanskiBroj'
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 279
    Top = 446
    Width = 200
    Height = 21
    DataField = 'Naziv Knjige'
    DataSource = DPosudbe
    TabOrder = 5
  end
  object gridPosudbe: TDBGrid
    Left = -2
    Top = 8
    Width = 700
    Height = 209
    Anchors = [akBottom]
    DataSource = DPosudbe
    ReadOnly = True
    TabOrder = 6
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
  object TPosudbe: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'clanskiBroj'
    MasterFields = 'clanskiBroj'
    TableName = 'Posudbe'
    Left = 168
    Top = 147
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
  object DPosudbe: TDataSource
    DataSet = TPosudbe
    Left = 168
    Top = 99
  end
  object DKnjige: TDataSource
    DataSet = TKnjige
    Left = 120
    Top = 99
  end
  object TKnjige: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'ISBN'
    MasterFields = 'isbnKnjige'
    MasterSource = DPosudbe
    TableName = 'Knjige'
    Left = 120
    Top = 139
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=KnjiznicaManagement;Data Source=DESKTOP' +
      '-N5RRRS5\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 72
    Top = 147
  end
  object TClanovi: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'prezime LIKE "K%"'
    TableName = 'Clanovi'
    Left = 216
    Top = 139
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
    Left = 216
    Top = 99
  end
end