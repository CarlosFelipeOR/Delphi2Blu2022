unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtDistancia: TEdit;
    edtCombustivel: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblResultado: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  xConsumo : Double;
begin
  if not TryStrToFloat(edtDistancia.Text, xConsumo) then
    raise Exception.Create('Erro: Insira uma dist�ncia v�lida');

  if not TryStrToFloat(edtCombustivel.Text, xConsumo) then
    raise Exception.Create('Erro: Insira a quantidade de combust�vel correta');

  xConsumo := StrToFloat(edtDistancia.Text) / StrToFloat(edtCombustivel.Text);
  lblResultado.Caption := FloatToStr(xConsumo) + ' km/L';

end;

end.
