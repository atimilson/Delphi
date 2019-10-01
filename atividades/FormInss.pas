unit FormInss;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormIn = class(TForm)
    Edit3: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIn: TFormIn;

implementation

{$R *.dfm}

procedure TFormIn.Button1Click(Sender: TObject);
var
sal,des,aux: Double;
begin
   sal := StrToFloatDef(Edit1.Text,0);
   if (sal <= 600) then
   begin
      Edit2.Text:= 'Isento';
      Edit3.Text:= FloatToStr(sal);
   end
   else
   begin
      if (sal > 600) and (sal <= 1200) then
         des := (sal*20)/100
      else
      if (sal > 1200) and (sal <= 2000) then
         des := (sal*25)/100
      else
         des := (sal*30)/100;
      Edit2.Text := FloatToStr(des);
      Edit3.Text := FloatToStr(sal - des);
   end;
   Edit3.Enabled:= false;
/// -- OK
end;

procedure TFormIn.Button2Click(Sender: TObject);
begin
     Self.Close;
end;

end.
