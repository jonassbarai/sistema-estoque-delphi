unit U_Forma_Pgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrm_Forma_pgto = class(TFrm_Padrao)
    q_padraoID_FORMA_PGTO: TIntegerField;
    q_padraoDESCRICAO: TStringField;
    q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DB_Descricao: TDBEdit;
    Label3: TLabel;
    DB_Cadastro: TDBEdit;
    procedure Btn_NovoClick(Sender: TObject);
    procedure Btn_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Forma_pgto: TFrm_Forma_pgto;

implementation

{$R *.dfm}

uses U_Pesq_Forma_Pgto;



procedure TFrm_Forma_pgto.Btn_NovoClick(Sender: TObject);
begin
  inherited;
  DB_Cadastro.Text := DateToStr(now);
  DB_Descricao.SetFocus;
end;

procedure TFrm_Forma_pgto.Btn_PesquisarClick(Sender: TObject);
begin
    Frm_Pesq_Forma_Pgto := TFrm_Pesq_Forma_Pgto.Create(self);
    Frm_Pesq_Forma_Pgto.ShowModal;
    try
       q_padrao.Open;
       q_padrao.Locate('ID_FORMA_PGTO',Frm_Pesq_Forma_Pgto.codigo,[]);
    finally
      Frm_Pesq_Forma_Pgto.Free;
      Frm_Pesq_Forma_Pgto := nil;
    end;
end;

end.
