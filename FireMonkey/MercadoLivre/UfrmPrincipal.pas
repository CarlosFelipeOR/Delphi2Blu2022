unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    VertScrollBox1: TVertScrollBox;
    rect_valores: TRectangle;
    lblTitulo: TLabel;
    lytProduto: TLayout;
    lblTitutoProduto: TLabel;
    lblCentavosProduto: TLabel;
    lblReaisProdutos: TLabel;
    lytEnvio: TLayout;
    lblCentavosEnvio: TLabel;
    lblReaisEnvio: TLabel;
    lblTituloEnvio: TLabel;
    linhaEnvio: TLine;
    lytParcelas: TLayout;
    lblCentavosParcelas: TLabel;
    lblReaisParcelas: TLabel;
    lblTituloParcelas: TLabel;
    lytBotaoCompra: TLayout;
    Rectangle1: TRectangle;
    btnComprar: TSpeedButton;
    lytCompraOk: TLayout;
    Image1: TImage;
    lytLoadingCompra: TLayout;
    rectBarra: TRectangle;
    rectFundo: TRectangle;
    Label1: TLabel;
    rectFundoBrancoTop: TRectangle;
    lytDetalhes: TLayout;
    rectFundoBrancoBottom: TRectangle;
    CirculoProduto: TCircle;
    lblProduto: TLabel;
    lblQuantidade: TLabel;
    linhaProduto: TLine;
    CirculoEndereco: TCircle;
    lblEndereco: TLabel;
    lblComplemento: TLabel;
    lblComprador: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnComprarClick(Sender: TObject);
  private
    Floop : String;

    procedure LoadingCompra(aInd: Boolean);
    procedure Comprar_WS;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

{ TForm1 }

procedure TfrmPrincipal.btnComprarClick(Sender: TObject);
begin
  Self.LoadingCompra(True);
  rectBarra.Margins.Right := rectFundo.Width;
  Floop := 'S';

  Self.Comprar_WS;

  TThread.CreateAnonymousThread(procedure
  begin
    while Floop = 'S' do
    begin
      if rectBarra.Margins.Right <= 0 then
        rectBarra.Margins.Right := rectFundo.Width;

      Sleep(150);

      TThread.Synchronize(nil, procedure
      begin
        rectBarra.Margins.Right := rectBarra.Margins.Right - 1;
      end);
    end;

    //Finalizou com erro...
    if Floop = 'ERRO' then
    begin
      TThread.Synchronize(nil, procedure
      begin
        Self.LoadingCompra(False);
        ShowMessage('Erro ao finalizar compra');
      end);
    end;

    //Finalizou com sucesso...
    if Floop = 'OK' then
    begin
      TThread.Synchronize(nil, procedure
      begin
        lytLoadingCompra.AnimateFloat('Margins.Left', 150, 0.3);
        lytLoadingCompra.AnimateFloat('Margins.Right', 150, 0.3);
        lytLoadingCompra.AnimateFloat('Opacity', 0, 0.3)
      end);

      Sleep(450);

      TThread.Synchronize(nil, procedure
      begin
        lytCompraOk.Visible := True;
        lytCompraOk.AnimateFloat('Opacity', 1, 0.4);
      end);

      Sleep(1000);

      TThread.Synchronize(nil, procedure
      begin
        ShowMessage('Compra realizada com sucesso');
      end);
    end;
  end).Start;

end;

procedure TfrmPrincipal.Comprar_WS;
begin
  TThread.CreateAnonymousThread(procedure
  begin
    Sleep(5000);
    //...
    //...
    //...
    Floop := 'OK';
    end).Start;
end;


procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  Self.LoadingCompra(False);
end;

procedure TfrmPrincipal.LoadingCompra(aInd: Boolean);
begin
  rectFundoBrancoTop.Visible  := aInd;
  rectFundoBrancoBottom.Visible := aInd;

  lytBotaoCompra.Visible   := not aInd;
  lytLoadingCompra.Visible := aInd;
  lytCompraOk.Visible      := False;
  lytCompraOk.Opacity      := 0;
end;

end.
