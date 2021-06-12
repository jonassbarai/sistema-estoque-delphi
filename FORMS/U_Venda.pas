unit U_Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao_Movimento, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TFrm_Venda = class(TFrm_Padrao_Movimento)
    q_padraoID_VENDA: TIntegerField;
    q_padraoID_CLIENTE: TIntegerField;
    q_padraoID_FORMA_PGTO: TIntegerField;
    q_padraoUSUARIO: TStringField;
    q_padraoVALOR: TFMTBCDField;
    q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DB_ID_VENDA: TDBEdit;
    Label2: TLabel;
    DB_USUARIO: TDBEdit;
    Label3: TLabel;
    DB_CADASTRO: TDBEdit;
    Label4: TLabel;
    DB_ID_CLIENTE: TDBEdit;
    Label5: TLabel;
    DB_ID_FORMA_PGTO: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    ds_cliente: TDataSource;
    ds_forma_pgto: TDataSource;
    q_cliente: TFDQuery;
    q_forma_pgto: TFDQuery;
    q_padraoCLIENTE: TStringField;
    q_padraoFORMA_PGTO: TStringField;
    Label7: TLabel;
    DB_ID_Produto: TDBEdit;
    DB_QTDE: TDBEdit;
    Label10: TLabel;
    Label8: TLabel;
    DB_Desconto: TDBEdit;
    DB_VL_VENDA: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DB_subtotal: TDBEdit;
    DB_VALOR: TDBEdit;
    Label13: TLabel;
    q_padrao_itemID_VENDA: TIntegerField;
    q_padrao_itemSEQUENCIA: TIntegerField;
    q_padrao_itemID_PRODUTO: TIntegerField;
    q_padrao_itemQTDE: TFMTBCDField;
    q_padrao_itemVL_VENDA: TFMTBCDField;
    q_padrao_itemDESCONTO: TFMTBCDField;
    q_padrao_itemTOTAL_ITEM: TFMTBCDField;
    q_produto: TFDQuery;
    q_padrao_itemTOTALVENDA: TAggregateField;
    q_produtoID_PRODUTO: TIntegerField;
    q_produtoDESCRICAO: TStringField;
    q_produtoESTOQUE: TFMTBCDField;
    q_produtoESTOQUE_MIN: TFMTBCDField;
    q_produtoVL_VENDA: TFMTBCDField;
    q_padrao_itemDESCRICAO: TStringField;
    procedure Btn_NovoClick(Sender: TObject);
    procedure BtAddClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DB_ID_ProdutoExit(Sender: TObject);
    procedure DB_QTDEExit(Sender: TObject);
    procedure DB_DescontoExit(Sender: TObject);
    procedure Btn_deletarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Btn_PesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Venda: TFrm_Venda;

implementation

{$R *.dfm}

uses U_DM, U_Pesq_Venda;

procedure TFrm_Venda.BitBtn2Click(Sender: TObject);
begin
  // atualiza o estoque
  q_produto.Edit;
  // q_padrao_item.Edit;
  q_padrao_item.First;
  while not q_padrao_item.eof do
  begin
    if q_produto.Locate('ID_PRODUTO', q_padrao_itemID_PRODUTO.AsInteger, [])
    then
    begin
      q_produto.Edit;
      q_produto.FieldByName('ESTOQUE').AsInteger :=
        q_produto.FieldByName('ESTOQUE').AsInteger - q_padrao_item.FieldByName
        ('QTDE').AsInteger;
      q_padrao_item.Next;
    end;
    q_produto.Refresh;
  end;
  MessageDlg('Estoque atualizado com sucesso!', mtInformation, [mbOK], 0);
  if Btn_Gravar.Enabled then
    tratarBotoes;

end;

procedure TFrm_Venda.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este item?', MtConfirmation, [mbOK, mbNo], 0) = mrOk
  then
  begin
    if q_produto.Locate('ID_PRODUTO', q_padrao_itemID_PRODUTO.AsInteger, [])
    then
      q_produto.Edit;
    q_produto.FieldByName('estoque').AsFloat := q_produto.FieldByName('estoque')
      .AsFloat - q_padrao_itemQTDE.AsFloat;
    q_produto.Refresh;
    q_padrao_item.Delete;

  end
  else
    abort
end;

procedure TFrm_Venda.BtAddClick(Sender: TObject);
var
  proximo: integer;
begin
  DB_ID_Produto.Enabled := true;
  if q_padraoID_VENDA.AsInteger <= 0 then
  begin
    tratarBotoes;
    q_padrao.Post;
  end;

  q_padrao_item.Edit;
  q_padrao_item.Last;
  proximo := q_padrao_itemSEQUENCIA.AsInteger + 1;
  q_padrao_item.Append;
  q_padrao_itemSEQUENCIA.AsInteger := proximo;
  DB_ID_Produto.SetFocus;

end;

procedure TFrm_Venda.Btn_deletarClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir todo o registro?', MtConfirmation, [mbOK, mbNo],
    0) = mrOk then
  begin // Excluir os itens de compra
    q_padrao_item.First;
    while q_padrao_item.RecordCount > 0 do
    begin
      if q_produto.Locate('ID_PRODUTO', q_padrao_itemID_PRODUTO.AsInteger, [])
      then
      begin
        q_produto.Edit;
        q_produto.FieldByName('ESTOQUE').AsFloat :=
          q_produto.FieldByName('ESTOQUE').AsFloat - q_padrao_itemQTDE.AsFloat;
        q_produto.Refresh;
        q_padrao_item.Delete;
        q_padrao_item.Next;
      end;
    end;
    inherited;
  end
  else
    abort;

end;

procedure TFrm_Venda.Btn_NovoClick(Sender: TObject);
begin
  inherited;
  DB_CADASTRO.Text := DateToStr(now);
  DB_USUARIO.Text := dm.usuario;
  DB_VALOR.Text := IntToStr(0);
  DB_ID_CLIENTE.SetFocus;

end;

procedure TFrm_Venda.Btn_PesquisarClick(Sender: TObject);
begin
  Frm_pesq_venda := TFrm_pesq_venda.Create(Self);
  Frm_pesq_venda.ShowModal;

  try
    if Frm_pesq_venda.codigo > 0 then
    begin
      q_padrao.Open();
      q_padrao.Locate('ID_VENDA', Frm_pesq_venda.codigo, []);
      q_padrao_item.Open();
    end;
  finally
    Frm_pesq_venda.Free;
    Frm_pesq_venda := nil;
  end;

end;

procedure TFrm_Venda.DB_DescontoExit(Sender: TObject);
begin
  if q_padrao_itemID_PRODUTO.AsInteger > 0 then
    q_padrao_item.Edit;
  q_padrao_itemTOTAL_ITEM.AsFloat :=
    (q_padrao_itemQTDE.AsFloat * q_padrao_itemVL_VENDA.AsFloat) -
    (q_padrao_itemDESCONTO.AsFloat);
  q_padrao_item.Post;
  q_padrao.Edit;
  q_padraoVALOR.AsFloat := q_padrao_item.AggFields.FieldByName
    ('TOTALVENDA').Value;
  q_padrao.Post;

end;

procedure TFrm_Venda.DB_ID_ProdutoExit(Sender: TObject);
begin
  if q_padrao_itemID_PRODUTO.AsInteger > 0 then
    if q_produto.Locate('ID_PRODUTO', q_padrao_item.FieldByName('ID_PRODUTO')
      .AsInteger, []) then

    begin
      q_padrao_itemQTDE.AsFloat := 1;
      q_padrao_itemDESCONTO.AsFloat := 0;
      q_padrao_itemVL_VENDA.AsFloat :=
        q_produto.FieldByName('vl_VENDA').AsFloat;
      q_padrao_itemTOTAL_ITEM.AsFloat :=
        (q_padrao_itemQTDE.AsFloat * q_padrao_itemVL_VENDA.AsFloat) -
        (q_padrao_itemDESCONTO.AsFloat);
      q_padrao_item.Post;
      q_padrao.Edit;
      q_padraoVALOR.AsFloat := q_padrao_item.AggFields.FieldByName
        ('TOTALVENDA').Value;
      q_padrao.Post;
      BtAdd.SetFocus;
    end
    else
    begin
      MessageDlg('Produto não encontrado!', mtInformation, [mbOK], 0);
      q_padrao_item.Cancel;
      BtAdd.SetFocus
    end

end;

procedure TFrm_Venda.DB_QTDEExit(Sender: TObject);
begin
  if q_padrao_itemID_PRODUTO.AsInteger > 0 then
    if q_produto.Locate('ID_PRODUTO', q_padrao_item.FieldByName('ID_PRODUTO')
      .AsInteger, []) then
    begin
      if q_padrao_itemID_PRODUTO.AsInteger > 0 then
        q_padrao_item.Edit;
      q_padrao_itemTOTAL_ITEM.AsFloat :=
        (q_padrao_itemQTDE.AsFloat * q_padrao_itemVL_VENDA.AsFloat) -
        (q_padrao_itemDESCONTO.AsFloat);
      q_padrao_item.Post;
      q_padrao.Edit;
      q_padraoVALOR.AsFloat := q_padrao_item.AggFields.FieldByName
        ('TOTALVENDA').Value;
      q_padrao.Post;
    end;

end;

procedure TFrm_Venda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dm.q_alerta.Close;
  dm.mostraAlerta;
end;

end.
