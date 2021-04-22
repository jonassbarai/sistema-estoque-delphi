unit U_pesq_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Pesquisa_Padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_Pesq_Cliente = class(TFrm_pesquisa_padrao)
    q_pesq_padraoID_CLIENTE: TIntegerField;
    q_pesq_padraoNOME: TStringField;
    q_pesq_padraoENDERECO: TStringField;
    q_pesq_padraoNUMERO: TIntegerField;
    q_pesq_padraoBAIRRO: TStringField;
    q_pesq_padraoCIDADE: TStringField;
    q_pesq_padraoUF: TStringField;
    q_pesq_padraoCEP: TStringField;
    q_pesq_padraoTELEFONE: TStringField;
    q_pesq_padraoCPF: TStringField;
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
  Frm_Pesq_Cliente: TFrm_Pesq_Cliente;

implementation

{$R *.dfm}

procedure TFrm_Pesq_Cliente.bt_PesquisaClick(Sender: TObject);
begin
  Q_pesq_padrao.Close; // fecha
  Q_pesq_padrao.SQL.Add(''); // limpa
  Q_pesq_padrao.Params.Clear; // limpamos os parametros
  Q_pesq_padrao.SQL.Clear; // limPa o sql
  Q_pesq_padrao.SQL.Add('SELECT ID_CLIENTE, ' + 'NOME ,' + 'ENDERECO ,' +
    'NUMERO ,' + 'BAIRRO ,' + 'CIDADE ,' + 'UF , ' + 'CEP ,' + 'TELEFONE ,' +
    'CPF ,' + 'CADASTRO ' + 'FROM CLIENTE'); // add sql

  case cb_chave_pesquisa.ItemIndex of
    0:
      begin // pesquisa por codigo
        Q_pesq_padrao.SQL.Add('WHERE ID_CLIENTE =:PID_CLIENTE');
        // criamos o parametro
        Q_pesq_padrao.ParamByName('PID_CLIENTE').AsString := E_pesquisa.Text;
        // aponta para o campo do parametro

      end;

    1:
      begin // pesquisa por nome
        Q_pesq_padrao.SQL.Add('WHERE NOME LIKE :PNOME'); // criamos o parametro
        Q_pesq_padrao.ParamByName('PNOME').AsString :=
          '%' + E_pesquisa.Text + '%';
        // aponta para o campo do parametro

      end;

    2:
      begin // pesquisa por dadta
        Q_pesq_padrao.SQL.Add('WHERE CADASTRO =:PCADASTRO');
        Q_pesq_padrao.ParamByName('PCADASTRO').AsDate :=
          strTodate(mk_inicio.Text);
      end;

    3:
      begin // pesquisa por periodo
        Q_pesq_padrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM');
        Q_pesq_padrao.ParamByName('PINICIO').AsDate :=
          strTodate(mk_inicio.Text);
        Q_pesq_padrao.ParamByName('PFIM').AsDate := strTodate(mk_fim.Text);
      end;

  end;

  // abre a query mostra o resultado
  Q_pesq_padrao.Open;

  // Mostra a quantidade de registros encontrados
  // lb_Resultado.Caption := ' Total de Registros Localizados:   ' +  IntTostr(Q_pesq_padrao.recordcount);

  // se nada for encontrado mostra a msg
  if Q_pesq_padrao.IsEmpty then
  begin
    Messagedlg('Registro n�o encontrado!', MtInformation, [mbOk], 0);
  end
  else
    abort;

end;

procedure TFrm_Pesq_Cliente.bt_transferirClick(Sender: TObject);
begin
  if Q_pesq_padrao.RecordCount > 0 then
  begin
    codigo := q_pesq_padraoID_CLIENTE.AsInteger;
  end
  else
    abort
end;

procedure TFrm_Pesq_Cliente.DBGrid1DblClick(Sender: TObject);
begin
  bt_transferir.Click;

end;

end.
