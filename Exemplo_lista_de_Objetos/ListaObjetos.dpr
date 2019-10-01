program ListaObjetos;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {frmCadastroCliente},
  Cliente in 'Cliente.pas',
  ListaCliente in 'ListaCliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  Application.Run;
end.
