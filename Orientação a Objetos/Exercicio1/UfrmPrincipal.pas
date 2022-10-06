unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    edtTrianguloXA: TEdit;
    Label2: TLabel;
    edtTrianguloXB: TEdit;
    Label3: TLabel;
    edtTrianguloXC: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtTrianguloYA: TEdit;
    Label6: TLabel;
    edtTrianguloYB: TEdit;
    Label7: TLabel;
    edtTrianguloYC: TEdit;
    Label8: TLabel;
    lblAreaX: TLabel;
    lblAreaY: TLabel;
    lblComparacao: TLabel;
    btnCalcular: TButton;
    btnCalcularOPP: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularArea;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.CalcularArea;
var
  xAreaX, xAreaY, xXA, xXB, xXC, xXP, xYA, xYB, xYC, xYP: Double;

begin
  xXA := StrToFloatDef(edtTrianguloXA.Text,0.0);
  xXB := StrToFloatDef(edtTrianguloXB.Text,0.0);
  xXC := StrToFloatDef(edtTrianguloXC.Text,0.0);
  xYA := StrToFloatDef(edtTrianguloYA.Text,0.0);
  xYB := StrToFloatDef(edtTrianguloYB.Text,0.0);
  xYC := StrToFloatDef(edtTrianguloYC.Text,0.0);

  xXP := (xXA + xXB + xXC)/2;
  xYP := (xYA + xYB + xYC)/2;

  xAreaX := Sqrt(xXP*(xXP-xXA)*(xXP-xXB)*(xXP-xXC));
  xAreaY := Sqrt(xYP*(xYP-xYA)*(xYP-xYB)*(xYP-xYC));

  lblAreaX.Caption :='Área do triângulo X: ' + FormatFloat('0.## cm²',xAreaX);
  lblAreaY.Caption :='Área do triângulo Y: ' + FormatFloat('0.## cm²',xAreaY);

  if xAreaX > xAreaY then
    lblComparacao.Caption := ' A área do triangulo X é maior'
  else if xAreaX < xAreaY then
    lblComparacao.Caption := ' A área do triangulo Y é maior'
  else
    lblComparacao.Caption := ' As áreas dos triangulos são iguais';

end;

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
begin
  Self.CalcularArea;
end;

end.
