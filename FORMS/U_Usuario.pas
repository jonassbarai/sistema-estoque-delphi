unit U_Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_Usuario = class(TFrm_Padrao)
    q_padraoID_USUARIO: TIntegerField;
    q_padraoNOME: TStringField;
    q_padraoSENHA: TStringField;
    q_padraoTIPO: TStringField;
    q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DB_ID_Usuario: TDBEdit;
    Label2: TLabel;
    DB_senha: TDBEdit;
    Label3: TLabel;
    DB_Nome: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DB_cadastro: TDBEdit;
    DBComboBox1: TDBComboBox;
    procedure Btn_NovoClick(Sender: TObject);
    procedure Btn_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Usuario: TFrm_Usuario;

implementation

{$R *.dfm}

uses U_DM, U_Pesq_Usuario;

procedure TFrm_Usuario.Btn_NovoClick(Sender: TObject);
begin
  inherited;
  DB_cadastro.Text := DateToStr(Now);
  DB_Nome.SetFocus;
end;

procedure TFrm_Usuario.Btn_PesquisarClick(Sender: TObject);
begin
  Frm_Pesq_Usuario := TFrm_Pesq_Usuario.Create(self);
  Frm_Pesq_Usuario.ShowModal;
  try
    q_padrao.Open;
    q_padrao.Locate('ID_USUARIO', Frm_Pesq_Usuario.codigo, []);

  finally
    Frm_Pesq_Usuario.Free;
    Frm_Pesq_Usuario := nil;
  end;
end;

end.
