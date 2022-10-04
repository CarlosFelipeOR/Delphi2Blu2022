unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  EnumOperacao = (stSoma, stSubtração, stMultiplicação,stDivisão);

  TForm1 = class(TForm)
    edtNumero1: TEdit;
    edtNumero2: TEdit;
    btnExecutar: TButton;
    cmbOperacao: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblResultado: TLabel;
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnExecutarClick(Sender: TObject);
var
  xResultado, xNumero1, xNumero2 : Double;

begin
  if not tryStrToFloat(edtNumero1.Text,xNumero1) or
     not tryStrToFloat(edtNumero2.Text,xNumero2) then
    raise Exception.Create('Erro: Insira números válidos');


  xNumero1 := StrToFloat(edtNumero1.Text);
  xNumero2 := StrToFloat(edtNumero2.Text);

  case EnumOperacao(cmbOperacao.ItemIndex) of
    stSoma:
      xResultado := xNumero1 + xNumero2;

    stSubtração:
      xResultado := xNumero1 - xNumero2;

    stMultiplicação:
      xResultado := xNumero1 * xNumero2;

    stDivisão:
      xResultado := xNumero1 / xNumero2;

  end;

  lblResultado.Caption := FloatToStr(xResultado);

end;

end.
