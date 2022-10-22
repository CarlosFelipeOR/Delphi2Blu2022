unit UPessoa;

interface

type
  TPessoa = class
  private
    FNome: String;
    FEndereco: String;

    function GetNome: String;
    function GetEndereco: String;

    procedure SetEndereco(const Value: String);
    procedure SetNome(const Value: String);

  public
    property Nome: String read GetNome write SetNome;
    property Endereco: String read GetEndereco write SetEndereco;

    procedure Gravar(var aPessoa: String); virtual; abstract;
  end;

  TPessoaFisica = class(TPessoa)
  private
    FCPF: String;
    FIdade: Byte;

    function GetCPF: String;
    function GetIdade: Byte;

    procedure SetCPF(const Value: String);
    procedure SetIdade(const Value: Byte);

  public
    property CPF: String read GetCPF write SetCPF;
    property Idade: Byte read GetIdade write SetIdade;

    function imprimeCPF: string;
    function CPF_Valido: Boolean;
    procedure Gravar(var aPessoa: String);override;
  end;

  TPessoaJuridica = class(TPessoa)
  private
    FCNPJ: String;
    FIE: String;

    function GetCNPJ : String;
    function GetIE   : String;

    procedure SetCNPJ(const Value: String);
    procedure SetIE(const Value: String);

  public
    property CNPJ : String read GetCNPJ write SetCNPJ;
    property IE   : String read GetIE write SetIE;

    function imprimeCNPJ: string;
    function CNPJ_Valido: Boolean;
    procedure Gravar(var aPessoa: String);override;
  end;

implementation

uses
  System.SysUtils;

{ TPessoa }


function TPessoa.GetEndereco: String;
begin
  Result := FEndereco;
end;

function TPessoa.GetNome: String;
begin
  Result := FNome;
end;

procedure TPessoa.SetEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

{ TPessoaFisica }

function TPessoaFisica.CPF_Valido: Boolean;
var  dig10, dig11: string;
    s, i, r, peso: integer;
begin
// length - retorna o tamanho da string (CPF é um número formado por 11 dígitos)
  if ((FCPF = '00000000000') or (FCPF = '11111111111') or
      (FCPF = '22222222222') or (FCPF = '33333333333') or
      (FCPF = '44444444444') or (FCPF = '55555555555') or
      (FCPF = '66666666666') or (FCPF = '77777777777') or
      (FCPF = '88888888888') or (FCPF = '99999999999') or
      (length(FCPF) <> 11))
     then begin
              Result := false;
              exit;
            end;

// try - protege o código para eventuais erros de conversão de tipo na função StrToInt
  try
{ *-- Cálculo do 1o. Digito Verificador --* }
    s := 0;
    peso := 10;
    for i := 1 to 9 do
    begin
// StrToInt converte o i-ésimo caractere do CPF em um número
      s := s + (StrToInt(FCPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig10 := '0'
    else str(r:1, dig10); // converte um número no respectivo caractere numérico

{ *-- Cálculo do 2o. Digito Verificador --* }
    s := 0;
    peso := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(FCPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig11 := '0'
    else str(r:1, dig11);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig10 = FCPF[10]) and (dig11 = FCPF[11]))
       then Result := true
    else Result := false;
  except
    Result := false
  end;
end;
function TPessoaFisica.GetCPF: String;
begin
  Result := FCPF;
end;

function TPessoaFisica.GetIdade: Byte;
begin
  Result := FIdade;
end;

function TPessoaFisica.imprimeCPF: string;
begin
  imprimeCPF := copy(CPF, 1, 3) + '.' + copy(CPF, 4, 3) + '.' +
    copy(CPF, 7, 3) + '-' + copy(CPF, 10, 2);
end;

procedure TPessoaFisica.Gravar(var aPessoa: String);
begin
  aPessoa := 'Nome     : ' + Self.Nome + #13#10 +
             'Endereço : ' + Self.Endereco + #13#10 +
             'CPF      : ' + Self.imprimeCPF + #13#10 +
             'Idade    : ' + IntToStr(Self.Idade);
end;

procedure TPessoaFisica.SetCPF(const Value: String);
begin
  FCPF := Value;
  if Self.CPF_Valido = false then
    raise Exception.Create('CPF Inválido');
end;

procedure TPessoaFisica.SetIdade(const Value: Byte);
begin
  FIdade := Value;
end;

{ TPessoaJuridica }

function TPessoaJuridica.CNPJ_Valido: Boolean;
var   dig13, dig14: string;
    sm, i, r, peso: integer;
begin
// length - retorna o tamanho da string do CNPJ (CNPJ é um número formado por 14 dígitos)
  if ((FCNPJ = '00000000000000') or (FCNPJ = '11111111111111') or
      (FCNPJ = '22222222222222') or (FCNPJ = '33333333333333') or
      (FCNPJ = '44444444444444') or (FCNPJ = '55555555555555') or
      (FCNPJ = '66666666666666') or (FCNPJ = '77777777777777') or
      (FCNPJ = '88888888888888') or (FCNPJ = '99999999999999') or
      (length(FCNPJ) <> 14))
     then begin
            Result := false;
            exit;
          end;

// "try" - protege o código para eventuais erros de conversão de tipo através da função "StrToInt"
  try
{ *-- Cálculo do 1o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 12 downto 1 do
    begin
// StrToInt converte o i-ésimo caractere do CNPJ em um número
      sm := sm + (StrToInt(FCNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig13 := '0'
    else str((11-r):1, dig13); // converte um número no respectivo caractere numérico

{ *-- Cálculo do 2o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 13 downto 1 do
    begin
      sm := sm + (StrToInt(FCNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig14 := '0'
    else str((11-r):1, dig14);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig13 = FCNPJ[13]) and (dig14 = FCNPJ[14]))
       then Result := true
    else Result := false;
  except
    Result := false
  end;
end;

function TPessoaJuridica.imprimeCNPJ: string;
begin
{ máscara do CNPJ: 99.999.999.9999-99 }
  Result := copy(CNPJ, 1, 2) + '.' + copy(CNPJ, 3, 3) + '.' +
    copy(CNPJ, 6, 3) + '.' + copy(CNPJ, 9, 4) + '-' + copy(CNPJ, 13, 2);
end;

function TPessoaJuridica.GetCNPJ: String;
begin
  Result := FCNPJ;
end;

function TPessoaJuridica.GetIE: String;
begin
  Result := FIE;
end;

procedure TPessoaJuridica.Gravar(var aPessoa: String);
begin
  aPessoa := 'Nome        : ' + Self.Nome + #13#10 +
             'Endereço  : ' + Self.Endereco + #13#10 +
             'CNPJ        : ' + Self.imprimeCNPJ + #13#10 +
             'IE             : ' + Self.FIE;
end;


procedure TPessoaJuridica.SetCNPJ(const Value: String);
begin
  FCNPJ := Value;
  if Self.CNPJ_Valido = false then
    raise Exception.Create('CNPJ Inválido');
end;

procedure TPessoaJuridica.SetIE(const Value: String);
begin
  FIE := Value;
end;

end.
