unit Cliente;

interface
   type
      Tcliente = class
       private
         FCNPJ: string;
         FIDCliente: Integer;
         FNome: string;
       protected
       {protected}
       public
         property IDCliente : Integer read FIDCliente write FIDCliente ;
         property Nome : String read FNome write FNome;
         property CNPJ : string read FCNPJ write FCNPJ;
      end;

implementation

end.
