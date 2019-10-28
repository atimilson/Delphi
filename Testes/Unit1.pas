unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
   f: TForm;
   msg : TLabel;
   borda : TShape;
begin
   f := TForm.Create(Application);
   f.BorderStyle := bsNone;
   f.Position := poDesktopCenter;
   f.Width := 130;
   f.Height := 20;

   borda := TShape.Create(Application);
   borda.Parent := f;
   borda.Align := alClient;

   msg := TLabel.Create(Application);
   msg.Parent := f;
   msg.Transparent := True;
   msg.AutoSize := False;
   msg.Width := 128;
   msg.Caption := 'Aguarde';
   msg.Alignment := taCenter;

   f.Show;
   f.Update;

   Sleep(5000);

   f.Free;

end;

end.
