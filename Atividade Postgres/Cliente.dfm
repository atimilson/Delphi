object FormCliente: TFormCliente
  Left = 0
  Top = 0
  Caption = 'Cliente'
  ClientHeight = 341
  ClientWidth = 518
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 33
    Top = 27
    Width = 62
    Height = 13
    Caption = 'Identifica'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtIdentificacao: TEdit
    Left = 101
    Top = 24
    Width = 121
    Height = 21
    Hint = 'Digite a identifica'#231#227'o'
    MaxLength = 5
    NumbersOnly = True
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
  end
  object GroupBox2: TGroupBox
    Left = 22
    Top = 54
    Width = 474
    Height = 178
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label5: TLabel
      Left = 10
      Top = 114
      Width = 72
      Height = 13
      Caption = 'Nascimento :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 113
      Top = 114
      Width = 44
      Height = 13
      Caption = 'Cidade :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 310
      Top = 114
      Width = 55
      Height = 13
      Caption = 'Telefone :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 239
      Top = 66
      Width = 36
      Height = 13
      Caption = 'Email :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 106
      Top = 66
      Width = 20
      Height = 13
      Caption = 'CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 66
      Width = 22
      Height = 13
      Caption = 'RG :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 10
      Top = 18
      Width = 95
      Height = 13
      Caption = 'Nome Completo :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCidade: TEdit
      Left = 106
      Top = 133
      Width = 183
      Height = 21
      MaxLength = 30
      TabOrder = 6
    end
    object edtEmail: TEdit
      Left = 239
      Top = 85
      Width = 211
      Height = 21
      MaxLength = 60
      TabOrder = 4
    end
    object edtNomeCliente: TEdit
      Left = 11
      Top = 39
      Width = 337
      Height = 21
      MaxLength = 60
      TabOrder = 0
    end
    object RadioSexo: TRadioGroup
      Left = 368
      Top = 14
      Width = 82
      Height = 54
      Caption = 'sexo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Font.Quality = fqDraft
      ItemIndex = 0
      Items.Strings = (
        'Masculino'
        'Feminino')
      ParentFont = False
      TabOrder = 1
    end
    object edtRg: TEdit
      Left = 11
      Top = 85
      Width = 81
      Height = 21
      TabOrder = 2
    end
    object edtCPF: TEdit
      Left = 98
      Top = 85
      Width = 121
      Height = 21
      MaxLength = 11
      NumbersOnly = True
      TabOrder = 3
    end
    object edtMNascimento: TEdit
      Left = 11
      Top = 133
      Width = 89
      Height = 21
      MaxLength = 8
      NumbersOnly = True
      TabOrder = 5
    end
    object edtTelefone: TEdit
      Left = 310
      Top = 133
      Width = 139
      Height = 21
      MaxLength = 11
      NumbersOnly = True
      TabOrder = 7
    end
  end
  object GroupBox3: TGroupBox
    Tag = 2
    Left = 22
    Top = 216
    Width = 474
    Height = 120
    Caption = 'Endere'#231'o'
    TabOrder = 2
    object Label9: TLabel
      Left = 15
      Top = 21
      Width = 28
      Height = 13
      Caption = 'Rua :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 15
      Top = 69
      Width = 65
      Height = 13
      Caption = 'Complemento'
    end
    object Label12: TLabel
      Left = 270
      Top = 69
      Width = 35
      Height = 13
      Caption = 'Bairro :'
    end
    object Label10: TLabel
      Left = 370
      Top = 21
      Width = 19
      Height = 13
      Caption = 'N'#176' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtRua: TEdit
      Left = 15
      Top = 40
      Width = 333
      Height = 21
      TabOrder = 0
    end
    object edtComplemento: TEdit
      Left = 15
      Top = 84
      Width = 234
      Height = 21
      TabOrder = 2
    end
    object edtBairro: TEdit
      Left = 270
      Top = 84
      Width = 180
      Height = 21
      TabOrder = 3
    end
    object edtNumero: TEdit
      Left = 370
      Top = 40
      Width = 80
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 22
    Top = 279
    Width = 474
    Height = 57
    Caption = 'A'#231#245'es'
    TabOrder = 3
    object btSalvar: TButton
      Left = 88
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btSalvarClick
    end
    object btExcluir: TButton
      Left = 195
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 1
    end
    object Button1: TButton
      Left = 303
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
    end
  end
end
