unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    rect_botoes_sup: TRectangle;
    imgMenu: TImage;
    imgCarrinho: TImage;
    rectPesquisa: TRectangle;
    edtPesquisa: TEdit;
    imgPesquisa: TImage;
    lytAbas: TLayout;
    lblCoffee: TLabel;
    lblNonCoffee: TLabel;
    lytTitulo: TLayout;
    lblTitulo: TLabel;
    flowLytProdutos: TFlowLayout;
    rect_produto1: TRectangle;
    VertScrollBox1: TVertScrollBox;
    Rectangle6: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    rect_produto2: TRectangle;
    Rectangle2: TRectangle;
    Label3: TLabel;
    Label4: TLabel;
    rect_produto4: TRectangle;
    Rectangle4: TRectangle;
    Label5: TLabel;
    Label6: TLabel;
    rect_produto5: TRectangle;
    Rectangle7: TRectangle;
    Label7: TLabel;
    Label8: TLabel;
    rect_produto6: TRectangle;
    Rectangle9: TRectangle;
    Label9: TLabel;
    Label10: TLabel;
    rect_produto3: TRectangle;
    Rectangle11: TRectangle;
    Label11: TLabel;
    Label12: TLabel;
    rect_botoes_inf: TRectangle;
    rect_botao_home: TRectangle;
    Image1: TImage;
    Label13: TLabel;
    imgNotificacao: TImage;
    imgFavoritos: TImage;
    imgConta: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

end.
