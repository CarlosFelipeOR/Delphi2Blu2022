unit UAnimal;

interface

type
  TEnumAnimal = (stCachorro, stGato, stPassaro);

  //TObjetic - Primeira classe do Delphi - Toda Classe herda dela
  TAnimal = class // class abstrata ou classe base
  private
    FPatas: Byte; // Tipos primitivos o Delphi limpa da mem�ria

    function GetPatas: Byte;
    procedure SetPatas(const aValue: Byte);

  public
    // M�todo Abstrato
    // Virtual Abstract sempre s�o as filhas que ter�o a implementa��o
    function RetornarSom: String; virtual; abstract;
    property Patas: Byte read GetPatas write SetPatas;
  end;

  TCachorro = class(TAnimal)
  private
  public
    constructor Create;
    //Sobrescrita do m�todo da classe pai:
    function RetornarSom: String; override;
  end;

  TGato = class(TAnimal)
  private
  public
    constructor Create;
    function RetornarSom: String; override;
  end;

  TPassaro = class(TAnimal)
  private
  public
    constructor Create;
    function RetornarSom: String; override;
  end;


implementation

{ TAnimal }

function TAnimal.GetPatas: Byte;
begin
  Result := FPatas;
end;

procedure TAnimal.SetPatas(const aValue: Byte);
begin
  FPatas := aValue;
end;

{ TCachorro }

constructor TCachorro.Create;
begin
  Patas := 4;
end;

function TCachorro.RetornarSom: String;
begin
  Result := 'Au Au';
end;

{ TPassaro }

constructor TPassaro.Create;
begin
  Patas := 2;
end;

function TPassaro.RetornarSom: String;
begin
  Result := 'Piu piu';
end;


{ TGato }

constructor TGato.Create;
begin
  Patas := 4;
end;

function TGato.RetornarSom: String;
begin
  Result := 'Miau';
end;

end.
