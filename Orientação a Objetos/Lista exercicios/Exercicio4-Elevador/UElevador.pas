unit UElevador;

interface

type
  TElevador = class
  private
    FAndarTotal: Integer;
    FAndarAtual: Integer;
    FCapacidade: Integer;
    FQuantPessoas: Integer;
    procedure SetAndarAtual(const Value: Integer);
    procedure SetAndarTotal(const Value: Integer);
    procedure SetCapacidade(const Value: Integer);
    procedure SetQuantPessoas(const Value: Integer);

  public
    constructor Create(const aAndarTotal: Integer; const aCapacidade: Integer);

    property AndarTotal: Integer read FAndarTotal write SetAndarTotal;
    property AndarAtual: Integer read FAndarAtual write SetAndarAtual;
    property Capacidade: Integer read FCapacidade write SetCapacidade;
    property QuantPessoas: Integer read FQuantPessoas write SetQuantPessoas;

    function Entra: Integer;
    function Sai: Integer;
    function Sobe: Integer;
    function Desce: Integer;

  end;

implementation

uses
  Vcl.Dialogs, System.SysUtils;

{ TElevador }

constructor TElevador.Create(const aAndarTotal, aCapacidade: Integer);
begin
  FAndarTotal := aAndarTotal;
  FCapacidade := aCapacidade;
  FQuantPessoas := 0;
  FAndarAtual := 0;
end;

function TElevador.Sobe: Integer;
begin
  if FAndarAtual < FAndarTotal then
    FAndarAtual := FAndarAtual + 1
  else
    ShowMessage('Não é possível subir, o elevador já está no ultimo andar!');
    Result := FAndarAtual;
end;

function TElevador.Desce: Integer;
begin
  if FAndarAtual > 0 then
    FAndarAtual := FAndarAtual - 1
  else
    ShowMessage('Não é possível descer, o elevador já está no terréo!');
    Result := FAndarAtual;
end;

function TElevador.Entra: Integer;
begin
  if FQuantPessoas < FCapacidade then
    FQuantPessoas := FQuantPessoas + 1
  else
    ShowMessage('Não é possível entrar mais pessoas, elevador está lotado!');
    Result := FQuantPessoas;
end;

function TElevador.Sai: Integer;
begin
  if FQuantPessoas > 0 then
    FQuantPessoas := FQuantPessoas - 1
  else
    ShowMessage('O elevador já está vazio!');
    Result := FQuantPessoas;
end;

procedure TElevador.SetAndarAtual(const Value: Integer);
begin
  FAndarAtual := Value;
end;

procedure TElevador.SetAndarTotal(const Value: Integer);
begin
  FAndarTotal := Value;
end;

procedure TElevador.SetCapacidade(const Value: Integer);
begin
  FCapacidade := Value;
end;

procedure TElevador.SetQuantPessoas(const Value: Integer);
begin
  FQuantPessoas := Value;
end;

end.
