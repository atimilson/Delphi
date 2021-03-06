unit Correios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.StdCtrls, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL;

type
  TFCorreios = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Button1: TButton;
    IdHTTP1: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCorreios: TFCorreios;

implementation

{$R *.dfm}

procedure TFCorreios.Button1Click(Sender: TObject);
var
   str:String;
begin
   Memo1.Lines.Clear;
   str := IdHTTP1.Get('https://viacep.com.br/ws/'+Edit1.Text+'/json/');
   Memo1.Lines.Add(str);
end;

end.
