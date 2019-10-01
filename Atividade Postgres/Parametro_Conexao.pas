unit Parametro_Conexao;

interface

uses dtModule;

function ConfiguraBanco(const conexao:Integer):boolean;

implementation

uses
  System.SysUtils, System.IniFiles, uADCompClient;



function ConfiguraBanco(const conexao:Integer):boolean;
var
   arquivoIni : TIniFile;
   dtm : TDataModule1;
begin
   dtm := TDataModule1.Create;
   if (FileExists('C:\configuracao\parametros.ini')) then
   begin
      arquivoIni := TIniFile.Create('C:\configuracao\parametros.ini');
      case conexao of

         1:begin
              dtm.ADConnection.DriverName := 'ASA';
              dtm.ADConnection.Params.Add('User_Name ='+ArquivoINI.ReadString('sybase', 'User_Name', 'Erro ao ler o valor'));
              dtm.ADConnection.Params.Add('Password ='+ArquivoINI.ReadString('sybase', 'Password', 'Erro ao ler o valor'));
              dtm.ADConnection.Params.Add('Server ='+ArquivoINI.ReadString('sybase', 'Server', 'Erro ao ler o valor'));
              dtm.ADConnection.Params.Add('Password ='+ArquivoINI.ReadString('sybase', 'Password', 'Erro ao ler o valor'));
              dtm.ADConnection.Params.Add('DriverID ='+ArquivoINI.ReadString('sybase', 'DriverID', 'Erro ao ler o valor'));


               try
                  dtm.ADConnection.Connected := true;
               except on E: Exception do

                 begin
                    dtm.ADConnection.DriverName := 'PG';
                    dtm.ADConnection.Params.Add('User_Name ='+ArquivoINI.ReadString('postgres', 'User_Name', 'Erro ao ler o valor'));
                    dtm.ADConnection.Params.Add('Password ='+ArquivoINI.ReadString('postgres', 'Password', 'Erro ao ler o valor'));
                    dtm.ADConnection.Params.Add('Server ='+ArquivoINI.ReadString('postgres', 'Database', 'Erro ao ler o valor'));
                    dtm.ADConnection.Params.Add('Password ='+ArquivoINI.ReadString('postgres', 'Password', 'Erro ao ler o valor'));
                    dtm.ADConnection.Params.Add('DriverID ='+ArquivoINI.ReadString('postgres', 'DriverID', 'Erro ao ler o valor'));

                    dtm.ADConnection.Connected := true;
                    ArquivoINI.Free;
                    Result := True;
                 end;
             end;
         end;

      end;
   end

end;

end.
