unit U_DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.Client,
  Data.DB, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    Transacao: TFDTransaction;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    ds_login: TDataSource;
    q_login: TFDQuery;
    q_alerta: TFDQuery;
    ds_alerta: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure mostraAlerta();

  var
    usuario, tipoUsuario: string;

  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_Principal;
{$R *.dfm}
{ TDM }

procedure TDM.mostraAlerta;
begin
  q_alerta.Open;
  if q_alerta.RecordCount > 0 then
   Frm_Principal.PAlerta.Visible := true
  else
    Frm_Principal.PAlerta.Visible := false;
end;

end.
