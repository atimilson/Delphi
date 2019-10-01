unit medico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Pessoa, Vcl.Buttons;

type
  TForm3 = class(TForm)
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  Tmedico = class(Tpessoas)
   private
   FnumCrc :string;
   public
   property numCrc :string read FnumCrc write FnumCrc;
   procedure realizarConsulta;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

{ Tmedico }

procedure Tmedico.realizarConsulta;
var
   medico : Tmedico;
begin
// realiza consulta
   try
      medico := Tmedico.Create;

      medico.nome := 'Atimilson';
      medico.idade := 35;
      medico.cor := 'pardo';
      medico.FnumCrc := '123456789';
      medico.falar('fala alguma coisa');
      medico.andar;
   finally
      FreeAndNil(medico);
   end;
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
var
   medico : Tmedico;
begin
   medico.realizarConsulta;
end;

end.
