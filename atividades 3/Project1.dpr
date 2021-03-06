program Project1;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FPrincipal},
  Cliente in 'Cliente.pas' {FCliente},
  ClassCliente in 'ClassCliente.pas',
  PAIMDIFILHO in 'PAIMDIFILHO.pas' {FPAIMDIFILHO},
  ParametrosConexao in 'ParametrosConexao.pas',
  dmBanco in 'dmBanco.pas' {FdmBanco: TDataModule},
  Cliente2 in 'Cliente2.pas' {FclienteSegundo},
  ListarClientes in 'ListarClientes.pas' {FListarClientes},
  ExemploColecao in 'ExemploColecao.pas' {FColecao},
  uVenda in 'uVenda.pas',
  ExemploColecaoItem in 'ExemploColecaoItem.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFdmBanco, FdmBanco);
  Application.Run;
end.
