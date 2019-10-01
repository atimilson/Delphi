unit Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls,PAIMDICHILD,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Comum, System.MaskUtils;

type
   Tcliente = Class
      private
         fId            : integer;
         fUsuario       : integer;
         fNome          : string;
         fSexo          : integer;
         fRg            : string;
         fCpf           : string;
         fEmail         : string;
         fNascimento    : string;
         fCidade        : string;
         fUf            : string;
         fTelefone      : string;
         fRua           : string;
         fNumero        : string;
         fComplemento   : string;
         fBairro        : string;
    function GetId: integer;
    procedure SetId(const Value: integer);
    function GetUsuario: integer;
    procedure SetUsuario(const Value: integer);
    procedure SetNome(const Value: String);
    function GetNome: String;

    function GetCpf: string;
    function GetEmail: string;
    function GetRg: string;
    procedure SetCpf(const Value: string);
    procedure SetEmail(const Value: string);
    procedure SetRg(const Value: string);
    procedure SetSexo(const Value: integer);
    function GetCidade: string;
    function GetNascimento: string;
    function GetUf: string;
    function GetNumero: string;
    procedure SetCidade(const Value: string);
    procedure SetNascimento(const Value: string);
    procedure SetUf(const Value: string);
    procedure SetBairro(const Value: string);
    procedure SetComplemento(const Value: string);
    procedure SetNumero(const Value: string);
    procedure SetRua(const Value: string);
    function GetTelefone: string;
    procedure SetTelefone(const Value: string);
      public
         property Id:integer read GetId write SetId;
         property Usuario:integer read GetUsuario write SetUsuario;
         property Nome:String read GetNome write SetNome;
         property Sexo:integer read FSexo write SetSexo;
         property Rg:string read GetRg write SetRg;
         property Cpf:string read GetCpf write SetCpf;
         property Email:string read GetEmail write SetEmail;
         property Nascimento:string read GetNascimento write SetNascimento;
         property Cidade:string read GetCidade write SetCidade;
         property UF:string read GetUF write SetUF;
         property Telefone:string read GetTelefone write SetTelefone;
         property Rua:string read FRua write SetRua;
         property Numero:string read GetNumero write SetNumero;
         property Complemento:string read FComplemento write SetComplemento;
         property Bairro:string read FBairro write SetBairro;


   End;


  TFClientes = class(TFPAIMDICHILD)
    btnCadastraCliente: TButton;
    DBGridClientes: TDBGrid;
    btnEditaCliente: TButton;
    btnExcluirCliente: TButton;
    edtPesquisaCliente: TEdit;
    cbxPesquisaCliente: TComboBox;
    btnPesquisaCliente: TButton;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    edtRua: TEdit;
    Label11: TLabel;
    edtComplemento: TEdit;
    Label12: TLabel;
    edtBairro: TEdit;
    Label10: TLabel;
    edtNumero: TEdit;
    GroupBox2: TGroupBox;
    Label15: TLabel;
    Label5: TLabel;
    edtCidade: TEdit;
    Label7: TLabel;
    Label14: TLabel;
    edtUf: TEdit;
    Label8: TLabel;
    edtEmail: TEdit;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNomeCliente: TEdit;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    edtUsuario: TEdit;
    edtRg: TEdit;
    edtCPF: TEdit;
    edtMNascimento: TEdit;
    edtTelefone: TEdit;
    btnCancelar: TButton;
    procedure btnCadastraClienteClick(Sender: TObject);
    procedure limpaCampos;
    function GravarUsuarios(const fCliente:Tcliente):Boolean;
    function EditarUsuarios(const fCliente:Tcliente):Boolean;
    function ValidaUsuarios(const fCliente:Tcliente):Boolean;
    procedure edtNomeClienteExit(Sender: TObject);
    procedure btnEditaClienteClick(Sender: TObject);
    procedure DBGridClientesDblClick(Sender: TObject);
    procedure edtCPFExit(Sender: TObject);
    procedure edtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluirClienteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCPFEnter(Sender: TObject);
    procedure edtMNascimentoExit(Sender: TObject);
    procedure edtMNascimentoEnter(Sender: TObject);
    procedure edtTelefoneExit(Sender: TObject);
    procedure btnPesquisaClienteClick(Sender: TObject);
    procedure edtTelefoneEnter(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure bloquearBotoesEditaEExcluir;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FClientes: TFClientes;

implementation

uses
  Validacoes, Data.DB;

{$R *.dfm}

procedure TFClientes.bloquearBotoesEditaEExcluir;
begin
   btnCadastraCliente.Enabled := true;
   btnEditaCliente.Enabled := false;
   btnExcluirCliente.Enabled := false;
   DBGridClientes.Enabled := true;
   btnPesquisaCliente.Enabled := true;
   DBGridClientes.DataSource.DataSet.Filter := 'usuario = '+ Comum.ParametroIdUser;
   DBGridClientes.DataSource.DataSet.Filtered := true;
   edtUsuario.Visible := true;
   Label15.Visible := true;
end;

procedure TFClientes.btnCadastraClienteClick(Sender: TObject);
var
   fCliente :  Tcliente;
begin
   fCliente := Tcliente.Create;
   try
      fCliente.Nome        := edtNomeCliente.Text;
      fCliente.Usuario     := StrToInt(Comum.ParametroIdUser);
      fCliente.Sexo        := RadioGroup1.ItemIndex;
      fCliente.Rg          := edtRg.Text;
      fCliente.Cpf         := edtCPF.Text;
      fCliente.Email       := edtEmail.Text;
      fCliente.Nascimento  := edtMNascimento.Text;
      fCliente.Cidade      := edtCidade.Text;
      fCliente.UF          := edtUf.Text;
      fCliente.Telefone    := edtTelefone.Text;
      fCliente.Rua         := edtRua.Text;
      fCliente.Numero      := edtNumero.Text;
      fCliente.Complemento := edtComplemento.Text;
      fCliente.Bairro      := edtBairro.Text;
      GravarUsuarios(fCliente);
   finally
      fCliente.Free;
   end;
end;

procedure TFClientes.btnEditaClienteClick(Sender: TObject);
var
   fCliente :  Tcliente;
begin
   fCliente := Tcliente.Create;
   try
      fCliente.Nome        := edtNomeCliente.Text;
      fCliente.Sexo        := RadioGroup1.ItemIndex;
      fCliente.Rg          := edtRg.Text;
      fCliente.Cpf         := edtCPF.Text;
      fCliente.Email       := edtEmail.Text;
      fCliente.Nascimento  := edtMNascimento.Text;
      fCliente.Cidade      := edtCidade.Text;
      fCliente.UF          := edtUf.Text;
      fCliente.Telefone    := edtTelefone.Text;
      fCliente.Rua         := edtRua.Text;
      fCliente.Numero      := edtNumero.Text;
      fCliente.Complemento := edtComplemento.Text;
      fCliente.Bairro      := edtBairro.Text;
      EditarUsuarios(fCliente);
      bloquearBotoesEditaEExcluir;
   finally
      fCliente.Free;
   end;
end;

procedure TFClientes.btnExcluirClienteClick(Sender: TObject);
begin
  inherited;
   if (not DBGridClientes.DataSource.DataSet.IsEmpty) then
   begin
      DBGridClientes.DataSource.DataSet.Delete;
      bloquearBotoesEditaEExcluir;
   end;
   limpaCampos;
end;

procedure TFClientes.btnPesquisaClienteClick(Sender: TObject);
var
   pesquisa: string;
begin

   case cbxPesquisaCliente.ItemIndex of
      0: pesquisa := 'nome like ';
      1: pesquisa := 'sexo like ';
      2: pesquisa := 'rg like ';
      3: pesquisa := 'cpf like ';
      4: pesquisa := 'email like ';
      5: pesquisa := 'nascimento like ';
      6: pesquisa := 'cidade like ';
      7: pesquisa := 'uf like ';
      8: pesquisa := 'telefone like ';
      9: pesquisa := 'rua like ';
      10: pesquisa := 'numero like ';
      11: pesquisa := 'complemento like ';
      12: pesquisa := 'bairro like ';
   end;

   DBGridClientes.DataSource.DataSet.Filter := 'usuario = '+ Comum.ParametroIdUser;
   DBGridClientes.DataSource.DataSet.Filtered := true;

   DBGridClientes.DataSource.DataSet.Filter := pesquisa+QuotedStr('%'+edtPesquisaCliente.Text+'%')+ ' and usuario = '+ Comum.ParametroIdUser ;
   DBGridClientes.DataSource.DataSet.Filtered := true;

   if (DBGridClientes.DataSource.DataSet.RecordCount > 0) then
   begin
      edtUsuario.Visible := false;
   end
   else
   begin
      DBGridClientes.DataSource.DataSet.Filter := 'usuario = '+ Comum.ParametroIdUser;
      DBGridClientes.DataSource.DataSet.Filtered := true;
      Application.MessageBox('Pesquisa Não encontrada','Pesquisa',MB_OK+MB_ICONINFORMATION+mb_DefButton1);
   end;
end;

procedure TFClientes.btnCancelarClick(Sender: TObject);
begin
  inherited;
  limpaCampos;
  bloquearBotoesEditaEExcluir;
end;

procedure TFClientes.DBGridClientesDblClick(Sender: TObject);
begin
  inherited;
   btnEditaCliente.Enabled := true;
   btnExcluirCliente.Enabled := true;
   btnCadastraCliente.Enabled := false;
   btnCancelar.Enabled := true;
   DBGridClientes.Enabled := false;
   btnPesquisaCliente.Enabled := false;
   edtNomeCliente.Text     := DBGridClientes.DataSource.DataSet.FieldByName('Nome').AsString;
   RadioGroup1.ItemIndex   := DBGridClientes.DataSource.DataSet.FieldByName('Sexo').AsInteger;
   edtRg.Text              := DBGridClientes.DataSource.DataSet.FieldByName('RG').AsString;
   edtCPF.Text             := DBGridClientes.DataSource.DataSet.FieldByName('cpf').AsString;
   edtEmail.Text           := DBGridClientes.DataSource.DataSet.FieldByName('email').AsString ;
   edtMNascimento.Text     := DBGridClientes.DataSource.DataSet.FieldByName('nascimento').AsString;
   edtCidade.Text          := DBGridClientes.DataSource.DataSet.FieldByName('cidade').AsString;
   edtUf.Text              := DBGridClientes.DataSource.DataSet.FieldByName('uf').AsString;
   edtTelefone.Text        := DBGridClientes.DataSource.DataSet.FieldByName('telefone').AsString;
   edtRua.Text             := DBGridClientes.DataSource.DataSet.FieldByName('rua').AsString;
   edtNumero.Text          := DBGridClientes.DataSource.DataSet.FieldByName('numero').AsString;
   edtComplemento.Text     := DBGridClientes.DataSource.DataSet.FieldByName('complemento').AsString;
   edtBairro.Text          := DBGridClientes.DataSource.DataSet.FieldByName('bairro').AsString;
   edtUsuario.Visible := false;
   Label15.Visible := false;
end;

procedure TFClientes.edtCPFEnter(Sender: TObject);
  var
   texto: string;
begin
  inherited;
  if (Length(edtCPF.Text ) = 14)  then
  begin
//     edtCPF.Text := StringReplace(edtCPF.Text, '.','', [rfReplaceAll]);
//     edtCPF.Text := StringReplace(edtCPF.Text, '-','', [rfReplaceAll]);
     texto := edtCPF.Text;
     Delete(texto, 4, 1);
     Delete(texto, 7, 1);
     Delete(texto, 10, 1);
     edtCPF.Text := texto;
  end;
end;

procedure TFClientes.edtCPFExit(Sender: TObject);
var
   mascara :string;
begin
  inherited;
   if (edtCPF.Text <> '') then
   begin
      if (Length(edtCPF.Text ) = 11)  then
      begin
   //      edtCPF.Text := FormatMaskText('000.000.000-00;0', edtCPF.Text);
   //      edtCPF.Text := (Copy(edtCPF.Text,0,3))
   //                     +'.'
   //                     +(copy(edtCPF.Text,3,3))
   //                     +'.'
   //                     +(copy(edtCPF.Text,6,3))
   //                     +'-'
   //                     +(copy(edtCPF.Text,9,2));
         mascara := edtCPF.Text;
         insert('.',mascara,4);
         insert('.',mascara,8);
         insert('-',mascara,12);
         edtCPF.Text := mascara;
      end
      else
      begin
         ShowMessage('O cpf deve conter 11 numeros');
         if (edtCPF.CanFocus) then
            edtCPF.SetFocus;
      end;
   end;
end;

procedure TFClientes.edtCPFKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if not(Key in ['0'..'9',Chr(8)])  then
      key := #0;
end;

procedure TFClientes.edtMNascimentoEnter(Sender: TObject);
begin
  inherited;
  edtMNascimento.Text := StringReplace(edtMNascimento.Text, '/','', [rfReplaceAll]);

end;

procedure TFClientes.edtMNascimentoExit(Sender: TObject);
begin
  inherited;
   if (Length(edtMNascimento.Text) = 8) then
      edtMNascimento.Text := FormatMaskText('00/00/0000;0', edtMNascimento.Text)
   else
      edtMNascimento.Clear;

end;

procedure TFClientes.edtNomeClienteExit(Sender: TObject);
begin
   if (trim(edtNomeCliente.Text) <> '') then
   begin
      if (Length(edtNomeCliente.Text) < 5) then
      begin
         ShowMessage('digite o Nome Completo');
         if (edtNomeCliente.CanFocus) then
            edtNomeCliente.SetFocus;
      end;
   end;
end;

procedure TFClientes.edtTelefoneEnter(Sender: TObject);
begin
  inherited;
   edtTelefone.Text := StringReplace(edtTelefone.Text, '(','', [rfReplaceAll]);
   edtTelefone.Text := StringReplace(edtTelefone.Text, ')','', [rfReplaceAll]);
   edtTelefone.Text := StringReplace(edtTelefone.Text, '-','', [rfReplaceAll]);
end;

procedure TFClientes.edtTelefoneExit(Sender: TObject);
begin
  inherited;
   if (edtTelefone.Text <> '') then
      edtTelefone.Text := FormatMaskText('(00)00000-0000;0', edtTelefone.Text);
end;

procedure TFClientes.FormShow(Sender: TObject);
var
   id :string;
begin
  inherited;
   btnCadastraCliente.Enabled := true;
   btnEditaCliente.Enabled := false;
   btnExcluirCliente.Enabled := false;
   btnPesquisaCliente.Enabled := true;
   id := (Comum.ParametroIdUser);

end;

function TFClientes.GravarUsuarios(const fCliente: Tcliente): Boolean;
var
   id : integer;
begin
   Result := false;
   if (ValidaUsuarios(fCliente)) then
   begin


     // DBGridClientes.DataSource.DataSet.Filter := 'usuario = '+ ParametroIdUser;
      DBGridClientes.DataSource.DataSet.Filtered := false;

      DBGridClientes.DataSource.DataSet.Last;
      id := DBGridClientes.DataSource.DataSet.FieldByName('id').AsInteger + 1;
      DBGridClientes.DataSource.DataSet.Append;
      DBGridClientes.DataSource.DataSet.FieldByName('id').AsInteger           := id;
      DBGridClientes.DataSource.DataSet.FieldByName('Usuario').AsInteger      := fCliente.Usuario;
      DBGridClientes.DataSource.DataSet.FieldByName('nome').AsString          := fCliente.fNome;
      DBGridClientes.DataSource.DataSet.FieldByName('sexo').AsInteger         := fCliente.Sexo;
      DBGridClientes.DataSource.DataSet.FieldByName('rg').AsString            := fCliente.Rg;
      DBGridClientes.DataSource.DataSet.FieldByName('cpf').AsString           := fCliente.Cpf;
      DBGridClientes.DataSource.DataSet.FieldByName('email').AsString         := fCliente.Email;
      DBGridClientes.DataSource.DataSet.FieldByName('nascimento').AsString    := fCliente.Nascimento;
      DBGridClientes.DataSource.DataSet.FieldByName('cidade').AsString        := fCliente.Cidade;
      DBGridClientes.DataSource.DataSet.FieldByName('uf').AsString            := fCliente.UF;
      DBGridClientes.DataSource.DataSet.FieldByName('telefone').AsString      := fCliente.Telefone;
      DBGridClientes.DataSource.DataSet.FieldByName('rua').AsString           := fCliente.Rua;
      DBGridClientes.DataSource.DataSet.FieldByName('numero').AsString       := fCliente.Numero;
      DBGridClientes.DataSource.DataSet.FieldByName('complemento').AsString   := fCliente.Complemento;
      DBGridClientes.DataSource.DataSet.FieldByName('bairro').AsString        := fCliente.Bairro;
      DBGridClientes.DataSource.DataSet.Post;
      DBGridClientes.DataSource.DataSet.Filtered := true;
      Result := true;
      limpaCampos;
   end
   else
      ShowMessage('Existem campos vazios Campos Vazios');
end;

function TFClientes.EditarUsuarios(const fCliente: Tcliente): Boolean;
begin
   result := false;
  if (ValidaUsuarios(fCliente)) then
   begin
      DBGridClientes.DataSource.DataSet.Edit;
      DBGridClientes.DataSource.DataSet.FieldByName('nome').AsString          := fCliente.fNome;
      DBGridClientes.DataSource.DataSet.FieldByName('sexo').AsInteger         := fCliente.Sexo;
      DBGridClientes.DataSource.DataSet.FieldByName('rg').AsString            := fCliente.Rg;
      DBGridClientes.DataSource.DataSet.FieldByName('cpf').AsString           := fCliente.Cpf;
      DBGridClientes.DataSource.DataSet.FieldByName('email').AsString         := fCliente.Email;
      DBGridClientes.DataSource.DataSet.FieldByName('nascimento').AsString  := fCliente.Nascimento;
      DBGridClientes.DataSource.DataSet.FieldByName('cidade').AsString        := fCliente.Cidade;
      DBGridClientes.DataSource.DataSet.FieldByName('uf').AsString            := fCliente.UF;
      DBGridClientes.DataSource.DataSet.FieldByName('telefone').AsString      := fCliente.Telefone;
      DBGridClientes.DataSource.DataSet.FieldByName('rua').AsString           := fCliente.Rua;
      DBGridClientes.DataSource.DataSet.FieldByName('numero').AsString      := fCliente.Numero;
      DBGridClientes.DataSource.DataSet.FieldByName('complemento').AsString   := fCliente.Complemento;
      DBGridClientes.DataSource.DataSet.FieldByName('bairro').AsString        := fCliente.Bairro;
      DBGridClientes.DataSource.DataSet.Post;
      limpaCampos;
      Result := true;
   end
   else
      ShowMessage('Existem campos vazios Campos Vazios');
end;

function TFClientes.ValidaUsuarios(const fCliente: Tcliente): Boolean;
begin
   Result := true;
   if  (fCliente.Nome = '') or (fCliente.Rg = '') or (fCliente.Cpf = '') or
       (fCliente.Nascimento = '') or (fCliente.Cidade = '') or (fCliente.UF = '') or
       (fCliente.Telefone = '') or (fCliente.Rua = '') or (fCliente.Complemento = '') or
       (fCliente.Numero = '') or (fCliente.Bairro = '') then
      Result := false;
end;

// GET e SET
function Tcliente.GetCidade: string;
begin
   Result := fCidade;
end;

function Tcliente.GetCpf: string;
begin
   Result := fCpf;
end;

function Tcliente.GetEmail: string;
begin
   Result := fEmail;
end;

function Tcliente.GetId: integer;
begin
   Result := fId;
end;

procedure Tcliente.SetBairro(const Value: string);
begin
  FBairro := Value;
end;

procedure Tcliente.SetCidade(const Value: string);
begin
   fCidade := Value;
end;

procedure Tcliente.SetComplemento(const Value: string);
begin
  FComplemento := Value;
end;

procedure Tcliente.SetCpf(const Value: string);
begin
   fCpf := Value;
end;

procedure Tcliente.SetEmail(const Value: string);
begin
   fEmail := Value;
end;

procedure Tcliente.SetId(const Value: integer);
begin
   fId := Value;
end;

procedure Tcliente.SetNascimento(const Value: string);
begin
   fNascimento := Value;
end;

procedure Tcliente.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure Tcliente.SetNumero(const Value: string);
begin
  FNumero := Value;
end;

procedure Tcliente.SetRg(const Value: string);
begin
   fRg := Value;
end;

procedure Tcliente.SetRua(const Value: string);
begin
  FRua := Value;
end;

procedure Tcliente.SetSexo(const Value: integer);
begin
  FSexo := Value;
end;

procedure Tcliente.SetTelefone(const Value: string);
begin
   fTelefone := Value;
end;

procedure Tcliente.SetUf(const Value: string);
begin
  fUf := UpperCase(Value);
end;

procedure Tcliente.SetUsuario(const Value: integer);
begin
   fUsuario := Value;
end;

function Tcliente.GetNascimento: string;
begin
   Result := fNascimento;
end;

function Tcliente.GetNome: String;
begin
   Result := Fnome;
end;

function Tcliente.GetNumero: string;
begin
  Result := fNumero;
end;

function Tcliente.GetRg: string;
begin
   Result := fRg;
end;

function Tcliente.GetTelefone: string;
begin
   Result := fTelefone;
end;

function Tcliente.GetUf: string;
begin
   Result := UpperCase(fUf);
end;

function Tcliente.GetUsuario: integer;
begin
   Result := fUsuario;
end;

procedure TFClientes.limpaCampos;
begin
   edtNomeCliente.Clear;
   edtRg.Clear;
   edtCPF.Clear;
   edtMNascimento.Clear;
   edtEmail.Clear;
   edtCidade.Clear;
   edtUf.Clear;
   edtTelefone.Clear;
   edtRua.Clear;
   edtNumero.Clear;
   edtComplemento.Clear;
   edtBairro.Clear;
end;

end.
