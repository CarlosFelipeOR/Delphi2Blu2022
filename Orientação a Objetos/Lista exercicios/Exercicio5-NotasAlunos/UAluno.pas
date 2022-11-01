unit UAluno;

interface

type
  TAluno = class
  private
    FMatricula: Integer;
    FNome: String;
    FNotaProva1, FNotaProva2, FNotaTrabalho: Double;

    procedure SetMatricula(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetNotaProva1(const Value: Double);
    procedure SetNotaProva2(const Value: Double);
    procedure SetNotaTrabalho(const Value: Double);

  public
    property Matricula: Integer read FMatricula write SetMatricula;
    property Nome: String read FNome write SetNome;
    property NotaProva1: Double read FNotaProva1 write SetNotaProva1;
    property NotaProva2: Double read FNotaProva2 write SetNotaProva2;
    property NotaTrabalho: Double read FNotaTrabalho write SetNotaTrabalho;

    function NotaMedia(const aNota1, aNota2, aNota3: Double): Double;
    function NotaFinal: Double;
  end;

implementation

{ TAluno }

function TAluno.NotaFinal: Double;
begin
  // Verificar se precisa de um atributo no TALuno para a Media e implementar esse calculo da nota necessaria pro exame
end;

function TAluno.NotaMedia(const aNota1, aNota2, aNota3: Double): Double;
begin
  Result :=  (aNota1 + aNota2 + aNota3) / 3;
end;

procedure TAluno.SetMatricula(const Value: Integer);
begin
  FMatricula := Value;
end;

procedure TAluno.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TAluno.SetNotaProva1(const Value: Double);
begin
  FNotaProva1 := Value;
end;

procedure TAluno.SetNotaProva2(const Value: Double);
begin
  FNotaProva2 := Value;
end;

procedure TAluno.SetNotaTrabalho(const Value: Double);
begin
  FNotaTrabalho := Value;
end;

end.
