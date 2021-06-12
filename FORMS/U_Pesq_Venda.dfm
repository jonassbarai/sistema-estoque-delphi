inherited Frm_pesq_venda: TFrm_pesq_venda
  Caption = 'Pesquisa de Vendas'
  ExplicitWidth = 1000
  ExplicitHeight = 621
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited cb_chave_pesquisa: TComboBox
      Items.Strings = (
        'C'#211'DIGO DA VENDA'
        'C'#211'DIGO DO CLIENTE'
        'C'#211'DIGO DA FORMA PGTO'
        'VENDEDOR'
        'NOME DO CLIENTE'
        'DATA DA VENDA'
        'PER'#205'ODO')
    end
    inherited bt_Pesquisa: TBitBtn
      OnClick = bt_PesquisaClick
    end
    inherited bt_transferir: TBitBtn
      OnClick = bt_transferirClick
    end
  end
  inherited q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'SELECT'
      'V.ID_VENDA, V.ID_CLIENTE,C.NOME, V.ID_FORMA_PGTO, FM.descricao,'
      'V.USUARIO, V.CADASTRO, V.VALOR '
      'FROM VENDA V'
      'left JOIN CLIENTE C ON (C.ID_CLIENTE =  V.ID_CLIENTE)'
      'left JOIN FORMA_PGTO FM ON (FM.id_forma_pgto = V.id_forma_pgto)')
    object q_pesq_padraoID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_pesq_padraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object q_pesq_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object q_pesq_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object q_pesq_padraoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object q_pesq_padraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object q_pesq_padraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
  end
end
