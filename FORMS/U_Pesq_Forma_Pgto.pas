unit U_Pesq_Forma_Pgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Pesquisa_Padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_Pesq_Forma_Pgto = class(TFrm_pesquisa_padrao)
    q_pesq_padraoID_FORMA_PGTO: TIntegerField;
    q_pesq_padraoDESCRICAO: TStringField;
    q_pesq_padraoCADASTRO: TDateField;
    procedure bt_PesquisaClick(Sender: TObject);
    procedure bt_transferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pesq_Forma_Pgto: TFrm_Pesq_Forma_Pgto;

implementation

{$R *.dfm}

procedure TFrm_Pesq_Forma_Pgto.bt_PesquisaClick(Sender: TObject);
begin
  Q_pesq_padrao.Close; // fecha
  Q_pesq_padrao.SQL.Add(''); // limpa
  Q_pesq_padrao.Params.Clear; // limpamos os parametros
  Q_pesq_padrao.SQL.Clear; // limPa o sql
  Q_pesq_padrao.SQL.Add('SELECT ID_FORMA_PGTO' + ',DESCRICAO'+ ',CADASTRO' +' FROM FORMA_PGTO '); // add sql

  // OPÇÕES DE PESQUISA
  case cb_chave_pesquisa.ItemIndex of
    0:
      begin // pesquisa por codigo
        Q_pesq_padrao.SQL.Add('WHERE ID_FORMA_PGTO =:PID_ID_FORMA_PGTO');
        // criamos o parametro
        Q_pesq_padrao.ParamByName('PID_ID_FORMA_PGTO').AsString := E_pesquisa.Text;
        // aponta para o campo do parametro

      end;

    1:
      begin // pesquisa por nome
        Q_pesq_padrao.SQL.Add('WHERE DESCRICAO LIKE :PDESCRICAO'); // criamos o parametro
        Q_pesq_padrao.ParamByName('PDESCRICAO').AsString := '%' + E_pesquisa.Text + '%';
        // aponta para o campo do parametro

      end;

    2:
      begin // pesquisa por dadta
        Q_pesq_padrao.SQL.Add('WHERE CADASTRO =:PCADASTRO');
        Q_pesq_padrao.ParamByName('PCADASTRO').AsDate := strTodate(mk_inicio.Text);
      end;

    3:
      begin // pesquisa por periodo
        Q_pesq_padrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM');
        Q_pesq_padrao.ParamByName('PINICIO').AsDate := strTodate(mk_inicio.Text);
        Q_pesq_padrao.ParamByName('PFIM').AsDate := strTodate(mk_fim.Text);
      end;

  end;

  // abre a query mostra o resultado
  Q_pesq_padrao.Open;

  // Mostra a quantidade de registros encontrados
  //lb_Resultado.Caption := ' Total de Registros Localizados:   ' +IntTostr(Q_pesq_padrao.recordcount);

  // se nada for encontrado mostra a msg
  if Q_pesq_padrao.IsEmpty then
  begin
    Messagedlg('Registro não encontrado!', MtInformation, [mbOk], 0);
  end
  else
    abort;

end;

procedure TFrm_Pesq_Forma_Pgto.bt_transferirClick(Sender: TObject);
begin
  if Q_pesq_padrao.RecordCount > 0 then
  begin
    codigo := q_pesq_padraoID_FORMA_PGTO.AsInteger;
  end
  else
    abort
end;

procedure TFrm_Pesq_Forma_Pgto.DBGrid1DblClick(Sender: TObject);
begin
  bt_transferir.Click;

end;

end.
