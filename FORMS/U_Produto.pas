unit U_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrm_Produto = class(TFrm_Padrao)
    q_padraoDESCRICAO: TStringField;
    q_padraoID_FORNECEDOR: TIntegerField;
    q_padraoVL_CUSTO: TFMTBCDField;
    q_padraoVL_VENDA: TFMTBCDField;
    q_padraoESTOQUE: TFMTBCDField;
    q_padraoESTOQUE_MIN: TFMTBCDField;
    q_padraoUNIDADE: TStringField;
    Label1: TLabel;
    DB_ID_Produto: TDBEdit;
    Label2: TLabel;
    DB_descricao: TDBEdit;
    Label3: TLabel;
    DB_Id_Fornecedor: TDBEdit;
    Label4: TLabel;
    DB_VL_Custo: TDBEdit;
    Label5: TLabel;
    DB_VL_Venda: TDBEdit;
    Label6: TLabel;
    DB_Estoque: TDBEdit;
    Label7: TLabel;
    DB_Estoque_MIN: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    q_padraoNOME: TStringField;
    Label10: TLabel;
    DB_Nome_Fornecedor: TDBEdit;
    DB_Unidade: TDBComboBox;
    q_padraoID_PRODUTO: TIntegerField;
    q_padraoCADASTRO: TDateField;
    DB_CADASTRO: TDBEdit;
    procedure Btn_NovoClick(Sender: TObject);
    procedure Btn_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Produto: TFrm_Produto;

implementation

{$R *.dfm}

uses U_Pesq_Produto;


procedure TFrm_Produto.Btn_NovoClick(Sender: TObject);
begin
  inherited;
  DB_Cadastro.Text := DateToStr(now);
  DB_ID_Produto.SetFocus;
end;

procedure TFrm_Produto.Btn_PesquisarClick(Sender: TObject);
begin
  Frm_Pesq_Produto :=TFrm_Pesq_Produto.Create(self);
  Frm_Pesq_Produto.ShowModal;
  try
   q_padrao.Open;
   q_padrao.Locate('ID_FORNECEDOR',Frm_Pesq_Produto.codigo,[]);
  finally
    Frm_Pesq_Produto.Free;
    Frm_Pesq_Produto:= nil;
  end;
end;

end.
