{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
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
    procedure BitBtn3Click(Sender: TObject);
    procedure Btn_deletarClick(Sender: TObject);
    procedure DB_QTDEExit(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure DB_DescontoExit(Sender: TObject);
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
  DB_ID_Produto.Enabled := true;
  if q_padraoID_COMPRA.AsInteger <= 0 then
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

procedure TFrm_Compra.BitBtn2Click(Sender: TObject);
begin

  // atualiza o estoque
  q_produto.Edit;
  //q_padrao_item.Edit;
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
  MessageDlg('Estoque atualizado com sucesso!', mtInformation, [mbOK], 0);
    if Btn_Gravar.Enabled then  tratarBotoes;
end;

procedure TFrm_Compra.BitBtn3Click(Sender: TObject);
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

    MessageDlg('Item excluido', mtInformation, [mbOK], 0);

  end
  else
    abort

end;

procedure TFrm_Compra.Btn_AlterarClick(Sender: TObject);
begin
  inherited;
  DB_ID_Produto.Enabled := true;
  tratarBotoes;
end;

procedure TFrm_Compra.Btn_deletarClick(Sender: TObject);
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

procedure TFrm_Compra.Btn_GravarClick(Sender: TObject);
begin
  inherited;
  DB_ID_Fornecedor.Enabled := false;
end;

procedure TFrm_Compra.Btn_NovoClick(Sender: TObject);
begin
  inherited;
  q_padraoCADASTRO.AsDateTime := Date;
  q_padraoUSUARIO.AsString := 'Jonas';
  q_padraoVALOR.AsCurrency := 0.00;
  DB_ID_Fornecedor.SetFocus;

end;

procedure TFrm_Compra.DB_DescontoExit(Sender: TObject);
begin
  if q_padrao_itemID_PRODUTO.AsInteger > 0 then q_padrao_item.Edit;
  q_padrao_itemTOTAL_ITEM.AsFloat :=
    (q_padrao_itemQTDE.AsFloat * q_padrao_itemVL_CUSTO.AsFloat) -
    (q_padrao_itemDESCONTO.AsFloat);
  q_padrao_item.Post;
  q_padrao.Edit;
  q_padraoVALOR.AsFloat := q_padrao_item.AggFields.FieldByName
    ('TOTALCOMPRA').Value;
  q_padrao.Post;

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
      q_padrao.Edit;
      q_padraoVALOR.AsFloat := q_padrao_item.AggFields.FieldByName
        ('TOTALCOMPRA').Value;
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

procedure TFrm_Compra.DB_QTDEExit(Sender: TObject);
begin
  if q_padrao_itemID_PRODUTO.AsInteger > 0 then
    if q_produto.Locate('ID_PRODUTO', q_padrao_item.FieldByName('ID_PRODUTO')
      .AsInteger, []) then
    begin
    if q_padrao_itemID_PRODUTO.AsInteger > 0 then q_padrao_item.Edit;
      q_padrao_itemTOTAL_ITEM.AsFloat :=
        (q_padrao_itemQTDE.AsFloat * q_padrao_itemVL_CUSTO.AsFloat) -
        (q_padrao_itemDESCONTO.AsFloat);
      q_padrao_item.Post;
      q_padrao.Edit;
      q_padraoVALOR.AsFloat := q_padrao_item.AggFields.FieldByName
        ('TOTALCOMPRA').Value;
      q_padrao.Post;
    end;

end;

end.
