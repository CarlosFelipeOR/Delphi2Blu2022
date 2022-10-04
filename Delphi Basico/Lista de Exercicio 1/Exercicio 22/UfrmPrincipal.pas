unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnCadastro: TButton;
    mmListaProdutos: TMemo;
    lblTitulo: TLabel;
    procedure btnCadastroClick(Sender: TObject);
  private
    { Private declarations }

    procedure CalculoLucro;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure Tform1.CalculoLucro;
var
  xCusto, xVenda, xCustoTotal, xVendaTotal, xCustoMedio, xVendaMedio: Currency;
  xProduto, xContinuar : String;
  I : Integer;

begin
  I := 0;
  xCustoTotal := 0;
  xVendaTotal := 0;
  mmListaProdutos.Visible := False;
  mmListaProdutos.Lines.Clear;
  mmListaProdutos.Lines.Add('Lista dos produtos calculados:');

  repeat
    xProduto := inputbox( 'Calculo Lucro','Descri��o produto:','');
    xCusto := StrToFloat(inputbox('Calculo Lucro','Valor de Custo(R$): ','0'));
    xVenda := StrToFloat(inputbox('Calculo Lucro','Valor de Venda(R$): ','0'));

    if  xVenda > xCusto then
    begin
      mmListaProdutos.Lines.Add(xProduto + ' custou R$' +
                             FormatFloat('#0.##', xCusto)+
                             ' e foi vendido por R$' +
                             FormatFloat('#0.##', xVenda) +
                             ', portanto houve LUCRO');
      xCustoTotal := xCustoTotal + xCusto;
      xVendaTotal := xVendaTotal + xVenda;
    end
    else if xVenda = xCusto then
    begin
      mmListaProdutos.Lines.Add(xProduto + ' custou R$' +
                             FormatFloat('#0.##', xCusto)+
                             ' e foi vendido por R$' +
                             FormatFloat('#0.##', xVenda) +
                             ', portanto houve EMPATE');
      xCustoTotal := xCustoTotal + xCusto;
      xVendaTotal := xVendaTotal + xVenda;
    end
    else
    begin
      mmListaProdutos.Lines.Add(xProduto + ' custou R$' +
                             FormatFloat('#0.##', xCusto)+
                             ' e foi vendido por R$' +
                             FormatFloat('#0.##', xVenda) +
                             ', portanto houve PREJU�ZO');
      xCustoTotal := xCustoTotal + xCusto;
      xVendaTotal := xVendaTotal + xVenda;
    end;

    I := I + 1;

    xContinuar := UpperCase(inputbox( 'Calculo Lucro',
                  'Deseja continuar cadastrando? S(Sim) ou N(N�o)',''));
  until (xContinuar = 'N');

  xCustoMedio := xCustoTotal / I;
  xVendaMedio := xVendaTotal /I;

  mmListaProdutos.Lines.Add('A m�dia do valor de custo dos produtos foi de R$'+
                            FormatFloat('#0.##', xCustoMedio) );
  mmListaProdutos.Lines.Add('A m�dia do valor de venda dos produtos foi de R$'+
                            FormatFloat('#0.##', xVendaMedio) );
  mmListaProdutos.Visible := True;

end;

procedure TForm1.btnCadastroClick(Sender: TObject);
begin
  Self.CalculoLucro;
end;

end.
