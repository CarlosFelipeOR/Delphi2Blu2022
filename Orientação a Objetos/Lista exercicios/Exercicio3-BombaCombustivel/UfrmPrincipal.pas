unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  UBombaCombustivel;

type
  TEnumAbastecer = (stPorValor, stPorLitro);

  TfrmPrincipal = class(TForm)
    rgTipoAbastecer: TRadioGroup;
    rgCombustivel: TRadioGroup;
    edtAbastecer: TEdit;
    lblAbastecer: TLabel;
    btnAbastecer: TButton;
    btnQuantCombustivel: TButton;
    Label1: TLabel;
    lblQuantCombustivel: TLabel;
    procedure rgCombustivelClick(Sender: TObject);
    procedure btnAbastecerClick(Sender: TObject);
    procedure btnQuantCombustivelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FBombaCombustivel : TBombaCombustivel;

    procedure AlterarCombustivel;
    procedure Abastecer;
    procedure QuantCombustivelBomba;

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Abastecer;
begin
  if not assigned(FBombaCombustivel) then
    FBombaCombustivel := TBombaCombustivel.Create;

  if FBombaCombustivel.Valor <> 0 then
  begin
    case TEnumAbastecer(rgTipoAbastecer.ItemIndex) of
      stPorValor:
      begin
       ShowMessage( FBombaCombustivel.AbastecerPorValor
                   (strToFloat(edtAbastecer.Text)));
      end;

      stPorLitro:
      begin
         ShowMessage(FBombaCombustivel.AbastecerPorLitro
                     (strToFloat(edtAbastecer.Text)));
      end;
      else
        raise Exception.Create('Selecione uma forma de abastecimento');
    end;
  end
  else
  raise Exception.Create('Selecione um combustível');





  lblQuantCombustivel.Caption := FloatToStr(FBombaCombustivel.Quant);
end;

procedure TfrmPrincipal.AlterarCombustivel;
begin
  if not assigned(FBombaCombustivel) then
    FBombaCombustivel := TBombaCombustivel.Create;

  FBombaCombustivel.AlteraCombustível(rgCombustivel.ItemIndex);
  FBombaCombustivel.AlteraValor(StrToCurr(InputBox
                               ('Valor','Insira o valor por litro:','0')));

  ShowMessage( 'O valor de '+
              FBombaCombustivel.Tipo + ' é: ' +
              FormatFloat('R$ ##0.00',FBombaCombustivel.Valor));
end;

procedure TfrmPrincipal.btnAbastecerClick(Sender: TObject);
begin
  Self.Abastecer;
end;

procedure TfrmPrincipal.btnQuantCombustivelClick(Sender: TObject);
begin
  Self.QuantCombustivelBomba;
end;

procedure TfrmPrincipal.QuantCombustivelBomba;
begin
  if not assigned(FBombaCombustivel) then
    FBombaCombustivel := TBombaCombustivel.Create;

  FBombaCombustivel.AlterarQuantidadeCombustível(StrToFloat(InputBox(
  'Combustível Bomba',
  'Insira a quantidade de combustível adicionada na bomba (L): ','0')));

  ShowMessage('Foi adicionado na bomba : ' +
              FormatFloat('###0.00 L',FBombaCombustivel.Quant));

  lblQuantCombustivel.Caption := FloatToStr(FBombaCombustivel.Quant);
end;

procedure TfrmPrincipal.rgCombustivelClick(Sender: TObject);
begin
  Self.AlterarCombustivel;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FBombaCombustivel);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FBombaCombustivel := TBombaCombustivel.Create;
  FBombaCombustivel := nil;
end;

end.
