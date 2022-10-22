unit UContaCorrente;

interface

type
  TContaCorrente = class
    private
      FNumero : Integer;
      FNome : String;
      FSaldo: Currency;

      function GetNumero : Integer;
      function GetNome   : String;
      function GetSaldo  : Currency;

      procedure SetNome(const Value: String);
      procedure SetNumero(const Value: Integer);
      procedure SetSaldo(const Value: Currency);

    public
      constructor Create(const aNumeroConta: Integer; const aNome:String;
                         const aSaldo : Currency = 0);

      procedure AlterarNome (const Value:String);
      procedure Deposito (const Value: Currency);
      procedure Saque (const Value: Currency);

      property Numero : Integer read GetNumero write SetNumero;
      property Nome: String read GetNome write SetNome;
      property Saldo: Currency read GetSaldo write SetSaldo;

  end;


implementation

uses
  System.SysUtils;

{ TContaCorrente }

constructor TContaCorrente.Create (const aNumeroConta: Integer;
                                   const aNome:String;
                                   const aSaldo : Currency);
begin
  FNumero := aNumeroConta;
  FNome := aNome;
  FSaldo := aSaldo;
end;

procedure TContaCorrente.AlterarNome(const Value:String);
begin
  FNome := Value;
end;

procedure TContaCorrente.Deposito (const Value: Currency);
begin
  FSaldo := FSaldo + Value;
end;

procedure TContaCorrente.Saque(const Value: Currency);
begin
  if Value > FSaldo then
    raise Exception.Create('Valor de saque maior que o saldo disponível.');
  FSaldo := FSaldo - Value;
end;

function TContaCorrente.GetNome: String;
begin
  Result := FNome;
end;

function TContaCorrente.GetNumero: Integer;
begin
  Result := FNumero;
end;

function TContaCorrente.GetSaldo: Currency;
begin
  Result := FSaldo;
end;

procedure TContaCorrente.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TContaCorrente.SetNumero(const Value: Integer);
begin
  FNumero := Value;
end;

procedure TContaCorrente.SetSaldo(const Value: Currency);
begin
  FSaldo := Value;
end;

end.
