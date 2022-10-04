unit UfrmSalarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFuncionarios = record
    Nome : String;
    SalarioAntigo : Currency;
    SalarioNovo : Currency;
    Aumento : Currency;

  end;

  TfrmSalarios = class(TForm)
    btnCadastro: TButton;
    btnListar: TButton;
    mmLista: TMemo;
    procedure btnCadastroClick(Sender: TObject);
  private
    { Private declarations }
    FFuncionarios : array of TFuncionarios;
    FSalarioMinimo : Currency;

    procedure Cadastrar;
    procedure Registrar(aFuncionario : TFuncionarios);
    procedure CalcularReajuste(var aFuncionario : TFuncionarios);
    procedure Listar;

  public
    { Public declarations }
  end;

var
  frmSalarios: TfrmSalarios;

implementation

{$R *.dfm}

procedure TfrmSalarios.Cadastrar;
var
  xFuncionario : TFuncionarios;
  xContinuar : String;

begin
  FSalarioMinimo := StrToFloat(inputbox('Reajuste de Salário',
                               'Salário Mínimo:','0.00'));

  repeat
    xFuncionario.Nome := inputbox('Reajuste de Salário','Nome do Funcionário',
                                  '');
    xFuncionario.SalarioAntigo := StrToFloat(
                                  inputbox('Reajuste de Salário',
                                  'Salário Atual:','0.00'));

    Self.CalcularReajuste(xFuncionario);
    Self.Registrar(xFuncionario);

    xContinuar :=UpperCase(inputbox('Reajuste de Salário',
                        'Cadastrar mais funcionários? S(Sim) ou N(Não)',
                        ''));

  until ( xContinuar= 'N');

  Self.Listar;

end;

procedure TfrmSalarios.CalcularReajuste(var aFuncionario: TFuncionarios);
var
  xSalarioPorMinimo : Double;
begin
  xSalarioPorMinimo := aFuncionario.SalarioAntigo / FSalarioMinimo;

  if xSalarioPorMinimo < 3 then
  begin
    aFuncionario.Aumento := aFuncionario.SalarioAntigo * 0.5;
    aFuncionario.SalarioNovo := aFuncionario.SalarioAntigo +
                                aFuncionario.Aumento;
  end
  else if xSalarioPorMinimo < 10 then
  begin
    aFuncionario.Aumento := aFuncionario.SalarioAntigo * 0.2;
    aFuncionario.SalarioNovo := aFuncionario.SalarioAntigo +
                                aFuncionario.Aumento;
  end
  else if xSalarioPorMinimo < 20 then
  begin
    aFuncionario.Aumento := aFuncionario.SalarioAntigo * 0.15;
    aFuncionario.SalarioNovo := aFuncionario.SalarioAntigo +
                                aFuncionario.Aumento;
  end
  else
  begin
    aFuncionario.Aumento := aFuncionario.SalarioAntigo * 0.1;
    aFuncionario.SalarioNovo := aFuncionario.SalarioAntigo +
                                aFuncionario.Aumento;
  end;

end;

Procedure TfrmSalarios.Registrar(aFuncionario: TFuncionarios);
begin
  setLength(FFuncionarios,length(FFuncionarios)+1);
  FFuncionarios[length(FFuncionarios)-1]:= aFuncionario;
end;

procedure TfrmSalarios.Listar;
var
  I:Integer;
  xAumento : Currency;
begin
  for I := 0 to length(FFuncionarios) do
  begin
    mmLista.lines.Add( FFuncionarios[I].Nome + '- Salário Anterior: R$' +
                       FormatCurr('#####0.00',FFuncionarios[I].SalarioAntigo)+
                       '- Aumento: R$' +
                       FormatCurr('####0.00',FFuncionarios[I].Aumento));
  end;

end;

procedure TfrmSalarios.btnCadastroClick(Sender: TObject);
begin
  Self.Cadastrar;
end;

end.
