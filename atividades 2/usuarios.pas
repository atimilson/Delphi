unit usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, PAIMDICHILD;

type
   TUsuario = CLASS
      private
      fId:integer;
      fLogin:String;
      fSenha:String;
      fSetor:Integer;
      fPermissao:Integer;
      function GetLogin: string;
      procedure SetLogin(const Value: string);
    function GetSenha: string;
    procedure SetSenha(const Value: string);
    function GetSetor: integer;
    procedure SetSetor(const Value: integer);
    function GetPermissao: integer;
    procedure SetPermissao(const Value: integer);
    function GetId: integer;
    procedure SetId(const Value: integer);
      //property RG       :String read FRG write SetRG;
      public
      property Id:integer read GetId write SetId;
      property Login:string read GetLogin write SetLogin;
      property Senha:string read GetSenha write SetSenha;
      property Setor:integer read GetSetor write SetSetor;
      property Permissao:integer read GetPermissao write SetPermissao;
   END;
  TForm2 = class(TFPAIMDICHILD)
    btnFechar: TButton;
    edtLogin: TEdit;
    edtSenha: TEdit;
    cbxSetor: TComboBox;
    cbxPermissao: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnCadastrar: TButton;
    DBGridUsuario: TDBGrid;
    edtPesquisa: TEdit;
    btnEditar: TButton;
    btnExcliur: TButton;
    btnPesquisar: TButton;
    cbxPesquisa: TComboBox;
    Label3: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure limpaCampos;
    Function ValidaUsuario(const fUsuario:TUsuario):Boolean;
    Function GravarUsuario(const fUsuario:TUsuario):Boolean;
    Function EditarUsuario(const fUsuario:TUsuario):Boolean;
    procedure edtLoginExit(Sender: TObject);
    procedure edtSenhaExit(Sender: TObject);
    procedure btnExcliurClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGridUsuarioDblClick(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  tEtse:TClientDataSet;


implementation

uses
  Validacoes, Comum;
{$R *.dfm}

procedure TForm2.btnCadastrarClick(Sender: TObject);
var
   fusuario:TUsuario;
begin
   fusuario := TUsuario.Create;
   try
      fusuario.Login     := edtLogin.Text;
      fusuario.Senha     := edtSenha.Text;
      fusuario.Setor     := cbxSetor.ItemIndex;
      fusuario.Permissao := cbxPermissao.ItemIndex;
      GravarUsuario(fusuario);
      if(edtLogin.CanFocus)then
         edtLogin.SetFocus;
   finally
      fusuario.Free;
   end;
end;

procedure TForm2.btnFecharClick(Sender: TObject);
begin
   Self.close;
end;

procedure TForm2.btnPesquisarClick(Sender: TObject);
var
   pesquisa: string;
begin
   case cbxPesquisa.ItemIndex of
      0: pesquisa := 'id';
      1: pesquisa := 'login';
      2: pesquisa := 'senha';
      3: pesquisa := 'setor';
      4: pesquisa := 'permissao';
   end;
   if (DBGridUsuario.DataSource.DataSet.Locate(pesquisa,edtPesquisa.Text,[loCaseInsensitive])) then
   begin
      edtLogin.Text := DBGridUsuario.DataSource.DataSet.FieldByName('login').AsString;
      edtSenha.Text := DBGridUsuario.DataSource.DataSet.FieldByName('senha').AsString;
      cbxSetor.ItemIndex := DBGridUsuario.DataSource.DataSet.FieldByName('setor').AsInteger;
      cbxPermissao.ItemIndex := DBGridUsuario.DataSource.DataSet.FieldByName('permissao').AsInteger;
   end
   else
      ShowMessage('Usuario n�o encontrado!');
end;

procedure TForm2.DBGridUsuarioDblClick(Sender: TObject);
begin
  inherited;
  edtLogin.Text :=  DBGridUsuario.DataSource.DataSet.FieldByName('login').AsString;
  edtSenha.Text :=  DBGridUsuario.DataSource.DataSet.FieldByName('senha').AsString;
  cbxSetor.ItemIndex := DBGridUsuario.DataSource.DataSet.FieldByName('setor').AsInteger;
  cbxPermissao.ItemIndex := DBGridUsuario.DataSource.DataSet.FieldByName('permissao').AsInteger;
end;

function TForm2.EditarUsuario(const fUsuario: TUsuario): Boolean;
begin
   Result := false;
   if ValidaUsuario(fUsuario) then
   begin
      DBGridUsuario.DataSource.DataSet.Edit;
      DBGridUsuario.DataSource.DataSet.FieldByName('login').AsString := fUsuario.Login;
      DBGridUsuario.DataSource.DataSet.FieldByName('senha').AsString := fUsuario.Senha;
      DBGridUsuario.DataSource.DataSet.FieldByName('setor').AsInteger := fUsuario.Setor;
      DBGridUsuario.DataSource.DataSet.FieldByName('permissao').AsInteger := fUsuario.Permissao;
      DBGridUsuario.DataSource.DataSet.Post;
      limpaCampos;
      Result := true;
   end
   else
      ShowMessage('Existem Campos Vazios');
end;

procedure TForm2.edtLoginExit(Sender: TObject);
begin
   if(Trim(edtLogin.Text) <> '')then
   begin
      edtLogin.Text := soLetras(edtLogin.Text);
      if(Length(Trim(edtLogin.Text))< 5)then
      begin
         ShowMessage('Nome est� Curto preencha somente com letras!');
         if(edtLogin.CanFocus)then
            edtLogin.SetFocus;
      end;
   end;
end;

procedure TForm2.edtSenhaExit(Sender: TObject);
begin
    if(Trim(edtSenha.Text) <> '')then
   begin
      edtSenha.Text := SoNumeros(edtSenha.Text);
      if(Length(Trim(edtSenha.Text))< 3)then
      begin
         ShowMessage('Senha est� Curta preencha somente com numeros!');
         if(edtLogin.CanFocus)then
            edtLogin.SetFocus;
      end;
   end;
end;

function TForm2.GravarUsuario(const fUsuario: TUsuario): Boolean;
var
 id: integer;
begin
   if ValidaUsuario(fUsuario) then
   begin
      DBGridUsuario.DataSource.DataSet.Last;
      id := DBGridUsuario.DataSource.DataSet.FieldByName('Id').AsInteger + 1;

      DBGridUsuario.DataSource.DataSet.Append;
      DBGridUsuario.DataSource.DataSet.FieldByName('id').AsInteger := id;
      DBGridUsuario.DataSource.DataSet.FieldByName('login').AsString := fUsuario.Login;
      DBGridUsuario.DataSource.DataSet.FieldByName('senha').AsString := fUsuario.Senha;
      DBGridUsuario.DataSource.DataSet.FieldByName('setor').AsInteger := fUsuario.Setor;
      DBGridUsuario.DataSource.DataSet.FieldByName('permissao').AsInteger := fUsuario.Permissao;
      DBGridUsuario.DataSource.DataSet.Post;
      if DBGridUsuario.DataSource.DataSet.RecordCount = 1 then
      begin
         // StatusBar1.Panels[1].Text := ParametroNomeUser;
         ParametroIdUser := IntToStr(DBGridUsuario.DataSource.DataSet.FieldByName('id').AsInteger);
         ParametroNomeUser := DBGridUsuario.DataSource.DataSet.FieldByName('login').AsString;
      end;
      limpaCampos;
   end
   else
      ShowMessage('Existem Campos Vazios');
end;

procedure TForm2.btnEditarClick(Sender: TObject);
var
   fusuario:TUsuario;
   teste: string;
begin
   fusuario := TUsuario.Create;
   try
    // DBGridUsuario.DataSource.DataSet.RecNo;
    //  teste := DBGridUsuario.DataSource.DataSet.OnNewRecord();
      fusuario.Login     := edtLogin.Text;
      fusuario.Senha     := edtSenha.Text;
      fusuario.Setor     := cbxSetor.ItemIndex;
      fusuario.Permissao := cbxPermissao.ItemIndex;
      EditarUsuario(fusuario);
      if(edtLogin.CanFocus)then
         edtLogin.SetFocus;
   finally
      fusuario.Free;
   end;
end;

procedure TForm2.btnExcliurClick(Sender: TObject);
begin
   if (not DBGridUsuario.DataSource.DataSet.IsEmpty) then
   begin
      TClientDataSet(DBGridUsuario.DataSource.DataSet).Delete;
     // TClientDataSet(DBGridUsuario.DataSource.DataSet).ApplyUpdates(0);
   end;
   limpaCampos;
end;

function TForm2.ValidaUsuario(const fUsuario: TUsuario): Boolean;
begin
   result := true;
   if (fUsuario.Login = '') or (fUsuario.Senha = '') then
      Result := false;
end;

procedure TForm2.limpaCampos;
begin
   edtLogin.Clear;
   edtSenha.Clear;
   cbxSetor.ItemIndex := 0;
   cbxPermissao.ItemIndex := 0;
end;
{ TUsuatio }
 /// Get e Set

function TUsuario.GetId: integer;
begin
   Result := fId;
end;

procedure TUsuario.SetId(const Value: integer);
begin
   fId := Value;
end;

function TUsuario.GetLogin: string;
begin
   result := UpperCase(FLogin);
end;

procedure TUsuario.SetLogin(const Value: string);
begin
   FLogin := UpperCase(Value);
end;

procedure TUsuario.SetSenha(const Value: string);
begin
   fSenha := UpperCase(Value);
end;

function TUsuario.GetSenha: string;
begin
   result := Trim(UpperCase(fSenha));
end;

function TUsuario.GetSetor: integer;
begin
   Result := fSetor;
end;

procedure TUsuario.SetSetor(const Value: integer);
begin
   fSetor := Value;
end;

procedure TUsuario.SetPermissao(const Value: integer);
begin
    fPermissao :=  Value;
end;

function TUsuario.GetPermissao: integer;
begin
    result := fPermissao;
end;
 // fim get e set
end.
