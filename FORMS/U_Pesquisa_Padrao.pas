unit U_Pesquisa_Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TFrm_pesquisa_padrao = class(TForm)
    Panel1: TPanel;
    cb_chave_pesquisa: TComboBox;
    Label1: TLabel;
    E_pesquisa: TEdit;
    MK_inicio: TMaskEdit;
    MK_fim: TMaskEdit;
    Lb_nome: TLabel;
    Lb_DT_inicio: TLabel;
    Lb_DT_fim: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    bt_Pesquisa: TBitBtn;
    bt_transferir: TBitBtn;
    bt_imprimir: TBitBtn;
    q_pesq_padrao: TFDQuery;
    ds_padrao: TDataSource;
    ds_pesq_padrao: TfrxDBDataset;
    rel_pesq_padrao: TfrxReport;
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
     codigo :integer;
  end;

var
  Frm_pesquisa_padrao: TFrm_pesquisa_padrao;


implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_pesquisa_padrao.cb_chave_pesquisaChange(Sender: TObject);
begin
  case cb_chave_pesquisa.ItemIndex of
    0: // por codigo
      begin
        E_pesquisa.Visible := true;
        Lb_nome.Caption := 'Código';
        E_pesquisa.SetFocus;
        MK_inicio.Visible := false;
        MK_fim.Visible := false;
        Lb_DT_inicio.Visible := false;
        Lb_DT_fim.Visible := false;
      end;
    1: // por nome
      begin
        E_pesquisa.Visible := true;
        Lb_nome.Caption := 'Nome';
        E_pesquisa.SetFocus;
        MK_inicio.Visible := false;
        MK_fim.Visible := false;
        Lb_DT_inicio.Visible := false;
        Lb_DT_fim.Visible := false;
      end;
    2: // por data
      begin
        Lb_nome.Visible := false;
        E_pesquisa.Visible := false;
        Lb_DT_inicio.Visible := true;
        Lb_DT_inicio.Caption := 'Data Cadastro';
        MK_inicio.Visible := true;
        MK_fim.Visible := false;
        Lb_DT_fim.Visible := false;
        MK_inicio.SetFocus;
      end;
    3: // por periodo
      begin
        Lb_nome.Visible := false;
        E_pesquisa.Visible := false;
        Lb_DT_inicio.Visible := true;
        MK_inicio.Visible := true;
        Lb_DT_fim.Visible := true;
        MK_fim.Visible := true;
        Lb_DT_fim.Visible := true;
        Lb_DT_inicio.Caption := 'Início';
        Lb_DT_fim.Caption := 'Fim';
        MK_inicio.SetFocus;
      end;

  end;
end;

procedure TFrm_pesquisa_padrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 q_pesq_padrao.Close;
end;

procedure TFrm_pesquisa_padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    key:= #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;

  if Key = #27 then
  begin
     close;
  end;

end;

end.
