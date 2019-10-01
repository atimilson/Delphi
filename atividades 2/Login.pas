unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask;

type
    TTFLogin = class(TForm)
    Edit2: TEdit;
    lblUser: TLabel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    cbbUsuario: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cbbUsuarioExit(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TFLogin: TTFLogin;

implementation

{$R *.dfm}



procedure TTFLogin.Button1Click(Sender: TObject);
begin
   ModalResult := mrYes;
end;

procedure TTFLogin.Button2Click(Sender: TObject);
begin
   ModalResult := mrClose;
end;

procedure TTFLogin.cbbUsuarioExit(Sender: TObject);
begin
   cbbUsuario.Text := UpperCase(cbbUsuario.Text);
end;

end.