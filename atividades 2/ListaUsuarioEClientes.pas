unit ListaUsuarioEClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAIMDICHILD, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFUsuariosClientes = class(TFPAIMDICHILD)
    DBGridListaUsuario: TDBGrid;
    DBGridListaCliente: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    procedure DBGridListaUsuarioDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuariosClientes: TFUsuariosClientes;

implementation

{$R *.dfm}

procedure TFUsuariosClientes.DBGridListaUsuarioDblClick(Sender: TObject);
var
   id : integer;
begin
  inherited;

  id := DBGridListaUsuario.DataSource.DataSet.FieldByName('id').AsInteger;
  DBGridListaCliente.DataSource.DataSet.Filter := 'usuario = '+ IntToStr(id);
  DBGridListaCliente.DataSource.DataSet.Filtered := true;
end;

procedure TFUsuariosClientes.FormShow(Sender: TObject);
begin
  inherited;
   DBGridListaCliente.DataSource := nil;
end;

end.
