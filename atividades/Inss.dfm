object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 242
  ClientWidth = 527
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 107
    Height = 19
    Caption = 'Salario Bruto  :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 114
    Top = 91
    Width = 25
    Height = 13
    Caption = 'inss :'
  end
  object Label3: TLabel
    Left = 32
    Top = 136
    Width = 112
    Height = 19
    Caption = 'Salario liquido :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 145
    Top = 29
    Width = 184
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = 'Digite'
  end
  object Edit2: TEdit
    Left = 145
    Top = 88
    Width = 184
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 145
    Top = 138
    Width = 184
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 352
    Top = 32
    Width = 75
    Height = 25
    Caption = 'calcular'
    TabOrder = 3
  end
end
