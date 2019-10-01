unit dmBanco;

interface

uses
  System.SysUtils, System.Classes, uADStanIntf, uADStanOption, uADStanError,
  uADGUIxIntf, uADPhysIntf, uADStanDef, uADStanPool, uADStanAsync,
  uADPhysManager, uADGUIxFormsWait, uADStanParam, uADDatSManager, uADDAptIntf,
  uADDAptManager, uADCompDataSet, uADCompClient, uADCompGUIx, Datasnap.Provider,
  Data.DB, uADPhysODBCBase, uADPhysASA, Datasnap.DBClient;

type
  TFdmBanco = class(TDataModule)
    con: TADConnection;
    cdsCliente: TClientDataSet;
    ADPhysASADriverLink1: TADPhysASADriverLink;
    DataSourceCliente: TDataSource;
    DataSetProvider: TDataSetProvider;
    ADGUIxWaitCursor1: TADGUIxWaitCursor;
    Query: TADQuery;
    ADMemTable1: TADMemTable;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FdmBanco: TFdmBanco;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}



end.
