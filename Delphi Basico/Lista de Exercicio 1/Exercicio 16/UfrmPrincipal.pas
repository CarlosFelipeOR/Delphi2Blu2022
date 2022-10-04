unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtNome: TEdit;
    edtProva1: TEdit;
    edtProva2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnCalcular: TButton;
    Image1: TImage;
    lblNomeAluno: TLabel;
    lblNota: TLabel;
    edtProva3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    lblSituacao: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure Calcular;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure Tform1.Calcular;
var
  xMedia : Double;
  xSituacao : String;

begin
  xMedia := (StrToFloat(edtProva1.Text) + StrToFloat(edtProva2.Text)
          + StrToFloat(edtProva3.Text))/3;
  lblNomeAluno.Caption := ' A m�dia de ' + edtNome.Text + ' �:';

    if xMedia <= 5  then
      begin
        xSituacao := 'Reprovado' ;
        lblNota.font.Color := clRed;
        lblSituacao.font.Color := clRed;
      end

    else if xMedia < 7 then
      begin
        xSituacao := 'Em Recupera��o';
        lblNota.font.Color := clYellow;
        lblSituacao.font.Color := clYellow;
      end

    else
            begin
        xSituacao := 'Aprovado';
        lblNota.font.Color := clWhite;
        lblSituacao.font.Color := clWhite;
      end;

  lblNota.Caption := FormatFloat('#0.##', xMedia);
  lblSituacao.Caption := xSituacao;
  lblNota.Visible := True;
  lblSituacao.Visible := True;
  lblNomeAluno.Visible := True;

end;


procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  Self.Calcular;
end;

end.
