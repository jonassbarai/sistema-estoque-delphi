program Controle_estoque;

uses
  Vcl.Forms,
  U_Principal in '..\FORMS\U_Principal.pas' {Frm_Principal},
  U_DM in '..\FORMS\U_DM.pas' {DM: TDataModule},
  U_Padrao in '..\FORMS\U_Padrao.pas' {Frm_Padrao},
  U_Usuario in '..\FORMS\U_Usuario.pas' {Frm_Usuario},
  U_Empresa in '..\FORMS\U_Empresa.pas' {Frm_Empresa},
  U_Cliente in '..\FORMS\U_Cliente.pas' {Frm_Cliente},
  U_Fornecedor in '..\FORMS\U_Fornecedor.pas' {Frm_Fornecedor},
  U_Produto in '..\FORMS\U_Produto.pas' {Frm_Produto},
  U_Forma_Pgto in '..\FORMS\U_Forma_Pgto.pas' {Frm_Forma_pgto},
  U_Pesquisa_Padrao in '..\FORMS\U_Pesquisa_Padrao.pas' {Frm_pesquisa_padrao},
  U_Pesq_Usuario in '..\FORMS\U_Pesq_Usuario.pas' {Frm_Pesq_Usuario},
  U_pesq_Cliente in '..\FORMS\U_pesq_Cliente.pas' {Frm_Pesq_Cliente},
  U_Pesq_Fornecedor in '..\FORMS\U_Pesq_Fornecedor.pas' {Frm_Pesq_Fornecedor},
  U_Pesq_Produto in '..\FORMS\U_Pesq_Produto.pas' {Frm_Pesq_Produto},
  U_Pesq_Forma_Pgto in '..\FORMS\U_Pesq_Forma_Pgto.pas' {Frm_Pesq_Forma_Pgto},
  U_Padrao_Movimento in '..\FORMS\U_Padrao_Movimento.pas' {Frm_Padrao_Movimento},
  U_Compra in '..\FORMS\U_Compra.pas' {Frm_Compra},
  U_Venda in '..\FORMS\U_Venda.pas' {Frm_Venda},
  U_pesq_Compra in '..\FORMS\U_pesq_Compra.pas' {Frm_pesq_compra},
  U_Pesq_Venda in '..\FORMS\U_Pesq_Venda.pas' {Frm_pesq_venda},
  U_Login in '..\FORMS\U_Login.pas' {Frm_login},
  U_Ajuda in '..\FORMS\U_Ajuda.pas' {Frm_Ajuda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_login, Frm_login);
  Application.CreateForm(TFrm_Ajuda, Frm_Ajuda);
  Application.Run;
end.
