unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.TypInfo;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TValor<t> = class
  private
      Fvalor: T;
      FTipo: TTypeKind;
      function GetValor: T;
      procedure SetValor(const value: T);
      function GetTipo: TTypeKind;
  public
      procedure AfterConstruction; override;
      property Valor: T read GetValor write SetValor;
      property Tipo: TTypeKind read GetTipo;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
   valor : TValor<string>;
begin
   valor := TValor<string>.Create;
   valor.Valor := 'aqui o texto';



end;

{ TValor<t> }

procedure TValor<t>.AfterConstruction;
var
   Info: PTypeInfo;
begin
  inherited;
  Info := System.TypeInfo(T);
  if Info <> nil then
      FTipo :=  Info^.Kind;
  ShowMessage((FTipo));

end;

function TValor<t>.GetTipo: TTypeKind;
begin
      inherited;
   result := FTipo;
end;

function TValor<t>.GetValor: T;
begin
    result := FValor;
end;

procedure TValor<t>.SetValor(const value: T);
begin
   FValor := Value;
end;

end.
