unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    imgProduto: TImage;
    Label1: TLabel;
    Image2: TImage;
    Label3: TLabel;
    imgComprador: TImage;
    imgFornecedor: TImage;
    Label4: TLabel;
    imgUnMedida: TImage;
    Label5: TLabel;
    imgPedidos: TImage;
    Label6: TLabel;
    procedure imgCompradorClick(Sender: TObject);
    procedure imgFornecedorClick(Sender: TObject);
    procedure imgUnMedidaClick(Sender: TObject);
    procedure imgProdutoClick(Sender: TObject);
    procedure imgPedidosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UfrmCompradores, UfrmFonecedores, UfrmUnMedida, UfrmProdutos, UfrmPedidos;

procedure TfrmPrincipal.imgCompradorClick(Sender: TObject);
begin
  if not Assigned(frmCompradores) then
    frmCompradores := TfrmCompradores.Create(Self);

  frmCompradores.Show;
end;

procedure TfrmPrincipal.imgFornecedorClick(Sender: TObject);
begin
  if not Assigned(frmFornecedores) then
    frmFornecedores := TfrmFornecedores.Create(Self);

  frmFornecedores.Show;
end;

procedure TfrmPrincipal.imgPedidosClick(Sender: TObject);
begin
  if not Assigned(frmPedidos) then
    frmPedidos := TfrmPedidos.Create(Self);

  frmPedidos.Show;
end;

procedure TfrmPrincipal.imgProdutoClick(Sender: TObject);
begin
  if not Assigned(frmProdutos) then
    frmProdutos := TfrmProdutos.Create(Self);

  frmProdutos.Show;
end;

procedure TfrmPrincipal.imgUnMedidaClick(Sender: TObject);
begin
  if not Assigned(frmUnMedida) then
    frmUnMedida := TfrmUnMedida.Create(Self);

  frmUnMedida.Show;
end;

end.
