unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus;

type
  TFrm_Principal = class(TForm)
    Panel_principal: TPanel;
    Bt_Usuario: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
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
    procedure SpeedButton2Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure FormaPgto1Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
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
  U_Compra;

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

procedure TFrm_Principal.SpeedButton2Click(Sender: TObject);
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

procedure TFrm_Principal.SpeedButton6Click(Sender: TObject);
begin
   abre_tela_forma_pgto;
end;

procedure TFrm_Principal.SpeedButton7Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrm_Principal.SpeedButton9Click(Sender: TObject);
begin
 abre_tela_compra;
end;

procedure TFrm_Principal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := DateToStr(Now);
  StatusBar1.Panels[1].Text := DateToStr(Now);
  StatusBar1.Panels[2].Text := 'SEJA BEM VINDO AO SISTEMA!';
end;

procedure TFrm_Principal.Usurio1Click(Sender: TObject);
begin
  abre_tela_usuario;
end;

end.
