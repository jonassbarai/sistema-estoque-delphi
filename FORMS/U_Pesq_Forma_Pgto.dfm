inherited Frm_Pesq_Forma_Pgto: TFrm_Pesq_Forma_Pgto
  Caption = 'pesquisa de formas de pagamentos'
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
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORMA_PGTO'
        Title.Caption = 'ID Forma Pagamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
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
      'SELECT * FROM FORMA_PGTO')
    object q_pesq_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_pesq_padraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
