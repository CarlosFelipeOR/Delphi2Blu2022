unit UPessoa;

interface

type
  TPessoa = class
  private
    FNome: String;
    FNascimento: TDate;
    FAltura: Double;

    function GetNome: String;
    function GetNascimento: TDate;
    function GetAltura: Double;

    procedure SetNome(const Value:String);
    procedure SetNascimento(const Value:TDate);
    procedure SetAltura(const Value:Double);

  public
    function CalcularIdade: Double;
    function ImprimirDados: String;

    property Nome: String read GetNome write SetNome;
    property Nascimento: TDate read GetNascimento write SetNascimento;
    property Altura: Double read GetAltura write SetAltura;

  end;

implementation

uses
  System.SysUtils;

{ TPessoa }

function TPessoa.CalcularIdade: Double;
begin
  Result := (Date - FNascimento)/365.25;
end;

function TPessoa.ImprimirDados: String;
begin
  Result := FNome + ' tem ' + FormatFloat('0.00 m', FAltura);
end;

function TPessoa.GetAltura: Double;
begin
  Result := FAltura;
end;

function TPessoa.GetNascimento: TDate;
begin
  Result := FNascimento;
end;

function TPessoa.GetNome: String;
begin
  Result := FNome;
end;

procedure TPessoa.SetAltura(const Value: Double);
begin
  FAltura := Value;
end;

procedure TPessoa.SetNascimento(const Value: TDate);
begin
  FNascimento := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
