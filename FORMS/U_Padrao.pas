unit U_Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, U_DM, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrm_Padrao = class(TForm)
    Panel_usuario: TPanel;
    Panel2: TPanel;
    Btn_Novo: TBitBtn;
    Btn_deletar: TBitBtn;
    Btn_Alterar: TBitBtn;
    Btn_Atualizar: TBitBtn;
    Btn_Cancelar: TBitBtn;
    Btn_Gravar: TBitBtn;
    DBNavigator1: TDBNavigator;
    Btn_Pesquisar: TBitBtn;
    q_padrao: TFDQuery;
    ds_padrao: TDataSource;
    Btn_Sair: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_NovoClick(Sender: TObject);
    procedure Btn_deletarClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_AtualizarClick(Sender: TObject);
    procedure tratarBotoes();
    procedure Btn_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Padrao: TFrm_Padrao;

implementation

{$R *.dfm}

procedure TFrm_Padrao.Btn_AlterarClick(Sender: TObject);
begin
  q_padrao.Open();
  tratarBotoes;
  if messagedlg('Deseja editar este registro?',mtConfirmation,[mbOk,mbNo],0)=mrOk then
  begin
    q_padrao.Edit;
  end
  else begin
    tratarBotoes;
    abort
  end;
end;

procedure TFrm_Padrao.Btn_AtualizarClick(Sender: TObject);
begin
  tratarBotoes();
  q_padrao.Refresh;
  MessageDlg('Registro atualizado com sucesso',mtInformation,[mbOk],0);
end;

procedure TFrm_Padrao.Btn_CancelarClick(Sender: TObject);
begin
  tratarBotoes();
  q_padrao.Cancel;
  MessageDlg('Ação cancelada pelo usuário',mtInformation,[mbOk],0);
end;

procedure TFrm_Padrao.Btn_deletarClick(Sender: TObject);
begin
  tratarBotoes;
  if MessageDlg('deseja deletar esse registro?',mtConfirmation,[mbOk,mbNo],0)= mrOk then
  begin
    q_padrao.Delete;
    MessageDlg('Registro deletado com sucesso',mtInformation,[mbOk],0);
  end
  else
    tratarBotoes;
    abort
end;

procedure TFrm_Padrao.Btn_GravarClick(Sender: TObject);
begin
  tratarBotoes();
  q_padrao.Post;
  MessageDlg('Registro gravado com sucesso',mtInformation,[mbOk],0);
end;

procedure TFrm_Padrao.Btn_NovoClick(Sender: TObject);
begin
  q_padrao.Open();
  tratarBotoes();
  q_padrao.Append;
end;

procedure TFrm_Padrao.Btn_SairClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_Padrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  q_padrao.Close;
end;

procedure TFrm_Padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

  if Key = #27 then
  begin
     close;
  end;

end;

procedure TFrm_Padrao.tratarBotoes;
begin
  Btn_Novo.Enabled := not Btn_Novo.Enabled;
  Btn_deletar.Enabled := not Btn_deletar.Enabled;
  Btn_Alterar.Enabled := not Btn_Alterar.Enabled;
  Btn_Atualizar.Enabled := not Btn_Atualizar.Enabled;
  Btn_Cancelar.Enabled := not Btn_Cancelar.Enabled;
  Btn_Gravar.Enabled := not Btn_Gravar.Enabled;
  Btn_Pesquisar.Enabled := not Btn_Pesquisar.Enabled;
end;

end.
