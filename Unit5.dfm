object formImport: TformImport
  Left = 0
  Top = 0
  Caption = 'formImport'
  ClientHeight = 451
  ClientWidth = 744
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnLoad: TButton
    Left = 48
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Load'
    TabOrder = 0
    OnClick = btnLoadClick
  end
  object listClanovi: TListView
    Left = 40
    Top = 40
    Width = 569
    Height = 265
    Columns = <
      item
        Caption = #268'lanski broj'
      end
      item
        Caption = 'Ime'
      end
      item
        Caption = 'Prezime'
      end
      item
        Caption = 'Telefonski broj'
      end
      item
        Caption = 'Adresa'
      end>
    GridLines = True
    RowSelect = True
    TabOrder = 1
    ViewStyle = vsReport
  end
  object btnSync: TButton
    Left = 152
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Sync'
    TabOrder = 2
    OnClick = btnSyncClick
  end
  object XMLDocument1: TXMLDocument
    Active = True
    FileName = 'C:\Users\Jakov\Documents\GitHub\NtpBuilder\something.xml'
    Left = 104
    Top = 176
  end
  object dialogLoad: TOpenDialog
    FileName = 'C:\Users\Jakov\Documents\xml\something.xml'
    Filter = 'XML file|*.xml'
    Left = 256
    Top = 208
  end
  object ADOQuery1: TADOQuery
    Connection = FormClanoviPosudbe.ADOConnection1
    DataSource = FormClanoviPosudbe.DClanovi
    Parameters = <>
    SQL.Strings = (
      ''
      '')
    Left = 392
    Top = 120
  end
  object Rezultat: TDataSource
    DataSet = ADOQuery1
    Left = 456
    Top = 208
  end
end