object FListarClientes: TFListarClientes
  Left = 0
  Top = 0
  Caption = 'Listar'
  ClientHeight = 220
  ClientWidth = 564
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 13
    Width = 34
    Height = 13
    Caption = 'Nome :'
  end
  object Label2: TLabel
    Left = 135
    Top = 13
    Width = 26
    Height = 13
    Caption = 'CPF :'
  end
  object Label3: TLabel
    Left = 223
    Top = 13
    Width = 28
    Height = 13
    Caption = 'Bairro'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 59
    Width = 545
    Height = 153
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyUp = DBGrid1KeyUp
  end
  object RadioGroup1: TRadioGroup
    Left = 350
    Top = 20
    Width = 203
    Height = 33
    Caption = 'Sexo'
    Columns = 3
    ItemIndex = 2
    Items.Strings = (
      'Masculino'
      'Feminino'
      'Indefinido')
    TabOrder = 3
    OnClick = RadioGroup1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    OnExit = Edit3Exit
  end
  object Edit2: TEdit
    Left = 135
    Top = 32
    Width = 82
    Height = 21
    TabOrder = 1
    OnExit = Edit3Exit
  end
  object Edit3: TEdit
    Left = 223
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 2
    OnExit = Edit3Exit
  end
end
