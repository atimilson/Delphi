object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 397
  Width = 640
  object Cds: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 104
    Top = 32
  end
  object ADPhysPgDriverLink1: TADPhysPgDriverLink
    Left = 512
    Top = 32
  end
  object ADGUIxWaitCursor1: TADGUIxWaitCursor
    Left = 416
    Top = 16
  end
  object ADConnectionPg: TADConnection
    Params.Strings = (
      'DriverID=PG')
    LoginPrompt = False
    Left = 504
    Top = 112
  end
  object ADQuery1: TADQuery
    Connection = ADConnectionPg
    SQL.Strings = (
      'select * from TBCLIENTE')
    Left = 416
    Top = 200
  end
  object ADConnectionSybase: TADConnection
    Params.Strings = (
      'DriverID=ASA')
    LoginPrompt = False
    Left = 304
    Top = 112
  end
  object ADPhysASADriverLink1: TADPhysASADriverLink
    Left = 304
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADQuery1
    Left = 48
    Top = 32
  end
end
