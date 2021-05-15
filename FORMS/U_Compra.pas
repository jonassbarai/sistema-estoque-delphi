unit U_Compra;

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
  TFrm_Compra = class(TFrm_Padrao_Movimento)
    q_padraoID_COMPRA: TFDAutoIncField;
    q_padraoID_FORNECEDOR: TIntegerField;
    q_padraoID_FORMA_PGTO: TIntegerField;
    q_padraoUSUARIO: TStringField;
    q_padraoVALOR: TFMTBCDField;
    q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DB_ID_COMPRA: TDBEdit;
    Label3: TLabel;
    DB_Usuario: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DB_ID_Fornecedor: TDBEdit;
    Label7: TLabel;
    DB_Forma_Pgto: TDBEdit;
    DB_Valor: TDBEdit;
    q_fornecedor: TFDQuery;
    q_Forma_pgto: TFDQuery;
    ds_fornecedor: TDataSource;
    q_padraoNOME: TStringField;
    q_padraoDESCRICAO: TStringField;
    Label8: TLabel;
    Label9: TLabel;
    DB_Nome: TDBLookupComboBox;
    DB_Descricao: TDBLookupComboBox;
    q_padrao_itemSEQUENCIA: TIntegerField;
    q_padrao_itemID_COMPRA: TIntegerField;
    q_padrao_itemID_PRODUTO: TIntegerField;
    q_padrao_itemQTDE: TFMTBCDField;
    q_padrao_itemVL_CUSTO: TFMTBCDField;
    q_padrao_itemTOTAL_ITEM: TFMTBCDField;
    q_padrao_itemDESCONTO: TFMTBCDField;
    Label4: TLabel;
    DB_ID_Produto: TDBEdit;
    Label10: TLabel;
    DB_QTDE: TDBEdit;
    Label11: TLabel;
    DB_VL_Custo: TDBEdit;
    Label2: TLabel;
    DB_Desconto: TDBEdit;
    Label12: TLabel;
    DB_subtotal: TDBEdit;
    Label13: TLabel;
    ds_Forma_Pgto: TDataSource;
    q_produto: TFDQuery;
    q_padrao_itemDESCRICAO: TStringField;
    q_padrao_itemTOTALCOMPRA: TAggregateField;
    q_produtoID_PRODUTO: TIntegerField;
    q_produtoDESCRICAO: TStringField;
    q_produtoESTOQUE: TFMTBCDField;
    q_produtoESTOQUE_MIN: TFMTBCDField;
    q_produtoVL_CUSTO: TFMTBCDField;
    procedure Btn_NovoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DB_ID_ProdutoExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Compra: TFrm_Compra;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_Compra.BitBtn1Click(Sender: TObject);
var
  proximo: integer;
begin
  q_padrao.Post;
  q_padrao_item.Open();
  q_padrao_item.Last;
  proximo := q_padrao_itemSEQUENCIA.AsInteger + 1;
  q_padrao_item.Append;
  q_padrao_itemSEQUENCIA.AsInteger := proximo;
  DB_ID_Produto.SetFocus;

end;

procedure TFrm_Compra.BitBtn2Click(Sender: TObject);
begin
  // post para gravar o valor total
  q_padrao.Post;

  // atualiza o estoque
  q_produto.Edit;
  q_padrao_item.First;
  while not q_padrao_item.eof do
  begin
    if q_produto.Locate('ID_PRODUTO', q_padrao_itemID_PRODUTO.AsInteger, [])
    then
    begin
      q_produto.Edit;
      q_produto.FieldByName('ESTOQUE').AsInteger :=
        q_produto.FieldByName('ESTOQUE').AsInteger + q_padrao_item.FieldByName
        ('QTDE').AsInteger;
      q_padrao_item.Next;
    end;
    q_produto.Refresh;
  end;
  MessageDlg('Estoque atualizado com sucesso!',mtInformation,[mbOK],0);
end;

procedure TFrm_Compra.Btn_NovoClick(Sender: TObject);
begin
  inherited;
  q_padraoCADASTRO.AsDateTime := Date;
  q_padraoUSUARIO.AsString := 'Jonas';
  q_padraoVALOR.AsCurrency := 0.00;
  DB_ID_Fornecedor.SetFocus;

end;

procedure TFrm_Compra.DB_ID_ProdutoExit(Sender: TObject);
begin
  if q_padrao_itemID_PRODUTO.AsInteger > 0 then
    if q_produto.Locate('ID_PRODUTO', q_padrao_item.FieldByName('ID_PRODUTO')
      .AsInteger, []) then

    begin
      q_padrao_itemQTDE.AsFloat := 1;
      q_padrao_itemDESCONTO.AsFloat := 0;
      q_padrao_itemVL_CUSTO.AsFloat :=
        q_produto.FieldByName('vl_custo').AsFloat;
      q_padrao_itemTOTAL_ITEM.AsFloat :=
        (q_padrao_itemQTDE.AsFloat * q_padrao_itemVL_CUSTO.AsFloat) -
        (q_padrao_itemDESCONTO.AsFloat);
      q_padrao_item.Post;
      q_padraoVALOR.AsFloat := q_padrao_item.AggFields.FieldByName
        ('TOTALCOMPRA').Value;
      BtAdd.SetFocus;
    end
    else
    begin
      MessageDlg('Produto não encontrado!', mtInformation, [mbOK], 0);
      q_padrao_item.Cancel;
      BtAdd.SetFocus
    end

end;

end.
