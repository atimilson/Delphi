object FdmBanco: TFdmBanco
  OldCreateOrder = False
  Height = 337
  Width = 455
  object con: TADConnection
    Params.Strings = (
      'User_Name=dba'
      'Password=123'
      'Server=BDINTESIG_ATIMILSON'
      'DriverID=ASA')
    LoginPrompt = False
    Left = 360
    Top = 72
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider'
    Left = 40
    Top = 32
  end
  object ADPhysASADriverLink1: TADPhysASADriverLink
    Left = 360
    Top = 16
  end
  object DataSourceCliente: TDataSource
    DataSet = cdsCliente
    Left = 120
    Top = 32
  end
  object DataSetProvider: TDataSetProvider
    DataSet = Query
    Left = 208
    Top = 32
  end
  object ADGUIxWaitCursor1: TADGUIxWaitCursor
    Left = 360
    Top = 128
  end
  object Query: TADQuery
    Connection = con
    Left = 360
    Top = 184
  end
  object ADMemTable1: TADMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 360
    Top = 248
  end
end
