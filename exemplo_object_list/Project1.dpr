program Project1;

uses
  Vcl.Forms,
  painelVendas in 'painelVendas.pas' {Form1},
  uItemVendas in 'uItemVendas.pas',
  uVendas in 'uVendas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVendas, frmVendas);
  Application.Run;
end.
