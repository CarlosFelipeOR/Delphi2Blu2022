unit UJogador;

interface

type
  TJogador = class
  private
    FNome: String;
    FIdade: Integer;
    FPosicao: String;
    FIdJogador: Integer;

    procedure SetIdade(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetPosicao(const Value: String);
    procedure SetIdJogador(const Value: Integer);
    function getIdade: Integer;
    function getNome: String;
    function getPosicao: String;
    function getIdJogador: Integer;

  public
    property Nome : String read getNome write SetNome;
    property Idade : Integer read getIdade write SetIdade;
    property Posicao : String read getPosicao write SetPosicao;
    property IdJogador : Integer read getIdJogador write SetIdJogador;

  end;

implementation

{ TJogador }

function TJogador.getIdade: Integer;
begin
  Result := FIdade;
end;

function TJogador.getIdJogador: Integer;
begin
  Result := FIdJogador;
end;

function TJogador.getNome: String;
begin
  Result := FNome;
end;

function TJogador.getPosicao: String;
begin
  Result := FPosicao;
end;

procedure TJogador.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;

procedure TJogador.SetIdJogador(const Value: Integer);
begin
  FIdJogador := Value;
end;

procedure TJogador.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TJogador.SetPosicao(const Value: String);
begin
  FPosicao := Value;
end;

end.
