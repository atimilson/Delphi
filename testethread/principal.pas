unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, teste;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure escreverArquivoDeTexto(const dirArquivo: string;
  linhasAImprimir: integer);

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure escreverArquivoDeTexto(const dirArquivo: string;
  linhasAImprimir: integer);
var
  linhasArquivoTexto : TStringList;
  I: Integer;
begin
  linhasArquivoTexto := TStringList.Create;
  try
    for I := 1 to linhasAImprimir do
    begin
      linhasArquivoTexto.Add(format('Linha numero %d',[i]));
      Sleep(1);
    end;
    linhasArquivoTexto.SaveToFile(Format('%s\%s_total_linhas_%d.txt',[dirArquivo,FormatDateTime('hh-mm-ss-zzz',Now),linhasAImprimir]));
  finally
    linhasArquivoTexto.Free;
  end;
end;





procedure TForm1.FormCreate(Sender: TObject);
var
  oArquivoTextoInThread1 : TArquivoTextoInThread;
  oArquivoTextoInThread2 : TArquivoTextoInThread;
  oArquivoTextoInThread3 : TArquivoTextoInThread;
begin
   oArquivoTextoInThread1 := TArquivoTextoInThread.Create(false,20,ExtractFilePath(ParamStr(0)));
   oArquivoTextoInThread2 := TArquivoTextoInThread.Create(false,30,ExtractFilePath(ParamStr(0)));
   oArquivoTextoInThread3 := TArquivoTextoInThread.Create(false,40,ExtractFilePath(ParamStr(0)));




end;




end.
