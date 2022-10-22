unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UContaCorrente;

type
  TForm1 = class(TForm)
    edtNumero: TEdit;
    Label1: TLabel;
    edtNome: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtSaldo: TEdit;
    rbDeposito: TRadioButton;
    rbSaque: TRadioButton;
    Label4: TLabel;
    edtOperacao: TEdit;
    btnExecutar: TButton;
    Label5: TLabel;
    btnCriarConta: TButton;
    Label6: TLabel;
    edtAlterarNome: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    btnAlterarNome: TButton;
    Button1: TButton;
    btnReset: TButton;
    procedure btnExecutarClick(Sender: TObject);
    procedure btnCriarContaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarNomeClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
  private
    { Private declarations }
    FContaCorrente : TContaCorrente;
    procedure CriarConta;
    procedure Operacao;
    procedure AlterarNome;
    procedure ExibirSaldo;
    procedure Reset;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAlterarNomeClick(Sender: TObject);
begin
  Self.AlterarNome;
end;

procedure TForm1.btnCriarContaClick(Sender: TObject);
begin
  Self.CriarConta;
end;

procedure TForm1.btnExecutarClick(Sender: TObject);
begin
  Self.Operacao;
end;

procedure TForm1.btnResetClick(Sender: TObject);
begin
  Self.Reset;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Self.ExibirSaldo;
end;

procedure TForm1.CriarConta;
var
xNumeroConta : Integer;
xNome        : String;
xSaldo       : Currency;

begin
  if not TryStrToInt(edtNumero.Text,xNumeroConta) then
    raise Exception.Create('Insira um número de conta válido!');

  xNome := edtNome.Text;

  if edtSaldo.Text = '' then
    xSaldo := 0
  else if not TryStrToCurr(edtSaldo.Text,xSaldo) then
    raise Exception.Create('Insira um valor de saldo válido!');


  if not assigned(FContaCorrente) then
    FContaCorrente := TContaCorrente.Create( xNumeroConta,xNome,xSaldo);
end;


procedure TForm1.Operacao;
begin
  if not assigned(FContaCorrente) then
    raise Exception.Create('Crie uma conta primeiro');

  if rbDeposito.Checked = True then
    FContaCorrente.Deposito(StrToCurr(edtOperacao.Text))
  else if rbSaque.Checked = True then
    FContaCorrente.Saque(StrToCurr(edtOperacao.Text))
  else
    raise Exception.Create('Selecione uma operação');
end;

procedure TForm1.AlterarNome;
begin
  if not assigned(FContaCorrente) then
    raise Exception.Create('Crie uma conta primeiro');

  FContaCorrente.AlterarNome(edtAlterarNome.Text);
end;

procedure TForm1.ExibirSaldo;
begin
  if not assigned(FContaCorrente) then
    raise Exception.Create('Crie uma conta primeiro');
  ShowMessage('A Conta n°: ' + IntToStr(FContaCorrente.Numero) +
              ' de ' + FContaCorrente.Nome + ' possui um saldo de ' +
              FormatFloat('R$ #####0.00',FContaCorrente.Saldo) );
end;

procedure TForm1.Reset;
begin
  FreeAndNil(FContaCorrente)
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.Reset;
end;

end.
