object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 399
  ClientWidth = 963
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenuPrincipal
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnMouseEnter = FormMouseEnter
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 380
    Width = 963
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object MainMenuPrincipal: TMainMenu
    Left = 856
    Top = 8
    object C1: TMenuItem
      Caption = 'Cadastros'
      object Usuarios1: TMenuItem
        Caption = 'Usuarios'
        OnClick = Usuarios1Click
      end
      object Cliente1: TMenuItem
        Caption = 'Cliente'
        OnClick = Cliente1Click
      end
      object ListarUsuarioseclientes: TMenuItem
        Caption = 'Listar Usuarios e Clientes'
        OnClick = ListarUsuarioseclientesClick
      end
    end
    object Salvar1: TMenuItem
      Caption = 'Salvar'
      OnClick = Salvar1Click
    end
    object CEP1: TMenuItem
      Caption = 'CEP'
      OnClick = CEP1Click
    end
  end
  object DataSourceUsuario: TDataSource
    DataSet = ClientDataSetUsuario
    Left = 584
    Top = 8
  end
  object ClientDataSetUsuario: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    Left = 720
    Top = 8
    object ClientDataSetUsuarioid: TIntegerField
      FieldName = 'Id'
    end
    object ClientDataSetUsuarioLogin: TStringField
      FieldName = 'Login'
    end
    object ClientDataSetUsuarioSenha: TStringField
      FieldName = 'Senha'
    end
    object ClientDataSetUsuarioSetor: TIntegerField
      FieldName = 'Setor'
    end
    object ClientDataSetUsuarioPermissao: TIntegerField
      FieldName = 'Permissao'
    end
  end
  object DataSourceCliente: TDataSource
    DataSet = ClientDataSetCliente
    Left = 584
    Top = 80
  end
  object ClientDataSetCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 720
    Top = 80
    object ClientDataSetClienteid: TIntegerField
      FieldName = 'id'
    end
    object ClientDataSetClienteUsuario: TIntegerField
      FieldName = 'Usuario'
    end
    object ClientDataSetClienteNome: TStringField
      FieldName = 'Nome'
    end
    object ClientDataSetClientesexo: TIntegerField
      FieldName = 'sexo'
    end
    object ClientDataSetClienteRG: TStringField
      FieldName = 'RG'
    end
    object ClientDataSetClienteCPF: TStringField
      FieldName = 'CPF'
    end
    object ClientDataSetClienteEmail: TStringField
      FieldName = 'Email'
    end
    object ClientDataSetClienteNascimento: TStringField
      FieldName = 'Nascimento'
    end
    object ClientDataSetClienteCidade: TStringField
      FieldName = 'Cidade'
    end
    object ClientDataSetClienteUf: TStringField
      FieldName = 'Uf'
    end
    object ClientDataSetClienteTelefone: TStringField
      FieldName = 'Telefone'
    end
    object ClientDataSetClienteRua: TStringField
      FieldName = 'Rua'
    end
    object ClientDataSetClienteNumero: TStringField
      FieldName = 'Numero'
    end
    object ClientDataSetClienteComplemento: TStringField
      FieldName = 'Complemento'
    end
    object ClientDataSetClienteBairro: TStringField
      FieldName = 'Bairro'
    end
  end
end
