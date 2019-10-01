object FClientes: TFClientes
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 437
  ClientWidth = 957
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnCadastraCliente: TButton
    Left = 26
    Top = 225
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 1
    OnClick = btnCadastraClienteClick
  end
  object DBGridClientes: TDBGrid
    Left = 27
    Top = 256
    Width = 905
    Height = 136
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGridClientesDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Usuario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sexo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nascimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rua'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Complemento'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bairro'
        Visible = True
      end>
  end
  object btnEditaCliente: TButton
    Left = 115
    Top = 225
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 2
    OnClick = btnEditaClienteClick
  end
  object btnExcluirCliente: TButton
    Left = 211
    Top = 225
    Width = 77
    Height = 25
    Caption = 'Excluir'
    TabOrder = 3
    OnClick = btnExcluirClienteClick
  end
  object edtPesquisaCliente: TEdit
    Left = 594
    Top = 229
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object cbxPesquisaCliente: TComboBox
    Left = 726
    Top = 229
    Width = 107
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 5
    Text = 'Nome'
    Items.Strings = (
      'Nome'
      'Sexo'
      'RG'
      'CPF'
      'Email'
      'Nascimeto'
      'Cidade'
      'UF'
      'Telefone'
      'Rua'
      'Numero'
      'Complemento'
      'Bairro')
  end
  object btnPesquisaCliente: TButton
    Left = 849
    Top = 225
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 6
    OnClick = btnPesquisaClienteClick
  end
  object GroupBox1: TGroupBox
    Left = 496
    Top = 8
    Width = 441
    Height = 120
    Caption = 'Endere'#231'o'
    TabOrder = 0
    object Label9: TLabel
      Left = 15
      Top = 21
      Width = 26
      Height = 13
      Caption = 'Rua :'
    end
    object Label11: TLabel
      Left = 15
      Top = 69
      Width = 65
      Height = 13
      Caption = 'Complemento'
    end
    object Label12: TLabel
      Left = 245
      Top = 69
      Width = 35
      Height = 13
      Caption = 'Bairro :'
    end
    object Label10: TLabel
      Left = 347
      Top = 21
      Width = 19
      Height = 13
      Caption = 'N'#176' :'
    end
    object edtRua: TEdit
      Left = 15
      Top = 40
      Width = 298
      Height = 21
      TabOrder = 0
    end
    object edtComplemento: TEdit
      Left = 15
      Top = 84
      Width = 202
      Height = 21
      TabOrder = 2
    end
    object edtBairro: TEdit
      Left = 245
      Top = 84
      Width = 180
      Height = 21
      TabOrder = 3
    end
    object edtNumero: TEdit
      Left = 343
      Top = 40
      Width = 80
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 8
    Width = 474
    Height = 211
    Caption = 'Cliente'
    TabOrder = 8
    object Label15: TLabel
      Left = 10
      Top = 162
      Width = 43
      Height = 13
      Caption = 'Usuario :'
    end
    object Label5: TLabel
      Left = 10
      Top = 114
      Width = 62
      Height = 13
      Caption = 'Nascimento :'
    end
    object Label7: TLabel
      Left = 106
      Top = 114
      Width = 40
      Height = 13
      Caption = 'Cidade :'
    end
    object Label14: TLabel
      Left = 310
      Top = 114
      Width = 49
      Height = 13
      Caption = 'Telefone :'
    end
    object Label8: TLabel
      Left = 250
      Top = 114
      Width = 20
      Height = 13
      Caption = 'UF :'
    end
    object Label4: TLabel
      Left = 239
      Top = 66
      Width = 31
      Height = 13
      Caption = 'Email :'
    end
    object Label2: TLabel
      Left = 106
      Top = 66
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object Label3: TLabel
      Left = 10
      Top = 66
      Width = 21
      Height = 13
      Caption = 'RG :'
    end
    object Label1: TLabel
      Left = 10
      Top = 18
      Width = 82
      Height = 13
      Caption = 'Nome Completo :'
    end
    object edtCidade: TEdit
      Left = 106
      Top = 133
      Width = 118
      Height = 21
      MaxLength = 30
      TabOrder = 5
    end
    object edtUf: TEdit
      Left = 250
      Top = 133
      Width = 32
      Height = 21
      MaxLength = 2
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
      Left = 10
      Top = 39
      Width = 337
      Height = 21
      MaxLength = 60
      TabOrder = 0
      OnExit = edtNomeClienteExit
    end
    object RadioGroup1: TRadioGroup
      Left = 367
      Top = 17
      Width = 82
      Height = 54
      Caption = 'sexo'
      ItemIndex = 0
      Items.Strings = (
        'Masculino'
        'Feminino')
      TabOrder = 1
    end
    object edtUsuario: TEdit
      Left = 10
      Top = 181
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 7
    end
    object edtRg: TEdit
      Left = 11
      Top = 85
      Width = 81
      Height = 21
      TabOrder = 2
    end
    object edtCPF: TEdit
      Left = 103
      Top = 85
      Width = 121
      Height = 21
      MaxLength = 11
      NumbersOnly = True
      TabOrder = 3
      OnEnter = edtCPFEnter
      OnExit = edtCPFExit
      OnKeyPress = edtCPFKeyPress
    end
    object edtMNascimento: TEdit
      Left = 11
      Top = 133
      Width = 89
      Height = 21
      MaxLength = 8
      NumbersOnly = True
      TabOrder = 8
      OnEnter = edtMNascimentoEnter
      OnExit = edtMNascimentoExit
    end
    object edtTelefone: TEdit
      Left = 310
      Top = 133
      Width = 139
      Height = 21
      MaxLength = 11
      NumbersOnly = True
      TabOrder = 9
      OnEnter = edtTelefoneEnter
      OnExit = edtTelefoneExit
    end
  end
  object btnCancelar: TButton
    Left = 340
    Top = 225
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 9
    OnClick = btnCancelarClick
  end
end
