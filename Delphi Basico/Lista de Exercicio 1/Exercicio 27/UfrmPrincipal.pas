unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TEnumCombustivel = (Alcool=1, Gasolina, Diesel);

  TForm1 = class(TForm)
    Button1: TButton;
    mmValoresCalculados: TMemo;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularDesconto;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure Tform1.CalcularDesconto;
var
  xModelo, xContinuar : String;
  xValorSemDesconto, xValorComDesconto, xValorComDescontoTotal, xValorDesconto,
  xValorDescontoTotal : Double;
  xAno, xContVelho, xContNovo, xCombustivel : Integer;
begin
  mmValoresCalculados.lines.Clear;
  xValorComDescontoTotal := 0;
  xValorDescontoTotal := 0;
  xContVelho := 0;
  xContNovo := 0;
  repeat
    xModelo := inputbox( 'C�lculo de Desconto','Modelo:','');
    xCombustivel := StrToInt(inputbox('C�lculo de Desconto',
                          'Combust�vel: 1-Alcool, 2-Gasolina ou 3-Diesel','0'));
    xValorSemDesconto :=StrToInt(inputbox( 'C�lculo de Desconto',
                                           'Valor Sem Desconto','0'));
    if xValorSemDesconto = 0 then
      break;

    case TEnumCombustivel(xCombustivel) of
      Alcool:
        xValorDesconto :=  xValorSemDesconto * 0.25;
      Gasolina:
        xValorDesconto :=  xValorSemDesconto * 0.21;
      Diesel:
        xValorDesconto :=  xValorSemDesconto * 0.14;
    end;

    xValorDescontoTotal := xValorDescontoTotal + xValorDesconto;
    xValorComDesconto := xValorSemDesconto - xValorDesconto;
    xValorComDescontoTotal := xValorComDescontoTotal + xValorComDesconto;

    mmValoresCalculados.lines.Add(xModelo + ': De R$' +
                                  FormatFloat('#0.##', xValorSemDesconto)
                                  + ' Por R$' +
                                  FormatFloat('#0.##', xValorComDesconto) +
                                   '. Total de desconto: R$' +
                                  FormatFloat('#0.##', xValorDesconto));

//    xContinuar :=UpperCase(inputbox('C�lculo de Desconto',
//                        'Calcular desconto de mais um carro? S(Sim) ou N(N�o)',
//                        ''));
  until (false);
  mmValoresCalculados.lines.Add('Total de descontos da loja: R$' +
                                FormatFloat('#0.##', xValorDescontoTotal));
  mmValoresCalculados.lines.Add('Total pago pelos clientes: R$' +
                                FormatFloat('#0.##', xValorComDescontoTotal));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Self.CalcularDesconto;
end;

end.
