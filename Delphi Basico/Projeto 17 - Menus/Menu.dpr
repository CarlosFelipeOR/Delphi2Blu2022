program Menu;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {TfrmPrincipal},
  UfrmClientes in 'UfrmClientes.pas' {frmCliente},
  UfrmFornecedores in 'UfrmFornecedores.pas' {frmFornecedores},
  UfrmProdutos in 'UfrmProdutos.pas' {frmProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
