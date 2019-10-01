program ExercicioPostgres;

uses
  Vcl.Forms,
  dtModule in 'dtModule.pas' {DataModule1: TDataModule},
  Principal in 'Principal.pas' {FormPrincipal},
  Cliente in 'Cliente.pas' {FormCliente},
  ClassDados in 'ClassDados.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
