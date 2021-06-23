unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet;

type
  TFrm_Principal = class(TForm)
    Panel_principal: TPanel;
    Bt_Usuario: TSpeedButton;
    BtnEmpresa: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    BtnFormaPgto: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Usurio1: TMenuItem;
    Empresa1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos1: TMenuItem;
    FormaPgto1: TMenuItem;
    Movimentos1: TMenuItem;
    Compras1: TMenuItem;
    Relatrios1: TMenuItem;
    ListaUsurios1: TMenuItem;
    ListaFornecedores1: TMenuItem;
    ListaClientes1: TMenuItem;
    ListaProdutos1: TMenuItem;
    ListaCompras1: TMenuItem;
    Listavendas1: TMenuItem;
    SobreoSistema1: TMenuItem;
    Vendas1: TMenuItem;
    Ajuda1: TMenuItem;
    PAlerta: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    BtnBalanco: TSpeedButton;
    rel_balanco: TfrxReport;
    db_rel_balanco: TfrxDBDataset;
    procedure SpeedButton7Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Bt_UsuarioClick(Sender: TObject);
    procedure abre_tela_usuario();
    procedure abre_tela_empresa();
    procedure abre_tela_cliente();
    procedure abre_tela_fornecedor();
    procedure abre_tela_produto();
    procedure abre_tela_forma_pgto();
    procedure abre_tela_compra();
    procedure abre_tela_venda();
    procedure abre_tela_login();
    procedure BtnEmpresaClick(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure BtnFormaPgtoClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure FormaPgto1Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnBalancoClick(Sender: TObject);
    procedure Ajuda1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses U_Usuario, U_Empresa, U_Cliente, U_Fornecedor, U_Produto, U_Forma_Pgto,
  U_Compra, U_Venda, U_Login, U_DM, U_Ajuda;

procedure TFrm_Principal.abre_tela_cliente;
begin
  Frm_Cliente := TFrm_Cliente.Create(self);
  Frm_Cliente.ShowModal;
  try

  finally
    Frm_Cliente.Free;
    Frm_Cliente := nil;
  end;
end;

procedure TFrm_Principal.abre_tela_compra;
begin
  Frm_Compra := TFrm_Compra.Create(self);
  Frm_Compra.ShowModal;
  try

  finally
    Frm_Compra.Free;
    Frm_Compra := nil;
  end;
end;

procedure TFrm_Principal.abre_tela_empresa;
begin
  Frm_Empresa := TFrm_Empresa.Create(self);
  Frm_Empresa.ShowModal;
  try

  finally
    Frm_Empresa.Free;
    Frm_Empresa := nil;
  end;
end;

procedure TFrm_Principal.abre_tela_forma_pgto;
begin
  Frm_Forma_pgto := TFrm_Forma_pgto.Create(self);
  Frm_Forma_pgto.ShowModal;
  try

  finally
    Frm_Forma_pgto.Free;
    Frm_Forma_pgto := nil;
  end;
end;

procedure TFrm_Principal.abre_tela_fornecedor;
begin
  Frm_Fornecedor := TFrm_Fornecedor.Create(self);
  Frm_Fornecedor.ShowModal;
  try

  finally
    Frm_Fornecedor.Free;
    Frm_Fornecedor := nil;
  end;
end;

procedure TFrm_Principal.abre_tela_login;
begin
  Frm_Principal.Hide;
  Frm_login.edNome.Clear;
  Frm_login.EdSenha.Clear;
  Frm_login.edNome.SetFocus;

end;

procedure TFrm_Principal.abre_tela_produto;
begin
  Frm_Produto := TFrm_Produto.Create(self);
  Frm_Produto.ShowModal;
  try

  finally
    Frm_Produto.Free;
    Frm_Produto := nil;
  end;
end;

procedure TFrm_Principal.abre_tela_usuario;
begin
  Frm_Usuario := TFrm_Usuario.Create(self);
  Frm_Usuario.ShowModal;
  try

  finally
    Frm_Usuario.Free;
    Frm_Usuario := nil;
  end;
end;

procedure TFrm_Principal.abre_tela_venda;
begin
  Frm_Venda := TFrm_Venda.Create(self);
  Frm_Venda.ShowModal;

  try

  finally
    Frm_Venda.Free;
    Frm_Venda := nil;
  end;
end;

procedure TFrm_Principal.Ajuda1Click(Sender: TObject);
begin
 Frm_Ajuda := TFrm_Ajuda.Create(self);
 Frm_Ajuda.ShowModal;
 try
 
 finally
    Frm_Ajuda.Free;
    Frm_Ajuda :=nil;
 end;
 
end;

procedure TFrm_Principal.Bt_UsuarioClick(Sender: TObject);
begin
  abre_tela_usuario;
end;

procedure TFrm_Principal.Clientes1Click(Sender: TObject);
begin
  abre_tela_cliente;
end;

procedure TFrm_Principal.Compras1Click(Sender: TObject);
begin
  abre_tela_compra;
end;

procedure TFrm_Principal.Empresa1Click(Sender: TObject);
begin
  abre_tela_empresa
end;

procedure TFrm_Principal.FormaPgto1Click(Sender: TObject);
begin
  abre_tela_forma_pgto;
end;

procedure TFrm_Principal.FormShow(Sender: TObject);
begin
  if dm.tipoUsuario = 'APOIO' then
  begin
    Bt_Usuario.Enabled := false;
    BtnEmpresa.Enabled := false;
    BtnFormaPgto.Enabled := false;
  end;

  dm.q_alerta.Close;
  dm.mostraAlerta;

end;

procedure TFrm_Principal.Fornecedores1Click(Sender: TObject);
begin
  abre_tela_fornecedor;
end;

procedure TFrm_Principal.Produtos1Click(Sender: TObject);
begin
  abre_tela_produto;
end;

procedure TFrm_Principal.SpeedButton10Click(Sender: TObject);
begin
  abre_tela_produto;
end;

procedure TFrm_Principal.BtnBalancoClick(Sender: TObject);
var
  vdata, caminho: string;
  mes, ano: integer;
begin
  InputQuery('mes e ano do balanço',
    'digite o mes e ano no formato MM/YYYY ', vdata);

  mes := strtoint(Copy(vdata, 0, 2));
  ano := strtoint(Copy(vdata, 4, 6));

  DM.q_balanco.Close; // fecha
  DM.q_balanco.Params.Clear; // limpamos os parametros
  DM.q_balanco.SQL.Clear; // limPa o sql
  DM.q_balanco.SQL.Add('select p.id_produto,  p.descricao, sum( distinct iv.qtde)as qtde_vendido,sum(distinct ic.qtde)as qtde_comprado from produto p'+
  ' left join item_venda iv on (iv.id_produto=p.id_produto)' +
  ' left join venda v on (v.id_venda =iv.id_venda)' +
  ' left join  item_compra ic on (ic.id_produto=p.id_produto)' +
  ' left join  compra c on (c.id_compra =ic.id_compra)'+
  ' where( extract(month from c.cadastro) = :Pmes or extract(month from v.cadastro) = :Pmes)'+
  ' and  (extract(year from v.cadastro) = :Pano or  extract(year from c.cadastro) = :Pano)'+
  ' group by p.id_produto, p.descricao');

  DM.q_balanco.ParamByName('Pmes').AsInteger := mes;
  DM.q_balanco.ParamByName('Pano').AsInteger := ano;
  DM.q_balanco.Open;

  caminho := Extractfilepath(Application.ExeName);
  if rel_balanco.LoadFromFile(caminho + 'rel_balanco.fr3')
  then
  begin
    rel_balanco.Clear;
    rel_balanco.LoadFromFile(caminho + 'rel_balanco.fr3');
    rel_balanco.PrepareReport(true);
    rel_balanco.ShowPreparedReport;
  end
  else
    MessageDlg('Relatório não encontrado', mtInformation, [mbOK], 0);

end;

procedure TFrm_Principal.BtnEmpresaClick(Sender: TObject);
begin
  abre_tela_empresa;
end;

procedure TFrm_Principal.SpeedButton3Click(Sender: TObject);
begin
  abre_tela_cliente;
end;

procedure TFrm_Principal.SpeedButton4Click(Sender: TObject);
begin
  abre_tela_fornecedor;
end;

procedure TFrm_Principal.SpeedButton5Click(Sender: TObject);
begin
  abre_tela_venda;
end;

procedure TFrm_Principal.BtnFormaPgtoClick(Sender: TObject);
begin
  abre_tela_forma_pgto;
end;

procedure TFrm_Principal.SpeedButton7Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrm_Principal.SpeedButton8Click(Sender: TObject);
begin
  abre_tela_login;
end;

procedure TFrm_Principal.SpeedButton9Click(Sender: TObject);
begin
  abre_tela_compra;
end;

procedure TFrm_Principal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := DateToStr(Now);
  StatusBar1.Panels[1].Text := TimeToStr(Now);
  StatusBar1.Panels[2].Text := UpperCase(dm.usuario) + ', SEJA BEM VINDO';
  StatusBar1.Panels[3].Text := 'USUÁRIO TIPO: ' + dm.tipoUsuario;
end;

procedure TFrm_Principal.Usurio1Click(Sender: TObject);
begin
  abre_tela_usuario;
end;

procedure TFrm_Principal.Vendas1Click(Sender: TObject);
begin
  abre_tela_venda;
end;

end.
