unit UfrmPrincipal;

interface

uses
  System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani,
  FMX.Effects;

type
  TfrmPrincipal = class(TForm)
    rectTitulo: TRectangle;
    lblTitulo: TLabel;
    lytCalculo: TLayout;
    edtAltura: TEdit;
    Label1: TLabel;
    Line1: TLine;
    Label2: TLabel;
    edtPeso: TEdit;
    Line2: TLine;
    lblIMC: TLabel;
    lytCalcular: TLayout;
    rectCalcular: TRectangle;
    btnCalcular: TSpeedButton;
    lblClassificacao: TLabel;
    ShadowEffect1: TShadowEffect;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularImc;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  System.SysUtils;

{$R *.fmx}

{ TfrmPrincipal }

procedure TfrmPrincipal.CalcularImc;
var
imc, altura, peso : Double;
classificacao : String;
begin
  if not TryStrToFloat(edtAltura.Text, altura) then
  raise Exception.Create('Insira uma altura válida!');
  altura := altura/100;;

  if not TryStrToFloat(edtPeso.Text, peso) then
  raise Exception.Create('Insira um peso válido!');

  imc := peso / (altura * altura);

  if imc < 18.5 then
  classificacao := 'Magreza'
  else if imc < 25 then
  classificacao := 'Normal'
  else if imc < 30 then
  classificacao := 'Sobrepeso'
  else if imc < 40 then
  classificacao := 'Obesidade'
  else
  classificacao := 'Obesidade Grave';

  lblIMC.Text := FormatFloat('##0.##',imc);
  lblClassificacao.Text := classificacao;

end;

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
begin
  Self.CalcularImc;
end;

end.
