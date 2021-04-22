unit U_Compra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
    Label2: TLabel;
    Label6: TLabel;
    DB_ID_Fornecedor: TDBEdit;
    Label7: TLabel;
    DB_Forma_Pgto: TDBEdit;
    Label4: TLabel;
    DB_Valor: TDBEdit;
    q_fornecedor: TFDQuery;
    q_Forma_pgto: TFDQuery;
    ds_fornecedor: TDataSource;
    ds_forma_pgto: TDataSource;
    q_padraoNOME: TStringField;
    q_padraoDESCRICAO: TStringField;
    Label8: TLabel;
    Label9: TLabel;
    DB_Nome: TDBLookupComboBox;
    DB_Descricao: TDBLookupComboBox;
    procedure Btn_NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Compra: TFrm_Compra;

implementation

{$R *.dfm}

procedure TFrm_Compra.Btn_NovoClick(Sender: TObject);
begin
  inherited;
  q_padraoCADASTRO.AsDateTime := Date;
  q_padraoUSUARIO.AsString :='Jonas';
  q_padraoVALOR.AsCurrency := 0.00;
  DB_ID_Fornecedor.SetFocus;

end;

end.
