object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'Exemplo Banco'
  ClientHeight = 436
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 16
    Top = 8
    Width = 801
    Height = 409
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Inserir'
      object Label1: TLabel
        Left = 22
        Top = 23
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object edtInserir: TEdit
        Left = 22
        Top = 42
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object btnInserir: TButton
        Left = 169
        Top = 40
        Width = 75
        Height = 25
        Caption = 'Inserir'
        TabOrder = 1
        OnClick = btnInserirClick
      end
      object DBGridInserir: TDBGrid
        Left = 22
        Top = 86
        Width = 435
        Height = 120
        DataSource = DataSource1
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Editar'
      ImageIndex = 1
      object DBGridEditar: TDBGrid
        Left = 16
        Top = 96
        Width = 320
        Height = 120
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGridEditarCellClick
      end
      object btnEditar: TButton
        Left = 248
        Top = 48
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 1
        OnClick = btnEditarClick
      end
      object edtEditar: TEdit
        Left = 16
        Top = 50
        Width = 185
        Height = 21
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Excluir'
      ImageIndex = 2
      object edtApagar: TEdit
        Left = 32
        Top = 82
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object DBGridApagar: TDBGrid
        Left = 32
        Top = 128
        Width = 320
        Height = 120
        DataSource = DataSource1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGridApagarCellClick
      end
      object btnApagar: TButton
        Left = 264
        Top = 80
        Width = 75
        Height = 25
        Caption = 'Apagar'
        TabOrder = 2
        OnClick = btnApagarClick
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Pesquisa'
      ImageIndex = 3
      OnShow = TabSheet4Show
      object edtPesquisar: TEdit
        Left = 24
        Top = 115
        Width = 185
        Height = 21
        TabOrder = 0
      end
      object btnPesquisar: TButton
        Left = 248
        Top = 113
        Width = 75
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 1
        OnClick = btnPesquisarClick
      end
      object StringGridPesquisar: TStringGrid
        Left = 24
        Top = 147
        Width = 265
        Height = 139
        ColCount = 1
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        TabOrder = 2
      end
      object DBMemo1: TDBMemo
        Left = 576
        Top = 47
        Width = 185
        Height = 89
        TabOrder = 3
      end
      object DBComboBox1: TDBComboBox
        Left = 576
        Top = 11
        Width = 145
        Height = 21
        TabOrder = 4
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 376
        Top = 3
        Width = 185
        Height = 73
        Caption = 'DBRadioGroup1'
        ParentBackground = True
        TabOrder = 5
      end
      object DBGrid1: TDBGrid
        Left = 312
        Top = 147
        Width = 320
        Height = 139
        DataSource = DataSource1
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Visible = True
          end>
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 848
    Top = 8
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 888
    Top = 312
    object ClientDataSet1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ClientDataSet1nome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object ClientDataSet1descricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object Query: TADQuery
    Connection = Con
    SQL.Strings = (
      'Select * from usuarios')
    Left = 888
    Top = 376
  end
  object Con: TADConnection
    Params.Strings = (
      'User_Name=dba'
      'Password=123'
      'Server=BDINTESIG_ATIMILSON'
      'DriverID=ASA')
    Connected = True
    LoginPrompt = False
    Left = 880
    Top = 176
  end
  object ADGUIxWaitCursor1: TADGUIxWaitCursor
    Left = 888
    Top = 240
  end
  object ADPhysODBCDriverLink1: TADPhysODBCDriverLink
    Left = 880
    Top = 104
  end
  object ADPhysASADriverLink1: TADPhysASADriverLink
    Left = 880
    Top = 56
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = Query
    Left = 936
    Top = 168
  end
end
