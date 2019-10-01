unit PAIMDIFILHO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFPAIMDIFILHO = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPAIMDIFILHO: TFPAIMDIFILHO;

implementation

{$R *.dfm}

procedure TFPAIMDIFILHO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

end.
