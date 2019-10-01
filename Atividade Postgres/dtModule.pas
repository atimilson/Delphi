unit dtModule;

interface

uses
  System.SysUtils, System.Classes, uADStanIntf, uADPhysManager, uADPhysPG,
  Data.DB, Datasnap.DBClient, uADGUIxIntf, uADGUIxFormsWait, uADStanOption,
  uADStanError, uADPhysIntf, uADStanDef, uADStanPool, uADStanAsync,
  uADStanParam, uADDatSManager, uADDAptIntf, uADDAptManager, uADCompDataSet,
  uADCompClient, uADCompGUIx, uADPhysODBCBase, uADPhysASA;

type
  TDataModule1 = class(TDataModule)
    Cds: TClientDataSet;
    ADPhysPgDriverLink1: TADPhysPgDriverLink;
    ADGUIxWaitCursor1: TADGUIxWaitCursor;
    ADConnectionPg: TADConnection;
    ADQuery1: TADQuery;
    ADConnectionSybase: TADConnection;
    ADPhysASADriverLink1: TADPhysASADriverLink;
    DataSource1: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
    // ADConnection1.Connected := true;
end;

end.
