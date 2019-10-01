unit uVendas;

interface

uses System.Generics.Collections, System.SysUtils, uItemVendas ;

type
   Tvendas = class
    private
      FIDVenda: Integer;
      FData: TDateTime;
      FListaVendaItem: TObjectList<TVendaItem>;

   public
    property IDVenda: Integer read FIDVenda write FIDVenda;
    property Data   : TDateTime read FData write FData;
    property ListaVendaItem: TObjectList<TVendaItem> read FListaVendaItem write FListaVendaItem;

    constructor Create;
    destructor Destroy; override;



    procedure AdicionarVendaItem(pProduto: String);
   end;
implementation


{ Tvendas }

procedure Tvendas.AdicionarVendaItem(pProduto: String);
var
I : Integer;
begin
   FListaVendaItem.Add(TVendaItem.Create);
   I := FListaVendaItem.Count -1;
   FListaVendaItem[I].IDVendaItem := I;
   FListaVendaItem[I].IDVenda := FIDVenda;
   FListaVendaItem[I].Produto := pProduto;
end;

constructor Tvendas.Create;
begin
   inherited;
   FIDVenda        := 0;
   FData           := EncodeDate(1900,1,1);
   FListaVendaItem := TObjectList<TVendaItem>.Create;

end;

destructor Tvendas.Destroy;
begin
   FreeAndNil(FListaVendaItem);
   inherited;
end;

end.
