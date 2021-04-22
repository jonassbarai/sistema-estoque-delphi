unit U_Pesq_Usuario;

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
  TFrm_Pesq_Usuario = class(TFrm_pesquisa_padrao)
    q_pesq_padraoID_USUARIO: TIntegerField;
    q_pesq_padraoNOME: TStringField;
    q_pesq_padraoTIPO: TStringField;
    q_pesq_padraoCADASTRO: TDateField;
    procedure bt_PesquisaClick(Sender: TObject);
    procedure bt_transferirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pesq_Usuario: TFrm_Pesq_Usuario;

implementation

{$R *.dfm}

procedure TFrm_Pesq_Usuario.bt_PesquisaClick(Sender: TObject);
begin
  q_pesq_padrao.Close;
  q_pesq_padrao.Params.Clear;
  q_pesq_padrao.SQL.Clear;
  q_pesq_padrao.SQL.Add('select id_usuario,nome,tipo,cadastro from usuario');
  case cb_chave_pesquisa.ItemIndex of
    0:
      begin // pesquisa por codigo
        q_pesq_padrao.SQL.Add('WHERE ID_USUARIO =:PID_USUARIO');
        // criamos o parametro
        q_pesq_padrao.ParamByName('PID_USUARIO').AsString := E_pesquisa.Text;
        // aponta para o campo do parametro

      end;

    1:
      begin // pesquisa por nome
        q_pesq_padrao.SQL.Add('WHERE NOME LIKE :PNOME'); // criamos o parametro
        q_pesq_padrao.ParamByName('PNOME').AsString := '%' + E_pesquisa.Text +
          '%'; // aponta para o campo do parametro

      end;

    2:
      begin // pesquisa por dadta
        q_pesq_padrao.SQL.Add('WHERE CADASTRO =:PCADASTRO');
        q_pesq_padrao.ParamByName('PCADASTRO').AsDate := strTodate(mk_inicio.Text);
      end;

    3:
      begin // pesquisa por periodo
        q_pesq_padrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM');
        q_pesq_padrao.ParamByName('PINICIO').AsDate :=strTodate(mk_inicio.Text);
        q_pesq_padrao.ParamByName('PFIM').AsDate := strTodate(mk_fim.Text);
      end;

    4:
      begin
        q_pesq_padrao.SQL.Add('ORDER BY ID_USUARIO');

      end;
  end;
  q_pesq_padrao.Open;

  if q_pesq_padrao.IsEmpty then
  begin
    MessageDlg('não foi encontrado nenhum registro!', mtInformation, [mbOK], 0);
  end;
end;
procedure TFrm_Pesq_Usuario.bt_transferirClick(Sender: TObject);
begin
  if Q_pesq_padrao.RecordCount > 0 then
  begin
    codigo := q_pesq_padraoID_USUARIO.AsInteger;
  end
  else
    abort
end;

end.
