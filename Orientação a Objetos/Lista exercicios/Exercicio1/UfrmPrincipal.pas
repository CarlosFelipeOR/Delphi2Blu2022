unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnCadastrar: TButton;
    lblResult: TLabel;
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
    procedure DadosPessoas;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UPessoa;

{$R *.dfm}



procedure TForm1.btnCadastrarClick(Sender: TObject);
begin
  Self.DadosPessoas;
end;

procedure TForm1.DadosPessoas;
var
  xPessoa : TPessoa;
  xIdade: Integer;
begin
  xPessoa := TPessoa.Create;

  try
      xPessoa.Nome := InputBox('Cadastro Pessoa', 'Nome:','');
      xPessoa.Nascimento := StrToDate(InputBox('Cadastro Pessoa',
                                                'Data de Nascimento:',''));
      xPessoa.Altura := StrToFloat(InputBox('Cadastro Pessoa','Altura(m):',''));

      xIdade := trunc(xPessoa.CalcularIdade);

      lblResult.Caption := xPessoa.ImprimirDados + ' e tem ' + IntToStr(xIdade)
                           + ' anos';

  finally
    FreeAndNil(xPessoa);
  end;
end;

end.
