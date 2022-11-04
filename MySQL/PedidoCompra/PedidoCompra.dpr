program PedidoCompra;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UdmPedidos in 'UdmPedidos.pas' {dmPedidos: TDataModule},
  UfrmCompradores in 'UfrmCompradores.pas' {frmCompradores},
  UfrmFonecedores in 'UfrmFonecedores.pas' {frmFornecedores},
  UfrmUnMedida in 'UfrmUnMedida.pas' {frmUnMedida},
  UfrmProdutos in 'UfrmProdutos.pas' {frmProdutos},
  UfrmPedidos in 'UfrmPedidos.pas' {frmPedidos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmPedidos, dmPedidos);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
