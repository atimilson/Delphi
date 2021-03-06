unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Cliente, ListaCliente, StdCtrls, ExtCtrls
  ;

type
  TfrmCadastroCliente = class(TForm)
    btnAdicionar: TButton;
    btnRemover: TButton;
    btnContar: TButton;
    edtID: TEdit;
    edtNome: TEdit;
    edtCNPJ: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnContarClick(Sender: TObject);
  private
    { Private declarations }
    tempListaCliente : TListaCliente; // variavel para guardar a lista
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

procedure TfrmCadastroCliente.btnAdicionarClick(Sender: TObject);
var
   tempCliente : Tcliente;
begin
   tempCliente := Tcliente.Create;
   tempCliente.IDCliente := StrToInt(edtID.Text);
   tempCliente.Nome := edtNome.Text;
   tempCliente.CNPJ := edtCNPJ.Text;
   tempListaCliente.Adicionar(tempCliente);
end;

procedure TfrmCadastroCliente.btnContarClick(Sender: TObject);
begin
   ShowMessage('Total de registros da lista : ' + IntToStr(tempListaCliente.Count));
end;

procedure TfrmCadastroCliente.btnRemoverClick(Sender: TObject);
var
   temID: String;
begin
   if InputQuery('Remover Cliente','Digite o item a ser removido',temID) then
      tempListaCliente.Remover(StrToInt(temID));

end;

procedure TfrmCadastroCliente.FormCreate(Sender: TObject);
begin
   tempListaCliente := TListaCliente.Create;
end;

end.
