unit U_Padrao_Movimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrm_Padrao_Movimento = class(TFrm_Padrao)
    Panel1: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    BtAdd: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    q_padrao_item: TFDQuery;
    da_padrao_item: TDataSource;
    procedure Btn_deletarClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Padrao_Movimento: TFrm_Padrao_Movimento;

implementation

{$R *.dfm}

procedure TFrm_Padrao_Movimento.Btn_AlterarClick(Sender: TObject);
begin
  inherited;
  q_padrao_item.Open;
  q_padrao_item.Edit;
end;

procedure TFrm_Padrao_Movimento.Btn_deletarClick(Sender: TObject);
begin
q_padrao.Delete;
end;

procedure TFrm_Padrao_Movimento.Btn_NovoClick(Sender: TObject);
begin
  inherited;
  q_padrao_item.Open;
end;

end.
