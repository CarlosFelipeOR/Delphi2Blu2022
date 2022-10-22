unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtNome: TEdit;
    Label1: TLabel;
    btnCadastrar: TButton;
    edtEndereco: TEdit;
    Label2: TLabel;
    rbPessoaFisica: TRadioButton;
    rbPessoaJuridica: TRadioButton;
    edtCPFCNPJ: TEdit;
    lblCPFCNPJ: TLabel;
    edtIdadeIE: TEdit;
    lblIdadeIE: TLabel;
    mmDados: TMemo;
    procedure btnCadastrarClick(Sender: TObject);
    procedure rbPessoaJuridicaClick(Sender: TObject);
    procedure rbPessoaFisicaClick(Sender: TObject);
  private
    { Private declarations }

    procedure Cadastro;
    procedure FisicaOuJuridica;

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UPessoa;

{$R *.dfm}

procedure TfrmPrincipal.btnCadastrarClick(Sender: TObject);
begin
  Self.Cadastro;
end;

procedure TfrmPrincipal.Cadastro;
var
  xPessoa : TPessoa;
  xDados : String;
begin

try
  xPessoa := Nil;
  mmDados.Lines.Clear;

  if rbPessoaFisica.Checked then
  begin
    xPessoa := TPessoaFisica.Create;
    TPessoaFisica(xPessoa).CPF := edtCPFCNPJ.Text;
    TPessoaFisica(xPessoa).Idade := StrToInt(edtIdadeIE.Text);
  end
  else
  begin
    xPessoa := TPessoajuridica.Create;
    TPessoajuridica(xPessoa).CNPJ := edtCPFCNPJ.Text;
    TPessoajuridica(xPessoa).IE :=edtIdadeIE.Text;
  end;

  xPessoa.Nome     := edtNome.Text;
  xPessoa.Endereco := edtEndereco.Text;

  xPessoa.Gravar(xDados);

  mmDados.Lines.Add('Confira os dados do cadastro:');
  mmDados.Lines.Add(xDados);

finally
  FreeAndNil(xPessoa);
end;

end;

procedure TfrmPrincipal.FisicaOuJuridica;
begin
  if rbPessoaFisica.Checked = true then
  begin
    lblCPFCNPJ.Caption := 'CPF:';
    lblIdadeIE.Caption := 'Idade:';
  end
  else
  begin
    lblCPFCNPJ.Caption := 'CNPJ:';
    lblIdadeIE.Caption := 'Inscrição Estadual:';
  end;

end;

procedure TfrmPrincipal.rbPessoaFisicaClick(Sender: TObject);
begin
  Self.FisicaOuJuridica;
end;

procedure TfrmPrincipal.rbPessoaJuridicaClick(Sender: TObject);
begin
  Self.FisicaOuJuridica;
end;

end.
