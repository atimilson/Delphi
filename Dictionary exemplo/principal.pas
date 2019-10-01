unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons,System.Generics.Collections;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TCity = class
      Country :string;
      Latitude: Double;
      Longitude: Double;
  public
  procedure adicionar;
  end;
  const
      epsilion = 0.00001;

var
  Form1: TForm1;
  Dictionary: TDictionary<String,TCity>;
  City, Value: TCity;
  Key : string;

implementation

{$R *.dfm}

{ TCity }

procedure TCity.adicionar;
begin
   Dictionary := TDictionary<String,TCity>.Create;
   City := TCity.Create;
   City.Country := 'Romania';
   City.Latitude := 47.16;
   City.Longitude := 27.58;
   Dictionary.Add('Iasi', City);

   City := TCity.Create;
   City.Country := 'United Kingdom';
   City.Latitude := 51.5;
   City.Longitude := -0.17;
   Dictionary.Add('London', City);

   City := TCity.Create;
   City.Country := 'Argentina';
   { Notice the wrong coordinates }
   City.Latitude := 0;
   City.Longitude := 0;
   Dictionary.Add('Buenos Aires', City);

   ShowMessage(IntToStr(Dictionary.Count));

   if (Dictionary.TryGetValue('Buenos Aires',City) = True) then
      ShowMessage('Localizado : '+ City.Country +' latitude : '+ FloatToStr(City.Latitude) +'longitude '+ FloatToStr(City.Longitude));
   Dictionary.Remove('Buenos Aires');
   Dictionary.TrimExcess;
   {-----------  até aqui eu fiz ----------------------------------}


     if Dictionary.ContainsKey('Iasi') then
    writeln('The key "Iasi" is in the dictionary.')
  else
    writeln('The key "Iasi" is not in the dictionary.');

  { Test how (United Kingdom, 51.5, -0.17) is a value in the dictionary but
    ContainsValue returns False if passed a different instance of TCity with the
    same data, as different instances have different references. }
  if Dictionary.ContainsKey('London') then
  begin
    Dictionary.TryGetValue('London', City);
    if (City.Country = 'United Kingdom') and (CompareValue(City.Latitude, 51.5, EPSILON) = EqualsValue) and (CompareValue(City.Longitude, -0.17, EPSILON) = EqualsValue) then
      writeln('The value (United Kingdom, 51.5, -0.17) is in the dictionary.')
    else
      writeln('Error: The value (United Kingdom, 51.5, -0.17) is not in the dictionary.');
    City := TCity.Create;
    City.Country := 'United Kingdom';
    City.Latitude := 51.5;
    City.Longitude := -0.17;
    if Dictionary.ContainsValue(City) then
      writeln('Error: A new instance of TCity with values (United Kingdom, 51.5, -0.17) matches an existing instance in the dictionary.')
    else
      writeln('A new instance of TCity with values (United Kingdom, 51.5, -0.17) does not match any existing instance in the dictionary.');
    City.Free;
  end
  else
    writeln('Error: The key "London" is not in the dictionary.');

  { Update the coordinates to the correct ones. }
  City := TCity.Create;
  City.Country := 'Argentina';
  City.Latitude := -34.6;
  City.Longitude := -58.45;
  Dictionary.AddOrSetValue('Buenos Aires', City);

  { Generate the exception "Duplicates not allowed". }
  try
    Dictionary.Add('Buenos Aires', City);
  except
    on Exception do
      writeln('Could not add entry. Duplicates are not allowed.');
  end;

  { Display all countries. }
  writeln('All countries:');
  for Value in Dictionary.Values do
    writeln(Value.Country);

  { Iterate through all keys in the dictionary and display their coordinates. }
  writeln('All cities and their coordinates:');
  for Key in Dictionary.Keys do
  begin
    writeln(Key + ': ' + FloatToStrF(Dictionary.Items[Key].Latitude, ffFixed, 4, 2) + ', ' +
    FloatToStrF(Dictionary.Items[Key].Longitude, ffFixed, 4, 2));
  end;

  { Clear all entries in the dictionary. }
  Dictionary.Clear;

  { There should be no entries at this point. }
  writeln('Number of key-value pairs in the dictionary after cleaning: ' + IntToStr(Dictionary.Count));

  { Free the memory allocated for the dictionary. }
  Dictionary.Free;
  City.Free;
  readln;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
   City.adicionar;
end;

end.
