unit Principal;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Cliente, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Bde.DBTables, dmBanco, Cliente2, ExemploColecao,
  Vcl.ComCtrls;

type
  TFPrincipal = class(TForm)

    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    menuUsuarios: TMenuItem;
    menuCliente: TMenuItem;
    Query1: TQuery;
    DataSource1: TDataSource;
    Database1: TDatabase;
    ClienteSegundo1: TMenuItem;
    Button1: TButton;
    StatusBar1: TStatusBar;
    procedure menuClienteClick(Sender: TObject);
    procedure ClienteSegundo1Click(Sender: TObject);
    procedure menuUsuariosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;
  formCliente : TFCliente;
  formColecao : TFColecao;
  banco : TFdmBanco;
  formClente2 : TFclienteSegundo;

implementation

uses
  Winapi.Windows;

{$R *.dfm}

procedure TFPrincipal.ClienteSegundo1Click(Sender: TObject);
begin
   if not((Assigned(formClente2)) and (Assigned(formClente2.edtNomeCliente)))then
   begin
      formClente2 := TFclienteSegundo.Create(Self);
   end
   else
      formClente2.WindowState:= wsNormal;
end;

procedure TFPrincipal.menuClienteClick(Sender: TObject);
begin
   if not((Assigned(formCliente)) and (Assigned(formCliente.edtNomeCliente)))then
   begin
      formCliente := TFCliente.Create(Self);
   end
   else
      formCliente.WindowState:= wsNormal;
end;

procedure TFPrincipal.menuUsuariosClick(Sender: TObject);
begin
   if not((Assigned(formColecao)) and (Assigned(formColecao.Edit1)))then
   begin
      formColecao := TFColecao.Create(Self);
   end
   else
      formColecao.WindowState:= wsNormal;

end;

end.
