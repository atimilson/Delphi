object frmVendas: TfrmVendas
  Left = 0
  Top = 0
  Caption = 'Vendas'
  ClientHeight = 382
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object btnCadastrar: TButton
    Left = 8
    Top = 0
    Width = 233
    Height = 65
    Caption = 'Cadastrar Venda'
    TabOrder = 0
    OnClick = btnCadastrarClick
  end
  object btnListar: TButton
    Left = 248
    Top = 0
    Width = 233
    Height = 65
    Caption = 'Listar Venda'
    TabOrder = 1
    OnClick = btnListarClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 64
    Width = 489
    Height = 41
    Caption = 'Dados da Venda'
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 0
    Top = 104
    Width = 489
    Height = 281
    ScrollBars = ssVertical
    TabOrder = 3
  end
end
