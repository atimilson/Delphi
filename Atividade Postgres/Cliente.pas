unit Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, ClassDados;

type
  TFormCliente = class(TForm)
    Label6: TLabel;
    edtIdentificacao: TEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    edtCidade: TEdit;
    edtEmail: TEdit;
    edtNomeCliente: TEdit;
    RadioSexo: TRadioGroup;
    edtRg: TEdit;
    edtCPF: TEdit;
    edtMNascimento: TEdit;
    edtTelefone: TEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    edtRua: TEdit;
    edtComplemento: TEdit;
    edtBairro: TEdit;
    edtNumero: TEdit;
    GroupBox1: TGroupBox;
    btSalvar: TButton;
    btExcluir: TButton;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCliente: TFormCliente;

implementation

{$R *.dfm}

procedure TFormCliente.btSalvarClick(Sender: TObject);
var
   dados : TDados;
begin
   dados := TDados.Create;

   try
      dados.Id := StrToInt(edtIdentificacao.Text);
      dados.Nome := edtNomeCliente.Text;
      dados.Rg := edtRg.Text;
      dados.Cpf := edtCPF.Text;
      dados.Nascimento := edtMNascimento.Text;
      dados.Email := edtEmail.Text;
      dados.Cidade := edtCidade.Text;
      dados.Rua := edtRua.Text;
      dados.Numero := edtNumero.Text;


   except on E: Exception do
      ShowMessage('ocorreu um erro : '+ ToString(E));

   end;




end;

procedure TFormCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;

end.
