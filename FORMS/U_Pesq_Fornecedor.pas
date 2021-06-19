unit U_Pesq_Fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Pesquisa_Padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet;

type
  TFrm_Pesq_Fornecedor = class(TFrm_pesquisa_padrao)
    q_pesq_padraoID_FORNECEDOR: TIntegerField;
    q_pesq_padraoNOME: TStringField;
    q_pesq_padraoENDERECO: TStringField;
    q_pesq_padraoNUMERO: TIntegerField;
    q_pesq_padraoBAIRRO: TStringField;
    q_pesq_padraoCIDADE: TStringField;
    q_pesq_padraoUF: TStringField;
    q_pesq_padraoCEP: TStringField;
    q_pesq_padraoTELEFONE: TStringField;
    q_pesq_padraoCNPJ: TStringField;
    q_pesq_padraoEMAIL: TStringField;
    q_pesq_padraoCADASTRO: TDateField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure bt_PesquisaClick(Sender: TObject);
    procedure bt_transferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bt_imprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pesq_Fornecedor: TFrm_Pesq_Fornecedor;

implementation

{$R *.dfm}

procedure TFrm_Pesq_Fornecedor.bt_imprimirClick(Sender: TObject);
var
caminho :string;
begin
  // abre relatorio
  caminho := Extractfilepath(Application.ExeName);
  if Frm_Pesq_Fornecedor.rel_pesq_padrao.LoadFromFile(caminho + 'rel_fornecedor.fr3')
  then
  begin
    rel_pesq_padrao.Clear;
    rel_pesq_padrao.LoadFromFile(caminho + 'rel_fornecedor.fr3');
    rel_pesq_padrao.PrepareReport(true);
    rel_pesq_padrao.ShowPreparedReport;
  end
  else
    MessageDlg('Relatório não encontrado', mtInformation, [mbOK], 0);

end;

procedure TFrm_Pesq_Fornecedor.bt_PesquisaClick(Sender: TObject);
begin
  Q_pesq_padrao.Close; // fecha
  Q_pesq_padrao.SQL.Add(''); // limpa
  Q_pesq_padrao.Params.Clear; // limpamos os parametros
  Q_pesq_padrao.SQL.Clear; // limPa o sql
  Q_pesq_padrao.SQL.Add('SELECT ID_FORNECEDOR, ' + 'NOME ,' + 'ENDERECO ,' +
    'NUMERO ,' + 'BAIRRO ,' + 'CIDADE ,' + 'UF , ' + 'CEP ,' + 'TELEFONE ,' +
    'CNPJ ,' + 'EMAIL ,' + 'CADASTRO ' + 'FROM FORNECEDOR'); // add sql

  // OPÇÕES DE PESQUISA
  case cb_chave_pesquisa.ItemIndex of
    0:
      begin // pesquisa por codigo
        Q_pesq_padrao.SQL.Add('WHERE ID_FORNECEDOR =:PID_FORNECEDOR');
        // criamos o parametro
        Q_pesq_padrao.ParamByName('PID_FORNECEDOR').AsString := E_pesquisa.Text;
        // aponta para o campo do parametro

      end;

    1:
      begin // pesquisa por nome
        Q_pesq_padrao.SQL.Add('WHERE NOME LIKE :PNOME'); // criamos o parametro
        Q_pesq_padrao.ParamByName('PNOME').AsString := '%' + E_pesquisa.Text + '%';
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

procedure TFrm_Pesq_Fornecedor.bt_transferirClick(Sender: TObject);
begin
 if Q_pesq_padrao.RecordCount > 0 then
  begin
    codigo := q_pesq_padraoID_FORNECEDOR.AsInteger;
  end
  else
    abort
end;

procedure TFrm_Pesq_Fornecedor.DBGrid1DblClick(Sender: TObject);
begin
 bt_transferir.Click;

end;

end.
