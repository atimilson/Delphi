unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, dxGDIPlusClasses,
  Vcl.ExtCtrls, Vcl.StdCtrls, CLIENTE;

type
  TForm1 = class(TForm)
    editCod: TLabeledEdit;
    edtNome: TLabeledEdit;
    edtIdade: TLabeledEdit;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
 pessoa : Tpessoa;
 idadeNova : Integer;
begin
   try
      pessoa := Tpessoa.Create;

      pessoa.codigo := StrToInt(editCod.Text);
      pessoa.nome := edtNome.Text;
      pessoa.idade := StrToInt(edtIdade.Text);

      idadeNova := pessoa.saberIdade(20);

      ShowMessage('Sua idade daqui a 20 anos  será '+IntToStr(idadeNova));
      ShowMessage('Codigo : '+ IntToStr(pessoa.codigo) +' nome : '+ pessoa.nome +' idade :'+ IntToStr(pessoa.Fidade));
   finally
      FreeAndNil(pessoa);
   end;

end;

end.
