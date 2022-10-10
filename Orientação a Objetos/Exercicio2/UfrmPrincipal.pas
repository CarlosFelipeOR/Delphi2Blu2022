unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    btnIniciar: TButton;
    cmbAnimais: TComboBox;
    procedure btnIniciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UAnimal;

{$R *.dfm}

procedure TfrmPrincipal.btnIniciarClick(Sender: TObject);
var
  xAnimal : TAnimal;
begin
  xAnimal := nil; // Sem referencia a algum ponteira na memória
                  // Assim que inicializa um objeto no delphi

  try
    case TEnumAnimal(cmbAnimais.ItemIndex) of
      stCachorro:
        xAnimal := TCachorro.Create;
      stGato:
        xAnimal := TGato.Create;
      stPassaro:
        xAnimal := TPassaro.Create;
    end;

    ShowMessage(xAnimal.RetornarSom);
    ShowMessage('Tenho ' + IntToStr(xAnimal.Patas) + ' patas.');

  finally
    FreeAndNil(xAnimal);
  end;
end;

end.
