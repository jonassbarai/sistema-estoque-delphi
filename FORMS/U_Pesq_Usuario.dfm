inherited Frm_Pesq_Usuario: TFrm_Pesq_Usuario
  Caption = 'Frm_pesquisa_Usuario'
  ExplicitWidth = 1000
  ExplicitHeight = 621
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited bt_Pesquisa: TBitBtn
      OnClick = bt_PesquisaClick
    end
    inherited bt_transferir: TBitBtn
      OnClick = bt_transferirClick
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Title.Caption = 'ID Usu'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 533
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Title.Caption = 'Cadastro'
        Visible = True
      end>
  end
  inherited q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'select id_usuario,nome,tipo,cadastro'
      'from usuario order by id_usuario')
    object q_pesq_padraoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_pesq_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object q_pesq_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
