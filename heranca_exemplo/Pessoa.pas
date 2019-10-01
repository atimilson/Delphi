unit Pessoa;

interface
 uses  Vcl.Dialogs;
type
   Tpessoas = class
    private
    Fnome : string;
    Fidade : Integer;
    Fcor : string;
    Fcpf : string;

    public
    property nome :string read Fnome write Fnome;
    property idade :Integer read Fidade write Fidade;
    property cor : string read Fcor write Fcor;
    property cpf :string read Fcpf write Fcpf;

    procedure andar;
    procedure falar(fala :string);

   end;
implementation

{ Tpessoas }

procedure Tpessoas.andar;
begin
 // andar
end;

procedure Tpessoas.falar(fala: string);
begin
   ShowMessage(fala);
end;

end.
