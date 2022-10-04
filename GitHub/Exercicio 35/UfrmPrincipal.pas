unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
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
  xTipoCliente := StrToInt(InputBox('C�lculo Conta de Luz',
                   'Tipo de Cliente: 1-Residencia, 2-Com�rcio , 3-Ind�stria ou 4-�rea rural',
                   '1'));

  xDesconto := strtofloat(InputBox('Desconto cliente',
                   'Valor de desconto em R$','0'));


  xConsumo := StrToFloat(InputBox('C�lculo Conta de Luz',
                   'Quantidade de kWh consumido:',
                   '0'));
  case xTipoCliente of
    1: //Resid�ncia
      xValorConta := xConsumo * 0.6;
    2: //Com�rcio
      xValorConta := xConsumo * 0.48;
    3: //Industria
      xValorConta := xConsumo * 1.29;
    4: //�rea rural
      xValorConta := xConsumo * 2.18;
  end;

  xvalorconta := xvalorconta - xdesconto;

  mmValorConta.Lines.Add(FormatFloat('R$ #0.00',xValorConta));

end;

procedure TfrmPrincipal.btnIniciarClick(Sender: TObject);
begin
  Self.CalcularConta;
end;

end.
