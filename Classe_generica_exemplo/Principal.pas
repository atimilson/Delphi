unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  Tvalor<t> = class
   Valor: T;
   public
   procedure teste;
  end;

var
  Form1: TForm1;
  oTexto : Tvalor<string>;

implementation

{$R *.dfm}

{ Tvalor<t> }

procedure Tvalor<t>.teste;
begin
     oTexto := Tvalor<string>.Create;
     oTexto.Valor := 'isto � um teste';
end;

procedure TForm1.Button1Click(Sender: TObject);
var
 oi : Tvalor<integer>;
begin
   oTexto.teste;
   ShowMessage(oTexto.Valor);
   oTexto.Destroy;
   oTexto := nil;
   oi := Tvalor<Integer>.Create;
   oi.Valor := 10;
   ShowMessage(IntToStr(oi.Valor));


end;

end.
