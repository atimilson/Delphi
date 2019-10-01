unit ClassCliente;

interface

type
   Tcliente = Class
      private
         FId            : integer;
         FNome          : string;
         FSexo          : string;
         FRg            : string;
         FCpf           : string;
         FEmail         : string;
         FNascimento    : string;
         FCidade        : string;
         FTelefone      : string;
         FRua           : string;
         FNumero        : string;
         FComplemento   : string;
         FBairro        : string;

    procedure SetId(const Value: integer);
    function GetId: integer;
    function GetNome: String;
    procedure SetNome(const Value: String);
    function GetBairro: String;
    function GetCidade: String;
    function GetComplemento: String;
    function GetCpf: String;
    function GetEmail: String;
    function GetNascimento: string;
    function GetNumero: String;
    function GetRg: String;
    function GetRua: String;
    function GetSexo: String;
    function GetTelefone: String;
    procedure SetBairro(const Value: String);
    procedure SetCidade(const Value: String);
    procedure SetComplemento(const Value: String);
    procedure SetCpf(const Value: String);
    procedure SetEmail(const Value: String);
    procedure SetNascimento(const Value: string);
    procedure SetNumero(const Value: String);
    procedure SetRg(const Value: String);
    procedure SetRua(const Value: String);
    procedure SetSexo(const Value: String);
    procedure SetTelefone(const Value: String);

    public
         property Id:integer read GetId write SetId;
         property Nome:String read GetNome write SetNome;
         property Sexo:String read GetSexo write SetSexo;
         property Rg:String read GetRg write SetRg;
         property Cpf:String read GetCpf write SetCpf;
         property Email:String read GetEmail write SetEmail;
         property Nascimento:string read GetNascimento write SetNascimento;
         property Cidade:String read GetCidade write SetCidade;
         property Telefone:String read GetTelefone write SetTelefone;
         property Rua:String read GetRua write SetRua;
         property Numero:String read GetNumero write SetNumero;
         property Complemento:String read GetComplemento write SetComplemento;
         property Bairro:String read GetBairro write SetBairro;
   End;

implementation

{ Tcliente }
// GET e SET

function Tcliente.GetBairro: String;
begin
   Result := fBairro;
end;

function Tcliente.GetCidade: String;
begin
   Result := fCidade;
end;

function Tcliente.GetComplemento: String;
begin
   Result:= fComplemento;
end;

function Tcliente.GetCpf: String;
begin
   Result := fCpf;
end;

function Tcliente.GetEmail: String;
begin
   Result := fEmail;
end;

function Tcliente.GetId: integer;
begin
   Result := FId;
end;

function Tcliente.GetNascimento: string;
begin
   Result := fNascimento;
end;

function Tcliente.GetNome: String;
begin
   Result := fNome
end;

function Tcliente.GetNumero: String;
begin
   Result := FNumero;
end;

function Tcliente.GetRg: String;
begin
   Result := fRg;
end;

function Tcliente.GetRua: String;
begin
   Result := fRua;
end;

function Tcliente.GetSexo: String;
begin
   Result := fSexo;
end;

function Tcliente.GetTelefone: String;
begin
   Result := fTelefone;
end;

procedure Tcliente.SetBairro(const Value: String);
begin
   fBairro := Value;
end;

procedure Tcliente.SetCidade(const Value: String);
begin
   fCidade := Value;
end;

procedure Tcliente.SetComplemento(const Value: String);
begin
   fComplemento := Value
end;

procedure Tcliente.SetCpf(const Value: String);
begin
   fCpf := Value;
end;

procedure Tcliente.SetEmail(const Value: String);
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
   fNome := Value;
end;

procedure Tcliente.SetNumero(const Value: String);
begin
   fNumero := Value;
end;

procedure Tcliente.SetRg(const Value: String);
begin
   fRg := Value;
end;

procedure Tcliente.SetRua(const Value: String);
begin
   fRua := Value;
end;

procedure Tcliente.SetSexo(const Value: String);
begin
   fSexo := Value
end;

procedure Tcliente.SetTelefone(const Value: String);
begin
   fTelefone := Value;
end;
end.
