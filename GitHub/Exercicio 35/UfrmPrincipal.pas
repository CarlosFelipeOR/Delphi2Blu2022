unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TEnumCliente = (tcResidencia=1,tcComercio,tcIndustria,tcRural);

  TfrmPrincipal = class(TForm)
    btnIniciar: TButton;
    mmValorConta: TMemo;
    Label1: TLabel;
    procedure btnIniciarClick(Sender: TObject);
    procedure CalcularConta;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.CalcularConta;
var
  xTipoCliente : Integer;
  xConsumo, xValorConta, xDesconto : double;
begin
  xTipoCliente := StrToInt(InputBox('Cálculo Conta de Luz',
                   'Tipo de Cliente: 1-Residencia, 2-Comércio , 3-Indústria ou 4-Área rural',
                   '1'));

  xDesconto := strtofloat(InputBox('Desconto cliente',
                   'Valor de desconto em R$','0'));


  xConsumo := StrToFloat(InputBox('Cálculo Conta de Luz',
                   'Quantidade de kWh consumido:',
                   '0'));
  case TEnumCliente(xTipoCliente) of
    tcResidencia:
      xValorConta := xConsumo * 0.8;
    tcComercio:
      xValorConta := xConsumo * 0.68;
    tcIndustria:
      xValorConta := xConsumo * 1.49;
    tcRural:
      xValorConta := xConsumo * 3.18;
  end;

  xvalorconta := xvalorconta - xdesconto;

  mmValorConta.Lines.Add(FormatFloat('R$ ####0.00',xValorConta));

end;

procedure TfrmPrincipal.btnIniciarClick(Sender: TObject);
begin
  Self.CalcularConta;
end;

end.
