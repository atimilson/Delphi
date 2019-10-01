object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 403
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 920
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 384
    Width = 1012
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
    ExplicitLeft = 192
    ExplicitTop = 256
    ExplicitWidth = 0
  end
  object MainMenu1: TMainMenu
    Left = 920
    Top = 8
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object menuUsuarios: TMenuItem
        Caption = 'Usuarios'
        OnClick = menuUsuariosClick
      end
      object menuCliente: TMenuItem
        Caption = 'Cliente'
        OnClick = menuClienteClick
      end
      object ClienteSegundo1: TMenuItem
        Caption = 'Cliente Segundo'
        OnClick = ClienteSegundo1Click
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'INTESIG_ATIMILSON'
    Left = 936
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 936
    Top = 256
  end
  object Database1: TDatabase
    AliasName = 'INTESIG_ATIMILSON'
    Connected = True
    DatabaseName = 'INTESIG_ATIMILSON'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 936
    Top = 128
  end
end
