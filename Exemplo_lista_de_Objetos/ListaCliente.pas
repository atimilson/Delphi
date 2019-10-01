unit ListaCliente;

interface
   uses Classes, Cliente, Dialogs;
   type
      TListaCliente = class
      private
         FListaClientes : TList;
      public
        { public declarations }
        constructor Create;
        procedure Adicionar(pCliente: TCliente);
        procedure Remover(Index: Integer);
        function Count: Integer;
      end;

implementation

{ TListaCliente }

constructor TListaCliente.Create;
begin
   inherited Create;
   FListaClientes := TList.Create;
end;

procedure TListaCliente.Adicionar(pCliente: TCliente);
begin
   FListaClientes.Add(pCliente);
end;

function TListaCliente.Count: Integer;
begin
   Result := FListaClientes.Count;
end;

procedure TListaCliente.Remover(Index: Integer);
begin
   if Index < count then
      FListaClientes.Delete(Index)
   else
      ShowMessage('Item não encontrado!');
end;

end.
