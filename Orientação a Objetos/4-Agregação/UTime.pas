unit UTime;

interface

uses
  UJogador, System.Generics.Collections;

type
  TTime = class
  private
    FNomeTime: String;
    FTecnico: String;
    FIdTime: Integer;
    FJogadores: TList<TJogador>;

    procedure SetIdTime(const Value: Integer);
    procedure SetNomeTime(const Value: String);
    procedure SetTecnico(const Value: String);
    function getIdTime: Integer;
    function getNomeTime: String;
    function getTecnico: String;
    function getJogadores: TList<TJogador>;
  public
    FAnoFundacao: TDate;
    constructor Create(aJogadores: TList<TJogador>);

    property NomeTime : String read getNomeTime write SetNomeTime;
    property Tecnico : String read getTecnico write SetTecnico;
    property IdTime : Integer read getIdTime write SetIdTime;
    property Jogadores: TList<TJogador> read getJogadores;

  end;

implementation

{ TTime }

constructor TTime.Create(aJogadores:TList<TJogador>);
begin
  inherited create;

  FJogadores := aJogadores;
end;


function TTime.getIdTime: Integer;
begin
  Result := FIdTime;
end;

function TTime.getJogadores: TList<TJogador>;
begin
  Result := FJogadores;
end;

function TTime.getNomeTime: String;
begin
  Result := FNomeTime;
end;

function TTime.getTecnico: String;
begin
  Result := FTecnico
end;

procedure TTime.SetIdTime(const Value: Integer);
begin
  FIdTime := Value;
end;


procedure TTime.SetNomeTime(const Value: String);
begin
  FNomeTime := Value;
end;

procedure TTime.SetTecnico(const Value: String);
begin
  FTecnico := Value;
end;

end.
