unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnIniciar: TButton;
    Label1: TLabel;
    mmMaiorIdade: TMemo;
    mmMenorIdade: TMemo;
    procedure btnIniciarClick(Sender: TObject);
  private
    { Private declarations }
    procedure MaiorIdade;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure Tform1.MaiorIdade;
var
  //xListaNomesMenores, xListaNomesMaiores : Array[0..74] of String;
  i, xIdade : Integer;
  xNome : String;

begin
  for I := 0 to 4 do
  begin
    xNome := inputbox( 'Cadastro','Nome','');
    xIdade := StrToInt(inputbox( 'Cadastro','A idade de '+ xNome +' é: ' ,''));
    if xIdade >= 18 then
      mmMaiorIdade.Lines.Add(xNome)
    else
      mmMenorIdade.Lines.Add(xNome)
  end;


end;



procedure TForm1.btnIniciarClick(Sender: TObject);
begin
  Self.MaiorIdade;
end;

end.
