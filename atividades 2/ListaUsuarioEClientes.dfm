inherited FUsuariosClientes: TFUsuariosClientes
  Caption = 'Usuarios e Clientes'
  ClientHeight = 412
  ClientWidth = 731
  Position = poDesktopCenter
  OnShow = FormShow
  ExplicitWidth = 747
  ExplicitHeight = 451
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 70
    Height = 19
    Caption = 'Usuarios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 207
    Width = 66
    Height = 19
    Caption = 'Clientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object DBGridListaUsuario: TDBGrid
    Left = 40
    Top = 49
    Width = 641
    Height = 120
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGridListaUsuarioDblClick
  end
  object DBGridListaCliente: TDBGrid
    Left = 40
    Top = 232
    Width = 641
    Height = 120
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
