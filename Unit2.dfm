object PosudbaForm: TPosudbaForm
  Left = 0
  Top = 0
  Caption = 'Posudba'
  ClientHeight = 274
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 22
    Top = 139
    Width = 23
    Height = 13
    Caption = 'ISBN'
  end
  object Label2: TLabel
    Left = 27
    Top = 182
    Width = 18
    Height = 13
    Caption = 'Ime'
  end
  object Label3: TLabel
    Left = 8
    Top = 225
    Width = 37
    Height = 13
    Caption = 'Prezime'
  end
  object Label4: TLabel
    Left = 251
    Top = 139
    Width = 70
    Height = 13
    Caption = 'Telefonski Broj'
  end
  object Label5: TLabel
    Left = 287
    Top = 182
    Width = 34
    Height = 13
    Caption = 'Adresa'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 497
    Height = 113
    DataSource = DdKnjige
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NazivKnjige'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kategorija'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Koli'#269'ina'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISBN'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Autor'
        Width = 100
        Visible = True
      end>
  end
  object editISBN: TEdit
    Left = 51
    Top = 136
    Width = 174
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object editIme: TEdit
    Left = 51
    Top = 179
    Width = 174
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object editPrezime: TEdit
    Left = 51
    Top = 222
    Width = 174
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object editTelBroj: TEdit
    Left = 327
    Top = 136
    Width = 178
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object editAdresa: TEdit
    Left = 327
    Top = 179
    Width = 178
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=KnjiznicaManagement;Data Source=KUKICRO' +
      '\SQLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 304
    Top = 80
  end
  object TKnjige: TADOTable
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=KnjiznicaManagement;Data Source=KUKICRO' +
      '\SQLEXPRESS'
    CursorType = ctStatic
    TableName = 'Knjige'
    Left = 208
    Top = 80
  end
  object DdKnjige: TDataSource
    DataSet = TKnjige
    Left = 256
    Top = 80
  end
end
