unit ClassDados;

interface

type
   TDados = class
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
    function GetId: integer;
    procedure SetId(const Value: integer);
    function GetNome: string;
    procedure SetNome(const Value: string);
    function GetCidade: String;
    function GetCpf: String;
    function GetEmail: String;
    function GetNascimento: string;
    function GetNumero: String;
    function GetRg: String;
    function GetRua: String;
    function GetSexo: String;
    function GetTelefone: String;
    procedure SetCidade(const Value: String);
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
         property Nome:string read GetNome write SetNome;
         property Sexo:String read GetSexo write SetSexo;
         property Rg:String read GetRg write SetRg;
         property Cpf:String read GetCpf write SetCpf;
         property Email:String read GetEmail write SetEmail;
         property Nascimento:string read GetNascimento write SetNascimento;
         property Cidade:String read GetCidade write SetCidade;
         property Telefone:String read GetTelefone write SetTelefone;
         property Rua:String read GetRua write SetRua;
         property Numero:String read GetNumero write SetNumero;

   end;

implementation

{ TDados }

function TDados.GetCidade: String;
begin
   Result :=  FCidade;
end;

function TDados.GetCpf: String;
begin
   Result := FCpf;
end;

function TDados.GetEmail: String;
begin
   Result := FEmail;
end;

function TDados.GetId: integer;
begin
   Result := FId;
end;

function TDados.GetNascimento: string;
begin
   Result := FNascimento;
end;

function TDados.GetNome: string;
begin
   Result :=  FNome;
end;

function TDados.GetNumero: String;
begin
   Result :=  FNumero;
end;

function TDados.GetRg: String;
begin
   Result := FRg;
end;

function TDados.GetRua: String;
begin
   Result := FRua;
end;

function TDados.GetSexo: String;
begin
   Result := FSexo;
end;

function TDados.GetTelefone: String;
begin
   Result := FTelefone;
end;

procedure TDados.SetCidade(const Value: String);
begin
   FCidade := Value;
end;

procedure TDados.SetCpf(const Value: String);
begin
   FCpf := Value;
end;

procedure TDados.SetEmail(const Value: String);
begin
   FEmail := Value;
end;

procedure TDados.SetId(const Value: integer);
begin
   FId := Value;
end;

procedure TDados.SetNascimento(const Value: string);
begin
   FNascimento := Value;
end;

procedure TDados.SetNome(const Value: string);
begin
   FNome := Value;
end;

procedure TDados.SetNumero(const Value: String);
begin
   FNumero := Value;
end;

procedure TDados.SetRg(const Value: String);
begin
   FRg := Value;
end;

procedure TDados.SetRua(const Value: String);
begin
   FRua := Value;
end;

procedure TDados.SetSexo(const Value: String);
begin
   FSexo := Value;
end;

procedure TDados.SetTelefone(const Value: String);
begin
   FTelefone := Value;
end;

end.
