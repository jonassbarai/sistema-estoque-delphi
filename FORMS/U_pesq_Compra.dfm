inherited Frm_pesq_compra: TFrm_pesq_compra
  Caption = 'Pesquisa de Compra'
  ExplicitWidth = 1000
  ExplicitHeight = 621
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited cb_chave_pesquisa: TComboBox
      Items.Strings = (
        'C'#211'DIGO DA COMPRA'
        'C'#211'DIGO DO FORNECEDOR'
        'C'#211'DIGO DA FORMA PGTO'
        'COMPRADOR'
        'NOME'
        'CADASTRO'
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
      
        'C.ID_COMPRA, C.ID_FORNECEDOR,F.NOME, C.ID_FORMA_PGTO, FM.descric' +
        'ao,'
      'C.USUARIO, C.CADASTRO, C.VALOR '
      'FROM COMPRA C'
      'left JOIN FORNECEDOR F ON (F.id_fornecedor =  C.id_fornecedor)'
      'left JOIN FORMA_PGTO FM ON (FM.id_forma_pgto = C.id_forma_pgto)')
    Left = 840
    Top = 144
    object q_pesq_padraoID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_pesq_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
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
  inherited ds_padrao: TDataSource
    Left = 832
    Top = 208
  end
end
