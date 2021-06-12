unit U_Pesq_Venda;

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
  TFrm_pesq_venda = class(TFrm_pesquisa_padrao)
    q_pesq_padraoID_VENDA: TIntegerField;
    q_pesq_padraoID_CLIENTE: TIntegerField;
    q_pesq_padraoNOME: TStringField;
    q_pesq_padraoID_FORMA_PGTO: TIntegerField;
    q_pesq_padraoDESCRICAO: TStringField;
    q_pesq_padraoUSUARIO: TStringField;
    q_pesq_padraoCADASTRO: TDateField;
    q_pesq_padraoVALOR: TFMTBCDField;
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure bt_PesquisaClick(Sender: TObject);
    procedure bt_transferirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesq_venda: TFrm_pesq_venda;

implementation

{$R *.dfm}

procedure TFrm_pesq_venda.bt_PesquisaClick(Sender: TObject);
begin
  Q_pesq_padrao.Close; // fecha
  Q_pesq_padrao.SQL.Add(''); // limpa
  Q_pesq_padrao.Params.Clear; // limpamos os parametros
  Q_pesq_padrao.SQL.Clear; // limPa o sql
  Q_pesq_padrao.SQL.Add('SELECT V.id_VENDA,' + 'V.ID_CLIENTE,' + 'C.NOME,' +
    'V.ID_FORMA_PGTO,' + 'FM.descricao,' + 'V.USUARIO,' + 'V.CADASTRO, ' +
    'V.VALOR' + ' FROM VENDA V' +
    ' left JOIN CLIENTE C ON (C.id_CLIENTE =  V.id_CLIENTE)' +
    ' left JOIN FORMA_PGTO FM ON (FM.id_forma_pgto = V.id_forma_pgto)');

  // OPÇÕES DE PESQUISA
  case cb_chave_pesquisa.ItemIndex of
    0:
      begin // pesquisa por codigo
        Q_pesq_padrao.SQL.Add('WHERE v.ID_VENDA =:PID_VENDA');
        // criamos o parametro
        Q_pesq_padrao.ParamByName('PID_VENDA').AsString := E_pesquisa.Text;
        // aponta para o campo do parametro

      end;

    1:
      begin // pesquisa por ID FORNECEDOR
        Q_pesq_padrao.SQL.Add('WHERE V.ID_CLIENTE  LIKE :PID_CLIENTE');
        // criamos o parametro
        Q_pesq_padrao.ParamByName('PID_CLIENTE').AsString := E_pesquisa.Text;
        // aponta para o campo do parametro

      end;

    2:
      begin // pesquisa por ID FORMA PGTO
        Q_pesq_padrao.SQL.Add('WHERE fm.ID_FORMA_PGTO =:PID_FORMA_PGTO');
        Q_pesq_padrao.ParamByName('PID_FORMA_PGTO').AsString := E_pesquisa.Text;

      end;

    3:
      begin
        Q_pesq_padrao.SQL.Add('WHERE USUARIO LIKE :PUSUARIO');
        Q_pesq_padrao.ParamByName('PUSUARIO').AsString :=
          '%' + E_pesquisa.Text + '%';
      end;

    4:
      begin
        Q_pesq_padrao.SQL.Add('WHERE C.NOME LIKE :PCLIENTE');
        Q_pesq_padrao.ParamByName('PCLIENTE').AsString :=
          '%' + E_pesquisa.Text + '%';
      end;

    5:
      begin // pesquisa por data
        Q_pesq_padrao.SQL.Add('WHERE v.CADASTRO =:PCADASTRO');
        Q_pesq_padrao.ParamByName('PCADASTRO').AsDate :=
          strTodate(mk_inicio.Text);
      end;

    6:
      begin // pesquisa por periodo
        Q_pesq_padrao.SQL.Add('WHERE v.CADASTRO BETWEEN :PINICIO AND :PFIM');
        Q_pesq_padrao.ParamByName('PINICIO').AsDate :=
          strTodate(mk_inicio.Text);
        Q_pesq_padrao.ParamByName('PFIM').AsDate := strTodate(mk_fim.Text);
      end;

  end;

  // abre a query mostra o resultado
  Q_pesq_padrao.Open;

  // Mostra a quantidade de registros encontrados
  // lb_Resultado.Caption := ' Total de Registros Localizados:   ' +IntTostr(Q_pesq_padrao.recordcount);

  // se nada for encontrado mostra a msg
  if Q_pesq_padrao.IsEmpty then
  begin
    Messagedlg('Registro não encontrado!', MtInformation, [mbOk], 0);
  end
  else
    abort;

end;

procedure TFrm_pesq_venda.bt_transferirClick(Sender: TObject);
begin
  if Q_pesq_padrao.RecordCount > 0 then
  begin
    codigo := q_pesq_padraoID_VENDA.AsInteger;
  end
  else
    abort
end;

procedure TFrm_pesq_venda.cb_chave_pesquisaChange(Sender: TObject);
begin
  if (cb_chave_pesquisa.ItemIndex = 0) or (cb_chave_pesquisa.ItemIndex = 1) or
    (cb_chave_pesquisa.ItemIndex = 2) then
  begin
    // por codigo
    begin
      E_pesquisa.Visible := true;
      Lb_nome.Caption := 'Código';
      E_pesquisa.SetFocus;
      mk_inicio.Visible := false;
      mk_fim.Visible := false;
      Lb_DT_inicio.Visible := false;
      Lb_DT_fim.Visible := false;
    end;
  end
  else if (cb_chave_pesquisa.ItemIndex = 3) or (cb_chave_pesquisa.ItemIndex = 4)
  then
  begin
    // por nome
    E_pesquisa.Visible := true;
    Lb_nome.Caption := 'Nome';
    E_pesquisa.SetFocus;
    mk_inicio.Visible := false;
    mk_fim.Visible := false;
    Lb_DT_inicio.Visible := false;
    Lb_DT_fim.Visible := false;
  end
  else if (cb_chave_pesquisa.ItemIndex = 5) then
  begin
    Lb_nome.Visible := false;
    E_pesquisa.Visible := false;
    Lb_DT_inicio.Visible := true;
    Lb_DT_inicio.Caption := 'Data Cadastro';
    mk_inicio.Visible := true;
    mk_fim.Visible := false;
    Lb_DT_fim.Visible := false;
    mk_inicio.SetFocus;
  end
  else if (cb_chave_pesquisa.ItemIndex = 6) then
  begin
    Lb_nome.Visible := false;
    E_pesquisa.Visible := false;
    Lb_DT_inicio.Visible := true;
    mk_inicio.Visible := true;
    Lb_DT_fim.Visible := true;
    mk_fim.Visible := true;
    Lb_DT_fim.Visible := true;
    Lb_DT_inicio.Caption := 'Início';
    Lb_DT_fim.Caption := 'Fim';
    mk_inicio.SetFocus;
  end;

end;

end.
