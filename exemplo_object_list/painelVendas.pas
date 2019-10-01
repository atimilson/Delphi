unit painelVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uVendas,
  uItemVendas;

type
  TfrmVendas = class(TForm)
    btnCadastrar: TButton;
    btnListar: TButton;
    Panel1: TPanel;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Venda : Tvendas;
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;

implementation

{$R *.dfm}

procedure TfrmVendas.btnCadastrarClick(Sender: TObject);
begin
   Venda.IDVenda := 1;
   Venda.Data := Now;

   Venda.ListaVendaItem.Clear;
   Memo1.Clear;

   Venda.AdicionarVendaItem('Sony Vaio XR8472');
   Venda.AdicionarVendaItem('Dell Vostro');
   Venda.AdicionarVendaItem('HP I7');
   Venda.AdicionarVendaItem('chinelo');
   Venda.AdicionarVendaItem('televisão');
   Venda.AdicionarVendaItem('computador');
   btnListar.Enabled := True;
   btnCadastrar.Enabled := False;

end;

procedure TfrmVendas.btnListarClick(Sender: TObject);
var
   VendaItem: TVendaItem;
begin
   Memo1.Lines.Add('IDVenda :'+ IntToStr(Venda.IDVenda));
   Memo1.Lines.Add('Data: ' + FormatDateTime('dd/mm/yyyy', Venda.Data));

  Memo1.Lines.Add('');
  Memo1.Lines.Add('<<Lista de produtos>>');

  for VendaItem in Venda.ListaVendaItem do
     Memo1.Lines.Add('Produto : '+ VendaItem.Produto);

  btnListar.Enabled := False;
  btnCadastrar.Enabled := True;

end;

procedure TfrmVendas.FormCreate(Sender: TObject);
begin
     Venda := Tvendas.Create;
     btnListar.Enabled := False;

end;

procedure TfrmVendas.FormDestroy(Sender: TObject);
begin
   FreeAndNil(Venda);
end;

end.
