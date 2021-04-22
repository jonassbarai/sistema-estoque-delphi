unit U_Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrm_Empresa = class(TFrm_Padrao)
    q_padraoID_EMPRESA: TIntegerField;
    q_padraoRAZAO_SOCIAL: TStringField;
    q_padraoN_FANTASIA: TStringField;
    q_padraoENDERECO: TStringField;
    q_padraoNUMERO: TIntegerField;
    q_padraoBAIRRO: TStringField;
    q_padraoCIDADE: TStringField;
    q_padraoUF: TStringField;
    q_padraoTELEFONE: TStringField;
    q_padraoCNPJ: TStringField;
    q_padraoEMAIL: TStringField;
    q_padraoCADASTRO: TDateField;
    q_padraoCEP: TStringField;
    q_padraoLOGO: TBlobField;
    Label1: TLabel;
    DB_Id_Empresa: TDBEdit;
    Label2: TLabel;
    DB_Razao_Social: TDBEdit;
    Label3: TLabel;
    DB_N_Fantasia: TDBEdit;
    Label4: TLabel;
    DB_Enderco: TDBEdit;
    Label5: TLabel;
    DB_Numero: TDBEdit;
    Label6: TLabel;
    DB_Bairro: TDBEdit;
    Label7: TLabel;
    DB_Cidade: TDBEdit;
    Label8: TLabel;
    DB_UF: TDBEdit;
    Label9: TLabel;
    Db_Telefone: TDBEdit;
    Label10: TLabel;
    DB_CNPJ: TDBEdit;
    Label11: TLabel;
    DB_Email: TDBEdit;
    Label12: TLabel;
    DB_cadastro: TDBEdit;
    Label13: TLabel;
    DB_CEP: TDBEdit;
    Label14: TLabel;
    DB_Foto: TDBImage;
    Btn_Foto: TBitBtn;
    Btn_Limpa_Foto: TBitBtn;
    OpenDialog1: TOpenDialog;
    procedure Btn_NovoClick(Sender: TObject);
    procedure Btn_FotoClick(Sender: TObject);
    procedure Btn_Limpa_FotoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Empresa: TFrm_Empresa;

implementation

{$R *.dfm}

procedure TFrm_Empresa.Btn_FotoClick(Sender: TObject);
begin
  q_padrao.Edit;
  OpenDialog1.Execute();
  DB_Foto.Picture.LoadFromFile(OpenDialog1.FileName);
  MessageDlg('Imagem inserida com sucesso!',mtInformation,[mbOK],0);
end;

procedure TFrm_Empresa.Btn_Limpa_FotoClick(Sender: TObject);
begin
  q_padrao.Edit;
  q_padraoLOGO.AsVariant := null;
  q_padrao.Refresh;
  MessageDlg('Imagem deletada com sucesso!',mtInformation,[mbOK],0);
end;

procedure TFrm_Empresa.Btn_NovoClick(Sender: TObject);
begin
  inherited;
  DB_cadastro.Text := DateToStr(now);
  DB_Razao_Social.SetFocus;

end;

end.
