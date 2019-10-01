unit CLIENTE;

interface

   Type Tpessoa = class
      Fcodigo : Integer;
      Fnome : string;
      Fidade : Integer;
      procedure Setcodigo(const Value: Integer);
      procedure Setidade(const Value : Integer);
      procedure Setnome(const value : string);
      public
      property codigo :Integer read Fcodigo write Fcodigo;
      property nome   :String  read Fnome   write Fnome;
      property idade  :Integer read Fidade  write Fidade;

      constructor Create;
      destructor Destroy; Override;

      function saberIdade(qtdAnos :Integer):Integer;
   end;

implementation

{ Tpessoa }

constructor Tpessoa.Create;
begin
 // constructor
end;

destructor Tpessoa.Destroy;
begin
   // destructor
  inherited;
end;

function Tpessoa.saberIdade(qtdAnos: Integer): Integer;
begin
   Result := Fidade + qtdAnos;
end;

procedure Tpessoa.Setcodigo(const Value: Integer);
begin
   Fcodigo := Value;
end;

procedure Tpessoa.Setidade(const Value: Integer);
begin
   Fidade := Value
end;

procedure Tpessoa.Setnome(const value: string);
begin
   Fnome := value;
end;

end.
