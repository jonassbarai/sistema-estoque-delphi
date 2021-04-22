unit U_Fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrm_Fornecedor = class(TFrm_Padrao)
    q_padraoID_FORNECEDOR: TFDAutoIncField;
    q_padraoNOME: TStringField;
    q_padraoENDERECO: TStringField;
    q_padraoNUMERO: TIntegerField;
    q_padraoBAIRRO: TStringField;
    q_padraoCIDADE: TStringField;
    q_padraoUF: TStringField;
    q_padraoCEP: TStringField;
    q_padraoTELEFONE: TStringField;
    q_padraoCNPJ: TStringField;
    q_padraoEMAIL: TStringField;
    q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DB_Nome: TDBEdit;
    Label3: TLabel;
    DB_Endereco: TDBEdit;
    Label4: TLabel;
    DB_Numero: TDBEdit;
    Label5: TLabel;
    DB_Bairro: TDBEdit;
    Label6: TLabel;
    DB_Cidade: TDBEdit;
    Label7: TLabel;
    DB_UF: TDBEdit;
    Label8: TLabel;
    DB_CEP: TDBEdit;
    Label9: TLabel;
    DB_Telefone: TDBEdit;
    Label10: TLabel;
    DB_CNPJ: TDBEdit;
    Label11: TLabel;
    DB_Email: TDBEdit;
    Label12: TLabel;
    DB_Cadastro: TDBEdit;
    procedure Btn_NovoClick(Sender: TObject);
    procedure Btn_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Fornecedor: TFrm_Fornecedor;

implementation

{$R *.dfm}

uses U_Pesq_Fornecedor;

procedure TFrm_Fornecedor.Btn_NovoClick(Sender: TObject);
begin
  inherited;
  DB_Cadastro.Text := DateToStr(now);
  DB_Nome.SetFocus;
end;

procedure TFrm_Fornecedor.Btn_PesquisarClick(Sender: TObject);
begin
  Frm_Pesq_Fornecedor:=TFrm_Pesq_Fornecedor.Create(self);
  Frm_Pesq_Fornecedor.ShowModal;
  try
   q_padrao.Open;
   q_padrao.Locate('ID_FORNECEDOR',Frm_Pesq_Fornecedor.codigo,[]);
  finally
   Frm_Pesq_Fornecedor.Free;
   Frm_Pesq_Fornecedor:=nil;
  end;
end;

end.
