program Project2;

uses
  Vcl.Forms,
  principal in 'principal.pas' {Form1},
  teste in 'teste.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
