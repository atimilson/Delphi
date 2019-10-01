unit Cliente2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, PAIMDIFILHO,
  ClassCliente, ParametrosConexao, Xml.xmldom, Xmlxform, ListarClientes;

type
  TFclienteSegundo = class(TFPAIMDIFILHO)
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    edtCidade: TEdit;
    edtEmail: TEdit;
    edtNomeCliente: TEdit;
    RadioSexo: TRadioGroup;
    edtRg: TEdit;
    edtCPF: TEdit;
    edtMNascimento: TEdit;
    edtTelefone: TEdit;
    edtIdentificacao: TEdit;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    edtRua: TEdit;
    edtComplemento: TEdit;
    edtBairro: TEdit;
    edtNumero: TEdit;
    GroupBox1: TGroupBox;
    btSalvar: TButton;
    btExcluir: TButton;
    Button1: TButton;

    procedure btSalvarClick(Sender: TObject);
    procedure limpaCampos;
    procedure FormShow(Sender: TObject);
    procedure edtIdentificacaoExit(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    function ValidaCampos(const fclassCliente: Tcliente):boolean;
    procedure edtIdentificacaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FclienteSegundo: TFclienteSegundo;
  id_cliente : integer;

implementation

{$R *.dfm}

procedure TFclienteSegundo.btExcluirClick(Sender: TObject);
var
   idCliente : integer;
begin
  inherited;
   idCliente := StrToInt(edtIdentificacao.Text);
   if (ExcluirClientes(idCliente)) then
      Application.MessageBox('Excluido com sucesso','Cliente',MB_OK+MB_ICONINFORMATION+mb_DefButton1)
   else
      Application.MessageBox('Erro ao Excluir','Cliente',MB_OK+MB_ICONERROR+mb_DefButton1);
   limpaCampos;
   btSalvar.Enabled := true;
   btExcluir.Enabled := false;
   if (edtIdentificacao.CanFocus) then
      edtIdentificacao.SetFocus;
end;

procedure TFclienteSegundo.btSalvarClick(Sender: TObject);
var
   cliente : Tcliente;
begin
   cliente:= Tcliente.Create;
   try
      cliente.Id          := StrToInt(edtIdentificacao.Text);
      cliente.Nome        := edtNomeCliente.Text;
      cliente.Sexo        := IntToStr(RadioSexo.ItemIndex);
      cliente.Rg          := edtRg.Text;
      cliente.Cpf         := edtCPF.Text;
      cliente.Email       := edtEmail.Text;
      cliente.Nascimento  := edtMNascimento.Text;
      cliente.Cidade      := edtCidade.Text;
      cliente.Telefone    := edtTelefone.Text;
      cliente.Rua         := edtRua.Text;
      cliente.Numero      := edtNumero.Text;
      cliente.Complemento := edtComplemento.Text;
      cliente.Bairro      := edtBairro.Text;
      if (ValidaCampos(cliente)) then
      begin
         if (GravarClientes(cliente)) then
            Application.MessageBox('Salvo com sucesso','Cliente',MB_OK+MB_ICONINFORMATION+mb_DefButton1)
         else
            Application.MessageBox('Erro ao salvar','Cliente',MB_OK+MB_ICONERROR+mb_DefButton1);
         limpaCampos;
         edtIdentificacao.Text := IntToStr(geraId +1);
         if (edtIdentificacao.CanFocus) then
            edtIdentificacao.SetFocus;
      end
      else
         Application.MessageBox('Existem campos vazios','Cliente',MB_OK+MB_ICONWARNING+mb_DefButton1);
   finally
      cliente.Free;
   end;
end;

procedure TFclienteSegundo.Button1Click(Sender: TObject);
begin
  inherited;
   limpaCampos;
   edtIdentificacao.Text := IntToStr(geraId +1);
   btSalvar.Enabled := true;
   btExcluir.Enabled := false;
   if (edtIdentificacao.CanFocus) then
      edtIdentificacao.SetFocus;
end;

procedure TFclienteSegundo.edtIdentificacaoExit(Sender: TObject);
var
   resultado : Tcliente;
begin
  inherited;
   if  (edtIdentificacao.Text <> '') and (StrToInt(edtIdentificacao.Text) > 0) then
   begin
      resultado := Tcliente(VerificaId(StrToInt(edtIdentificacao.Text)));//
      if (Assigned(resultado)) and (resultado.Id > 0) then
      begin
         // editar
         id_cliente :=  StrToInt(edtIdentificacao.Text);
         btExcluir.Enabled := True;
         edtNomeCliente.Text         :=    resultado.Nome;
         RadioSexo.ItemIndex         :=    StrToInt(resultado.Sexo);
         edtRg.Text                  :=    resultado.Rg;
         edtCPF.Text                 :=    resultado.Cpf;
         edtEmail.Text               :=    resultado.Email;
         edtMNascimento.Text         :=    resultado.Nascimento;
         edtCidade.Text              :=    resultado.Cidade;
         edtTelefone.Text            :=    resultado.Telefone;
         edtRua.Text                 :=    resultado.Rua;
         edtNumero.Text              :=    resultado.Numero;
         edtComplemento.Text         :=    resultado.Complemento;
         edtBairro.Text              :=    resultado.Bairro;
      end
      else
      begin
         // salvar
         btExcluir.Enabled := false;
         limpaCampos;
      end;
   end
   else
      Application.MessageBox('O indentificador deve ser maior que 0','Cliente',MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1);
  end;

procedure TFclienteSegundo.edtIdentificacaoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   formTeste : TFListarClientes;
begin
  inherited;
   if(key = VK_RETURN)then
      Self.Perform(WM_NEXTDLGCTL,0,0);
   if (key = VK_F9) then
   begin
      try
         formTeste := TFListarClientes.Create(nil);
         if (formTeste.ShowModal = mrOk)then
         begin
            edtIdentificacao.Text := formTeste.ID;
            edtIdentificacaoExit(edtIdentificacao);
         end;
      finally
         FreeAndNil(formTeste);
      end;
   end;
end;

procedure TFclienteSegundo.FormShow(Sender: TObject);
begin
   edtIdentificacao.Text := IntToStr(geraId +1);
end;

procedure TFclienteSegundo.limpaCampos;
begin
   edtNomeCliente.Clear;
   edtRg.Clear;
   edtCPF.Clear;
   edtMNascimento.Clear;
   edtEmail.Clear;
   edtCidade.Clear;
   edtTelefone.Clear;
   edtRua.Clear;
   edtNumero.Clear;
   edtComplemento.Clear;
   edtBairro.Clear;
end;

function TFclienteSegundo.ValidaCampos(const fclassCliente: Tcliente): boolean;
begin
   Result := true;
   if(fclassCliente.Nome = '') or (fclassCliente.Rg ='') or (fclassCliente.Cpf ='') or (fclassCliente.Email='')
                               or (fclassCliente.Cidade = '') or (fclassCliente.Telefone = '')
                               or (fclassCliente.Rua = '') or (fclassCliente.Numero = '')
                               or (fclassCliente.Complemento ='') or (fclassCliente.Bairro = '') then
      Result := false;
end;
end.
