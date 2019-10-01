program Cadastros;

uses
  Vcl.Forms,
  SistemaCadastro in 'SistemaCadastro.pas' {Form1},
  usuarios in 'usuarios.pas' {Form2},
  PAIMDICHILD in 'PAIMDICHILD.pas' {FPAIMDICHILD},
  Login in 'Login.pas' {TFLogin},
  Clientes in 'Clientes.pas' {FClientes},
  Comum in 'Comum.pas',
  logicaCliente in 'logicaCliente.pas',
  Validacoes in 'Validacoes.pas',
  Correios in 'Correios.pas' {FCorreios},
  ListaUsuarioEClientes in 'ListaUsuarioEClientes.pas' {FUsuariosClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  //Application.CreateForm(TFCorreios, FCorreios);
  //Application.CreateForm(TFUsuariosClientes, FUsuariosClientes);
  Application.Run;
end.
