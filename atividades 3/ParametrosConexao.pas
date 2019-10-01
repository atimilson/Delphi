unit ParametrosConexao;

interface
uses ClassCliente, dmBanco, Data.DB;

function geraId:integer;
function VerificaId(const id_Cliente2:integer):TObject;
function ExcluirClientes(const id_cliente:Integer):boolean;
function GravarClientes(const fCliente:Tcliente):Boolean;
function ListarTodosClientes:TdataSource;
function ListarClientes:TdataSource;
function FiltroClientes(const sql:string):TdataSource;

implementation
 uses Cliente, Principal, Cliente2;

function ListarClientes:TdataSource;
begin
   FdmBanco.Query.Close;
   FdmBanco.Query.SQL.Clear;
   FdmBanco.Query.SQL.Add(' Select max( {IF ORACLE }nvl(*){FI} {IF POSTGRES}coalesce(){FI}) from TBCliente');
   FdmBanco.cdsCliente.Close;
   FdmBanco.cdsCliente.Open;
   result := TdataSource.Create(nil);
   result.DataSet := FdmBanco.cdsCliente;
end;

function FiltroClientes(const sql:string):TdataSource;
begin
   FdmBanco.Query.Close;
   FdmBanco.Query.SQL.Clear;
   FdmBanco.Query.SQL.Add(sql);
   FdmBanco.cdsCliente.Close;
   FdmBanco.cdsCliente.Open;
   result := TdataSource.Create(nil);
   result.DataSet := FdmBanco.cdsCliente;
end;

function ListarTodosClientes:TdataSource;
begin
   FdmBanco.Query.Close;
   FdmBanco.Query.SQL.Clear;
   FdmBanco.Query.SQL.Add('Select top 100 C_id, cast(C_nome as varchar(20)) as Nome,'+
                          'cast(C_cpf as varchar(20)) as CPF,cast(C_rg as varchar(20))as Rg, cast(C_bairro as varchar(20))as Bairro,'+
                          'C_sexo as Sexo  from TBCliente');
   FdmBanco.cdsCliente.Close;
   FdmBanco.cdsCliente.Open;
   result := TdataSource.Create(nil);
   result.DataSet := FdmBanco.cdsCliente;
end;

function geraId:integer;
var
   id : integer;
begin
   FdmBanco := TFdmBanco.Create(NIl);
   FdmBanco.Query.Close;
   FdmBanco.Query.SQL.Clear;
   //FdmBanco.cdsCliente.Close;
   FdmBanco.Query.SQL.Add('Select max(C_id) from TBCliente');
   FdmBanco.Query.Open;
   id := FdmBanco.Query.FieldByName('max(TBCliente.C_id)').AsInteger;
   result := id;
end;

function GravarClientes(const fCliente:Tcliente):Boolean;
var
   resultado: Tcliente;
begin
   resultado := Tcliente(VerificaId(fCliente.Id));
   try
      FdmBanco.Query.Close;
      FdmBanco.Query.SQL.Clear;
      if (resultado.Id > 0) then
      begin
         FdmBanco.Query.SQL.Add('update TBcliente set C_nome = :nome,C_nascimento = :nascimento,C_sexo = :sexo,'+
                                'C_rg = :rg,C_cpf = :cpf ,C_telefone = :telefone,C_rua= :rua,C_numero = :numero, C_complemento = :complemento,'+
                                'C_bairro = :bairro,cidade = :cidade, C_email = :email where C_id = :id');
      end
      else
      begin
         FdmBanco.Query.SQL.Add('insert into TBcliente(C_id, C_nome,C_nascimento,C_sexo,C_rg,C_cpf,C_telefone,'+
                                'C_rua,C_numero,C_complemento,C_bairro,C_email,cidade)'+
                                'values (:id,:nome,:nascimento,:sexo,:rg,:cpf,:telefone,:rua,:numero,:complemento,:bairro,:email,:cidade)');
      end;
         FdmBanco.Query.ParamByName('id').AsInteger         := fCliente.Id;
         FdmBanco.Query.ParamByName('nome').AsString        := fCliente.nome;
         FdmBanco.Query.ParamByName('nascimento').AsString  := fCliente.Nascimento;
         FdmBanco.Query.ParamByName('sexo').AsString        := fCliente.Sexo;
         FdmBanco.Query.ParamByName('rg').AsString          := fCliente.Rg;
         FdmBanco.Query.ParamByName('cpf').AsString         := fCliente.Cpf;
         FdmBanco.Query.ParamByName('telefone').AsString    := fCliente.Telefone;
         FdmBanco.Query.ParamByName('rua').AsString         := fCliente.Rua;
         FdmBanco.Query.ParamByName('numero').AsString      := fCliente.Numero;
         FdmBanco.Query.ParamByName('complemento').AsString := fCliente.Complemento;
         FdmBanco.Query.ParamByName('bairro').AsString      := fCliente.Bairro;
         FdmBanco.Query.ParamByName('email').AsString       := fCliente.Email;
         FdmBanco.Query.ParamByName('cidade').AsString      := fCliente.Cidade;
         FdmBanco.Query.ExecSQL;
         Result := true;
   Except
      Result := false;
   end;
end;

function VerificaId(const id_Cliente2:integer):TObject;
var
   Cliente2 : Tcliente;
begin
   FdmBanco.Query.Close;
   FdmBanco.Query.SQL.Clear;
   FdmBanco.Query.SQL.Add('Select * from TBCliente where C_id = :id');
   FdmBanco.Query.ParamByName('id').AsInteger := id_Cliente2;
   FdmBanco.Query.Open;
   if not FdmBanco.Query.IsEmpty then
   begin
      Cliente2             := Tcliente.Create;
      Cliente2.Id          := FdmBanco.Query.FieldByName('C_id').AsInteger;
      Cliente2.Nome        := FdmBanco.Query.FieldByName('C_nome').AsString;
      Cliente2.Sexo        := FdmBanco.Query.FieldByName('C_sexo').AsString;
      Cliente2.Rg          := FdmBanco.Query.FieldByName('C_rg').AsString;
      Cliente2.Cpf         := FdmBanco.Query.FieldByName('C_cpf').AsString;
      Cliente2.Nascimento  := FdmBanco.Query.FieldByName('C_nascimento').AsString;
      Cliente2.Email       := FdmBanco.Query.FieldByName('C_email').AsString;
      Cliente2.Cidade      := FdmBanco.Query.FieldByName('cidade').AsString;
      Cliente2.Telefone    := FdmBanco.Query.FieldByName('C_telefone').AsString;
      Cliente2.Rua         := FdmBanco.Query.FieldByName('C_rua').AsString;
      Cliente2.Numero      := FdmBanco.Query.FieldByName('C_numero').AsString;
      Cliente2.Complemento := FdmBanco.Query.FieldByName('C_complemento').AsString;
      Cliente2.Bairro      := FdmBanco.Query.FieldByName('C_bairro').AsString;
      FdmBanco.Query.Close;
      Result := Cliente2;
   end
   else
   begin
      Cliente2    := Tcliente.Create;
      Cliente2.Id := -1;
      Result      := Cliente2;
   end;
end;

function ExcluirClientes(const id_cliente:Integer):boolean;
begin
   try
      FdmBanco.Query.Close;
      FdmBanco.Query.SQL.Clear;
      FdmBanco.Query.SQL.Add('delete from TBCliente where C_id = :id');
      FdmBanco.Query.ParamByName('id').AsInteger := id_cliente;
      FdmBanco.Query.ExecSQL;
      Result := true;
   except
      Result := false;
   end;
end;
end.
