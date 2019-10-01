unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.StdCtrls, Cliente, dtModule, IniFiles, Parametro_Conexao;

type
  TFormPrincipal = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;
  dtmPrincipal : TDataModule1;

implementation

{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
var
   arquivoIni : TIniFile;
   mensagem : string;

begin
    if (Parametro_Conexao.ConfiguraBanco(1)) then
    begin
       ShowMessage('ok');
    end;
       ShowMessage('errou');

end;

procedure TFormPrincipal.Image1Click(Sender: TObject);
begin
   if not((Assigned(FormCliente)) and (Assigned(FormCliente.edtIdentificacao)))then
   begin
      FormCliente := TFormCliente.Create(Self);
   end
   else
      FormCliente.WindowState:= wsNormal;
end;

end.
