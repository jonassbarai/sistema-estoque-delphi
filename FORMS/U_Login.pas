unit U_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFrm_login = class(TForm)
    edNome: TEdit;
    EdSenha: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    BtnEntrar: TButton;
    BtnCancelar: TButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnEntrarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_login: TFrm_login;

implementation

{$R *.dfm}

uses U_Principal, U_DM;

procedure TFrm_login.BtnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrm_login.BtnEntrarClick(Sender: TObject);
begin

  dm.q_login.Close();
  dm.q_login.SQL.Clear;
  dm.q_login.Params.Clear;
  dm.q_login.SQL.add
    ('SELECT * FROM USUARIO WHERE NOME =:PNOME AND SENHA =:PSENHA');
  dm.q_login.ParamByName('PNOME').AsString := edNome.Text;
  dm.q_login.ParamByName('PSENHA').AsString := EdSenha.Text;
  dm.q_login.Open;

  if dm.q_login.RecordCount > 0 then
  begin
    dm.usuario := dm.q_login.FieldByName('NOME').AsString;
    dm.tipoUsuario := dm.q_login.FieldByName('TIPO').AsString;
    Frm_Principal := TFrm_Principal.Create(self);
    Frm_Principal.Show;

  end
  else
    MessageDlg('Nome ou senha Incorretos', mtInformation, [mbOK], 0);

end;

procedure TFrm_login.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TFrm_login.FormShow(Sender: TObject);
begin
  edNome.SetFocus;
end;

end.
