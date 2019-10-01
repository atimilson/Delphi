unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uADStanIntf, uADStanOption,
  uADStanParam, uADStanError, uADDatSManager, uADPhysIntf, uADDAptIntf,
  uADStanAsync, uADDAptManager, uADGUIxIntf, uADStanDef, uADStanPool,
  uADPhysManager, uADGUIxFormsWait, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ComCtrls, uADPhysASA, uADPhysODBCBase, uADPhysODBC, uADCompGUIx, Data.DB,
  uADCompClient, uADCompDataSet, Datasnap.DBClient, Vcl.DBCtrls, Vcl.ExtCtrls,
  Datasnap.Provider;

type
  TFPrincipal = class(TForm)
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    Query: TADQuery;
    Con: TADConnection;
    ADGUIxWaitCursor1: TADGUIxWaitCursor;
    ADPhysODBCDriverLink1: TADPhysODBCDriverLink;
    ADPhysASADriverLink1: TADPhysASADriverLink;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    btnInserir: TButton;
    DBGridInserir: TDBGrid;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGridEditar: TDBGrid;
    btnEditar: TButton;
    edtEditar: TEdit;
    edtApagar: TEdit;
    DBGridApagar: TDBGrid;
    btnApagar: TButton;
    TabSheet4: TTabSheet;
    edtPesquisar: TEdit;
    btnPesquisar: TButton;
    StringGridPesquisar: TStringGrid;
    edtInserir: TEdit;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    DBRadioGroup1: TDBRadioGroup;
    DBGrid1: TDBGrid;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1id: TAutoIncField;
    ClientDataSet1nome: TStringField;
    ClientDataSet1descricao: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGridEditarCellClick(Column: TColumn);
    procedure btnEditarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure DBGridApagarCellClick(Column: TColumn);
    procedure TabSheet4Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;
  id_publico : integer;

implementation

{$R *.dfm}

procedure TFPrincipal.btnApagarClick(Sender: TObject);
begin
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('delete usuarios where id = :ID');
   Query.ParamByName('ID').AsInteger := id_publico;
   Query.ExecSQL;
end;

procedure TFPrincipal.btnEditarClick(Sender: TObject);
begin
   Query.SQL.Clear;
   Query.Close;
   Query.SQL.Add('Update usuarios set nome = :NOME where id = :ID');
   Query.ParamByName('NOME').AsString := edtEditar.Text;
   Query.ParamByName('ID').AsInteger := id_publico;
   Query.ExecSQL;
   Query.SQL.Clear;
   Query.SQL.Add('Select * from usuarios');
   Query.Open;

end;

procedure TFPrincipal.btnInserirClick(Sender: TObject);
begin
   Query.Close;
   Query.SQL.Clear;
  // nome := edtInserir.Text;
   Query.SQL.Add('insert into usuarios(ID, NOME,DESCRICAO) values (default,:NOME,''Teste'')');
   Query.ParamByName('NOME').AsString := edtInserir.Text;
   Query.ExecSQL;
end;

procedure TFPrincipal.btnPesquisarClick(Sender: TObject);
var
   I,j,f: integer;
begin
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add('Select * from usuarios');
   ClientDataSet1.close;
   //Query.Open;
   ClientDataSet1.Open;
   for I := 1 to ClientDataSet1.RecordCount do
   begin
      if (StringGridPesquisar.Cells[0,I] = '') then
         StringGridPesquisar.RowCount := StringGridPesquisar.RowCount + 1;
      for j := 0 to ClientDataSet1.FieldCount -1  do
         StringGridPesquisar.Cells[J, StringGridPesquisar.RowCount - 1] := ClientDataSet1.Fields[j].AsString;
      ClientDataSet1.Next;
   end;
end;

procedure TFPrincipal.DBGridApagarCellClick(Column: TColumn);
begin
   edtApagar.Text := DBGridEditar.DataSource.DataSet.FieldByName('nome').AsString;
   id_publico := DBGridEditar.DataSource.DataSet.FieldByName('id').AsInteger;
end;

procedure TFPrincipal.DBGridEditarCellClick(Column: TColumn);
begin
   edtEditar.Text := DBGridEditar.DataSource.DataSet.FieldByName('nome').AsString;
   id_publico := DBGridEditar.DataSource.DataSet.FieldByName('id').AsInteger;
end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
   try
      Con.Connected := true;
      ShowMessage('Conectado');
     // Query.SQL.Clear;
     // Query.SQL.Add('Select * from usuarios');
     // Query.Open;
   except on E: Exception do
      ShowMessage('N�o conectado'+E.Message);
   end;

end;

procedure TFPrincipal.TabSheet4Show(Sender: TObject);
var
I : integer;
begin
   Query.SQL.Clear;
   Query.Close;
   Query.SQL.Add('Select * from usuarios where 1=2');
   ClientDataSet1.Open;
   //Query.Open;
   StringGridPesquisar.ColCount := ClientDataSet1.FieldCount;
   for I := 0 to ClientDataSet1.FieldCount -1 do
      StringGridPesquisar.Cells[I,0] := ClientDataSet1.Fields[I].FieldName;
end;

end.
