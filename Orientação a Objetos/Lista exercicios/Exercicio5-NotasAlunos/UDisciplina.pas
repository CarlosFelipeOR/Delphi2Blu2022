unit UDisciplina;

interface

uses
  System.Generics.Collections, UAluno;

type
  TDisciplina = class
    private
      FCodigo : Integer;
      FDescricao : Integer;
      FAlunos : TList<TAluno>;

    procedure SetCodigo(const Value: Integer);
    procedure SetDescricao(const Value: Integer);

    public

      property Codigo : Integer read FCodigo write SetCodigo;
      property Descricao : Integer read FDescricao write SetDescricao;


  end;

implementation

{ TDisciplina }

procedure TDisciplina.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TDisciplina.SetDescricao(const Value: Integer);
begin
  FDescricao := Value;
end;

end.
