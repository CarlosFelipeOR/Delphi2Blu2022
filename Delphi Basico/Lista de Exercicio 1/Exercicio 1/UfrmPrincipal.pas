unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtNumero1: TEdit;
    edtNumero2: TEdit;
    btnSoma: TButton;
    lblResultado: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnSomaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSomaClick(Sender: TObject);
var
xSoma : Integer;
begin
  xSoma := StrToInt(edtNumero1.Text) + StrToInt(edtNumero2.Text);
  lblResultado.Caption := 'A soma dos n�meros �: ' + IntToStr(xSoma);

end;

end.
