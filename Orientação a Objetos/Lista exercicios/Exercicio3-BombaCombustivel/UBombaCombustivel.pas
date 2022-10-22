unit UBombaCombustivel;

interface

type

  TEnumCombustivel = (stGasolina, stEtanol);

  TBombaCombustivel = class
    private
    FTipo   : String;
    FValor  : Currency;
    FQuant  : Double;


    procedure SetQuant(const Value: Double);
    procedure SetTipo(const Value: String);
    procedure SetValor(const Value: Currency);
    function getQuant: Double;
    function getTipo: String;
    function getValor: Currency;

    public
    property Tipo : String read getTipo write SetTipo;
    property Valor : Currency read getValor write SetValor;
    property Quant : Double read getQuant write SetQuant;

    function AbastecerPorValor(aValor:Currency): String;
    function AbastecerPorLitro(aLitro:Double): String;
    procedure AlteraValor(aValor: Currency);
    procedure AlteraCombust�vel(aTipo : Integer);
    procedure AlterarQuantidadeCombust�vel(aQuant : Double);

  end;

implementation

uses
  Vcl.Dialogs, System.SysUtils;

{ BombaCombustivel }

function TBombaCombustivel.AbastecerPorLitro(aLitro: Double): String;
begin
  if aLitro <= FQuant then
  begin
    Result :=  'Valor total do abastecimento: ' +
               FormatFloat('R$ ####0.00',(aLitro * FValor));
    Self.AlterarQuantidadeCombust�vel(- aLitro);
  end
  else
    Result := 'Quantidade de combust�vel insuficiente!';
end;

function TBombaCombustivel.AbastecerPorValor(aValor: Currency): String;
var
  xLitro : Double;
begin
  xLitro := aValor / FValor;
  if xLitro <= FQuant then
  begin
    Result := 'Quantidade de combust�vel abastecido: ' +
               FormatFloat('##0.0# L',xLitro);
    Self.AlterarQuantidadeCombust�vel(- xLitro);
  end
  else
    Result := 'Quantidade de combust�vel insuficiente!';
end;

procedure TBombaCombustivel.AlteraCombust�vel(aTipo: Integer);
begin
  case TEnumCombustivel(aTipo) of
    stGasolina :
      FTipo := 'Gasolina';
    stEtanol:
      FTipo := 'Etanol';
  end;
end;

procedure TBombaCombustivel.AlterarQuantidadeCombust�vel(aQuant: Double);
begin
  FQuant := FQuant + aQuant;
end;

procedure TBombaCombustivel.AlteraValor(aValor: Currency);
begin
  FValor := aValor;
end;

function TBombaCombustivel.getQuant: Double;
begin
  Result := FQuant;
end;

function TBombaCombustivel.getTipo: String;
begin
  Result := FTipo;
end;

function TBombaCombustivel.getValor: Currency;
begin
  Result := FValor;
end;

procedure TBombaCombustivel.SetQuant(const Value: Double);
begin
  FQuant := Value;
end;

procedure TBombaCombustivel.SetTipo(const Value: String);
begin
  FTipo := Value;
end;

procedure TBombaCombustivel.SetValor(const Value: Currency);
begin
  FValor := Value;
end;

end.
