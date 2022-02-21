object formEbooks: TformEbooks
  Left = 0
  Top = 0
  Caption = 'EBOOKS'
  ClientHeight = 589
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Postotak: TLabel
    Left = 0
    Top = 331
    Width = 846
    Height = 48
    Align = alTop
    Alignment = taCenter
    Caption = 'Postotak'
    Color = clDefault
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clLime
    Font.Height = 50
    Font.Name = 'Impact'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    ExplicitWidth = 150
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 28
    Width = 846
    Height = 249
    Align = alTop
    DataSource = DEknjige
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object editSearch: TEdit
    Left = 0
    Top = 0
    Width = 846
    Height = 28
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TextHint = 'Search'
    OnKeyPress = editSearchKeyPress
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 379
    Width = 846
    Height = 49
    Align = alTop
    ParentShowHint = False
    Smooth = True
    Step = 1
    ShowHint = True
    TabOrder = 2
    ExplicitTop = 331
  end
  object Button1: TButton
    Left = 0
    Top = 277
    Width = 846
    Height = 54
    Align = alTop
    Caption = 'Download'
    TabOrder = 3
    OnClick = Button1Click
    ExplicitTop = 276
  end
  object Button2: TButton
    Left = 0
    Top = 428
    Width = 846
    Height = 51
    Align = alTop
    BiDiMode = bdLeftToRight
    Caption = '10 kb/s'
    ParentBiDiMode = False
    TabOrder = 4
    OnClick = Button2Click
    ExplicitTop = 380
  end
  object Button3: TButton
    Left = 0
    Top = 479
    Width = 846
    Height = 53
    Align = alTop
    BiDiMode = bdLeftToRight
    Caption = '100 kb/s'
    ParentBiDiMode = False
    TabOrder = 5
    OnClick = Button3Click
    ExplicitTop = 431
  end
  object Button4: TButton
    Left = 0
    Top = 532
    Width = 846
    Height = 53
    Align = alTop
    BiDiMode = bdLeftToRight
    Caption = '200 kb/s'
    ParentBiDiMode = False
    TabOrder = 6
    OnClick = Button4Click
    ExplicitTop = 484
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Knjige;Data Source=DESKTOP-N5RRRS5\SQLE' +
      'XPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 704
    Top = 40
  end
  object TEknjige: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Knjige'
    Left = 776
    Top = 104
    object TEknjigeNaziv: TStringField
      FieldName = 'Naziv'
      Size = 1024
    end
    object TEknjigeAutor: TStringField
      FieldName = 'Autor'
      Size = 1024
    end
  end
  object DEknjige: TDataSource
    DataSet = TEknjige
    Left = 768
    Top = 40
  end
  object dialogSpasiMe: TSaveDialog
    Filter = 'PDF|*.pdf'
    Left = 704
    Top = 104
  end
  object Download: TIdHTTP
    Intercept = Thotter
    OnWork = DownloadWork
    OnWorkBegin = DownloadWorkBegin
    OnWorkEnd = DownloadWorkEnd
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 280
    Top = 352
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 520
    Top = 40
  end
  object OznaceniRed: TDataSource
    Left = 568
    Top = 40
  end
  object ADOQuery2: TADOQuery
    Parameters = <>
    Left = 528
    Top = 192
  end
  object DSearch: TDataSource
    DataSet = ADOQuery2
    Left = 584
    Top = 184
  end
  object Thotter: TIdInterceptThrottler
    BitsPerSec = 0
    RecvBitsPerSec = 0
    SendBitsPerSec = 0
    Left = 496
    Top = 344
  end
end
