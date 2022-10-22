unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  UElevador, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnEntra: TImage;
    btnSai: TImage;
    Image3: TImage;
    btnDesce: TImage;
    btnSobe: TImage;
    btnLigar: TButton;
    Label1: TLabel;
    lblAndarAtual: TLabel;
    lblPessoas: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure btnLigarClick(Sender: TObject);
    procedure btnEntraClick(Sender: TObject);
    procedure btnSaiClick(Sender: TObject);
    procedure btnSobeClick(Sender: TObject);
    procedure btnDesceClick(Sender: TObject);
  private
    FElevador: TElevador;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnLigarClick(Sender: TObject);
var
  xAndarTotal: Integer;
  xCapacidade: Integer;
  I: Integer;
begin
  xAndarTotal := StrToInt(Inputbox('Dados Elevador',
    'Informe o total de andares do prédio:', ''));
  xCapacidade := StrToInt(Inputbox('Dados Elevador',
    'Informe a capacidade máxima de pessoas no elevador:', ''));
  FElevador := TElevador.Create(xAndarTotal, xCapacidade);
  lblPessoas.Caption := IntToStr(FElevador.QuantPessoas);
  lblAndarAtual.Caption := IntToStr(FElevador.AndarAtual);

  //btnEntra.Visible := True;
  //btnSai.Visible := True;
  //btnDesce.Visible := True;
  //btnSobe.Visible := True;

  //Label1.Visible := True;
  //Label3.Visible := True;

  // FOR para converter todos os visibles dos label e images em True
  for I := 0 to self.ComponentCount - 1 do
  begin
    if (Self.Components[I] is TLabel) or (Self.Components[I] is TImage) then
      TLabel(Self.Components[I]).Visible := True;
  end;



end;


procedure TForm1.btnEntraClick(Sender: TObject);
begin
  if not assigned(FElevador) then
    raise Exception.Create('Primeiro ligue o elevador')
  else
    lblPessoas.Caption := IntToStr(FElevador.Entra);
end;

procedure TForm1.btnSaiClick(Sender: TObject);
begin
  if not assigned(FElevador) then
    raise Exception.Create('Primeiro ligue o elevador')
  else
    lblPessoas.Caption := IntToStr(FElevador.Sai);
end;

procedure TForm1.btnSobeClick(Sender: TObject);
begin
  if not assigned(FElevador) then
    raise Exception.Create('Primeiro ligue o elevador')
  else
    lblAndarAtual.Caption := IntToStr(FElevador.Sobe);
end;

procedure TForm1.btnDesceClick(Sender: TObject);
begin
    if not assigned(FElevador) then
    raise Exception.Create('Primeiro ligue o elevador')
  else
    lblAndarAtual.Caption := IntToStr(FElevador.Desce);
end;

end.
