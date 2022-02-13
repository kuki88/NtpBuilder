object FormPosudba: TFormPosudba
  Left = 0
  Top = 0
  Caption = 'Posudba'
  ClientHeight = 468
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    751
    468)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 61
    Top = 202
    Width = 18
    Height = 13
    Caption = 'Ime'
  end
  object Label2: TLabel
    Left = 9
    Top = 245
    Width = 70
    Height = 13
    Caption = 'Telefonski broj'
  end
  object Label3: TLabel
    Left = 45
    Top = 283
    Width = 34
    Height = 13
    Caption = 'Adresa'
  end
  object Label4: TLabel
    Left = 391
    Top = 202
    Width = 37
    Height = 13
    Caption = 'Prezime'
  end
  object Label5: TLabel
    Left = 391
    Top = 243
    Width = 55
    Height = 13
    Caption = #268'lanski broj'
  end
  object Label6: TLabel
    Left = 391
    Top = 283
    Width = 87
    Height = 13
    Caption = 'Broj posudbi '#269'lana'
  end
  object Label7: TLabel
    Left = 539
    Top = 184
    Width = 55
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'NazivKnjige'
    FocusControl = dbEditNaziv
    ExplicitLeft = 528
  end
  object Label8: TLabel
    Left = 539
    Top = 224
    Width = 49
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Kategorija'
    FocusControl = dbEditKategorija
    ExplicitLeft = 528
  end
  object Label9: TLabel
    Left = 539
    Top = 264
    Width = 35
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Koli'#269'ina'
    FocusControl = dbEditKolicina
    ExplicitLeft = 528
  end
  object Label10: TLabel
    Left = 539
    Top = 304
    Width = 23
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'ISBN'
    FocusControl = dbEditIsbn
    ExplicitLeft = 528
  end
  object Label11: TLabel
    Left = 539
    Top = 344
    Width = 27
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Autor'
    FocusControl = dbEditAutor
    ExplicitLeft = 528
  end
  object Odustani: TButton
    Left = 8
    Top = 399
    Width = 365
    Height = 61
    Anchors = [akLeft, akBottom]
    Caption = 'Odustani'
    ModalResult = 2
    TabOrder = 0
    ExplicitTop = 610
  end
  object Posudi: TButton
    Left = 378
    Top = 399
    Width = 365
    Height = 61
    Anchors = [akRight, akBottom]
    Caption = 'Posudi'
    ModalResult = 1
    TabOrder = 1
    OnClick = PosudiClick
    ExplicitTop = 610
  end
  object datePocetna: TDateTimePicker
    Left = 85
    Top = 320
    Width = 144
    Height = 21
    Date = 44603.000000000000000000
    Time = 0.753646874996775300
    TabOrder = 2
  end
  object datePovratak: TDateTimePicker
    Left = 236
    Top = 320
    Width = 147
    Height = 21
    Date = 44603.000000000000000000
    Time = 0.753646874996775300
    TabOrder = 3
  end
<<<<<<< HEAD
=======
  object dbEditIme: TDBEdit
    Left = 85
    Top = 402
    Width = 145
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object dbEditPrezime: TDBEdit
    Left = 236
    Top = 402
    Width = 147
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
  object dbEditTelBroj: TDBEdit
    Left = 85
    Top = 445
    Width = 145
    Height = 21
    ReadOnly = True
    TabOrder = 6
  end
  object dbEditClanskiBroj: TDBEdit
    Left = 236
    Top = 445
    Width = 147
    Height = 21
    ReadOnly = True
    TabOrder = 7
  end
  object dbEditAdresa: TDBEdit
    Left = 85
    Top = 488
    Width = 145
    Height = 21
    ReadOnly = True
    TabOrder = 8
  end
  object dbEditBrojPosudbi: TDBEdit
    Left = 236
    Top = 488
    Width = 147
    Height = 21
    ReadOnly = True
    TabOrder = 9
  end
>>>>>>> parent of bef97b7 (Revert "first")
  object dbEditNaziv: TDBEdit
    Left = 539
    Top = 200
    Width = 204
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'NazivKnjige'
    ReadOnly = True
<<<<<<< HEAD
    TabOrder = 5
=======
    TabOrder = 10
>>>>>>> parent of bef97b7 (Revert "first")
  end
  object dbEditKategorija: TDBEdit
    Left = 539
    Top = 240
    Width = 204
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'Kategorija'
    ReadOnly = True
<<<<<<< HEAD
    TabOrder = 6
=======
    TabOrder = 11
>>>>>>> parent of bef97b7 (Revert "first")
  end
  object dbEditKolicina: TDBEdit
    Left = 539
    Top = 280
    Width = 204
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'Koli'#269'ina'
    ReadOnly = True
<<<<<<< HEAD
    TabOrder = 7
=======
    TabOrder = 12
>>>>>>> parent of bef97b7 (Revert "first")
  end
  object dbEditIsbn: TDBEdit
    Left = 539
    Top = 320
    Width = 204
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'ISBN'
    ReadOnly = True
<<<<<<< HEAD
    TabOrder = 8
=======
    TabOrder = 13
>>>>>>> parent of bef97b7 (Revert "first")
  end
  object dbEditAutor: TDBEdit
    Left = 539
    Top = 360
    Width = 204
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'Autor'
    ReadOnly = True
<<<<<<< HEAD
    TabOrder = 9
=======
    TabOrder = 14
>>>>>>> parent of bef97b7 (Revert "first")
  end
  object editIme: TEdit
    Left = 85
    Top = 199
    Width = 147
    Height = 21
    ReadOnly = True
<<<<<<< HEAD
    TabOrder = 10
=======
    TabOrder = 15
>>>>>>> parent of bef97b7 (Revert "first")
    Text = 'editIme'
  end
  object editTelBroj: TEdit
    Left = 85
    Top = 240
    Width = 147
    Height = 21
    ReadOnly = True
<<<<<<< HEAD
    TabOrder = 11
=======
    TabOrder = 16
>>>>>>> parent of bef97b7 (Revert "first")
    Text = 'Edit1'
  end
  object editAdresa: TEdit
    Left = 85
    Top = 280
    Width = 147
    Height = 21
    ReadOnly = True
<<<<<<< HEAD
    TabOrder = 12
=======
    TabOrder = 17
>>>>>>> parent of bef97b7 (Revert "first")
    Text = 'Edit1'
  end
  object editPrezime: TEdit
    Left = 238
    Top = 199
    Width = 147
    Height = 21
    ReadOnly = True
<<<<<<< HEAD
    TabOrder = 13
=======
    TabOrder = 18
>>>>>>> parent of bef97b7 (Revert "first")
    Text = 'Edit1'
  end
  object editClanskiBroj: TEdit
    Left = 238
    Top = 240
    Width = 147
    Height = 21
    ReadOnly = True
<<<<<<< HEAD
    TabOrder = 14
=======
    TabOrder = 19
>>>>>>> parent of bef97b7 (Revert "first")
    Text = 'Edit1'
  end
  object editBrojPosudbi: TEdit
    Left = 238
    Top = 280
    Width = 147
    Height = 21
    ReadOnly = True
<<<<<<< HEAD
    TabOrder = 15
=======
    TabOrder = 20
>>>>>>> parent of bef97b7 (Revert "first")
    Text = 'Edit1'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 735
    Height = 153
    Anchors = [akLeft, akTop, akRight]
    ReadOnly = True
    TabOrder = 21
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=KnjiznicaManagement;Data Source=KUKICRO' +
      '\SQLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 104
    Top = 72
  end
  object TKnjige: TADOTable
    Connection = ADOConnection1
    TableName = 'Knjige'
    Left = 224
    Top = 32
  end
  object TPosudbe: TADOTable
    Connection = ADOConnection1
    TableName = 'Posudbe'
    Left = 296
    Top = 32
  end
  object TClanovi: TADOTable
    Connection = ADOConnection1
    TableName = 'Clanovi'
    Left = 376
    Top = 32
  end
  object DClanovi: TDataSource
    DataSet = TClanovi
    Left = 376
    Top = 104
  end
  object DPosudbe: TDataSource
    DataSet = TPosudbe
    Left = 296
    Top = 104
  end
  object DKnjige: TDataSource
    DataSet = TKnjige
    Left = 216
    Top = 104
  end
end
