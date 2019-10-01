unit ExemploColecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, PAIMDIFILHO;

type
  TFColecao = class(TFPAIMDIFILHO)
    Edit1: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FColecao: TFColecao;

implementation

{$R *.dfm}

end.
