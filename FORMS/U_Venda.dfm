inherited Frm_Venda: TFrm_Venda
  Caption = 'Vendas'
  ClientHeight = 559
  ExplicitTop = -69
  ExplicitHeight = 588
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 504
    ExplicitTop = 504
    inherited DBNavigator1: TDBNavigator
      Left = 608
      Top = 6
      Hints.Strings = ()
      ExplicitLeft = 608
      ExplicitTop = 6
    end
    inherited BtAdd: TBitBtn
      Left = 49
      OnClick = BtAddClick
      ExplicitLeft = 49
    end
    inherited BitBtn2: TBitBtn
      Left = 176
      OnClick = BitBtn2Click
      ExplicitLeft = 176
    end
    inherited BitBtn3: TBitBtn
      Left = 336
      OnClick = BitBtn3Click
      ExplicitLeft = 336
    end
    inherited BitBtn4: TBitBtn
      Left = 448
      ExplicitLeft = 448
    end
  end
  inherited Panel1: TPanel
    Height = 144
    Font.Charset = ANSI_CHARSET
    Font.Height = -17
    Font.Name = 'Times New Roman'
    ParentFont = False
    ExplicitHeight = 144
    object Label1: TLabel
      Left = 13
      Top = 1
      Width = 82
      Height = 19
      Caption = 'ID_VENDA'
      FocusControl = DB_ID_VENDA
    end
    object Label2: TLabel
      Left = 176
      Top = -1
      Width = 90
      Height = 19
      Caption = 'VENDEDOR'
      FocusControl = DB_USUARIO
    end
    object Label3: TLabel
      Left = 651
      Top = -1
      Width = 99
      Height = 19
      Caption = 'DATA VENDA'
      FocusControl = DB_CADASTRO
    end
    object Label4: TLabel
      Left = 11
      Top = 44
      Width = 93
      Height = 19
      Caption = 'ID_CLIENTE'
      FocusControl = DB_ID_CLIENTE
    end
    object Label5: TLabel
      Left = 11
      Top = 91
      Width = 136
      Height = 19
      Caption = 'ID_FORMA_PGTO'
      FocusControl = DB_ID_FORMA_PGTO
    end
    object DB_ID_VENDA: TDBEdit
      Left = 13
      Top = 17
      Width = 134
      Height = 27
      DataField = 'ID_VENDA'
      DataSource = ds_padrao
      TabOrder = 0
    end
    object DB_USUARIO: TDBEdit
      Left = 176
      Top = 17
      Width = 441
      Height = 27
      DataField = 'USUARIO'
      DataSource = ds_padrao
      Enabled = False
      TabOrder = 1
    end
    object DB_CADASTRO: TDBEdit
      Left = 651
      Top = 17
      Width = 134
      Height = 27
      DataField = 'CADASTRO'
      DataSource = ds_padrao
      Enabled = False
      MaxLength = 8
      TabOrder = 2
    end
    object DB_ID_CLIENTE: TDBEdit
      Left = 11
      Top = 64
      Width = 134
      Height = 27
      DataField = 'ID_CLIENTE'
      DataSource = ds_padrao
      TabOrder = 3
    end
    object DB_ID_FORMA_PGTO: TDBEdit
      Left = 11
      Top = 113
      Width = 134
      Height = 27
      DataField = 'ID_FORMA_PGTO'
      DataSource = ds_padrao
      TabOrder = 4
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 176
      Top = 64
      Width = 441
      Height = 27
      DataField = 'CLIENTE'
      DataSource = ds_padrao
      TabOrder = 5
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 176
      Top = 111
      Width = 441
      Height = 27
      DataField = 'FORMA_PGTO'
      DataSource = ds_padrao
      TabOrder = 6
    end
  end
  inherited Panel3: TPanel
    Top = 434
    ExplicitTop = 434
    object Label7: TLabel
      Left = 15
      Top = 7
      Width = 83
      Height = 19
      Caption = 'ID Produto'
      FocusControl = DB_ID_Produto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 174
      Top = 7
      Width = 46
      Height = 19
      Caption = 'QTDE'
      FocusControl = DB_QTDE
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 281
      Top = 6
      Width = 68
      Height = 19
      Caption = 'Desconto'
      FocusControl = DB_Desconto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 410
      Top = 6
      Width = 87
      Height = 19
      Caption = 'Valor Custo'
      FocusControl = DB_VL_VENDA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 560
      Top = 7
      Width = 64
      Height = 19
      Caption = 'SubTotal'
      FocusControl = DB_subtotal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 742
      Top = 7
      Width = 84
      Height = 19
      Caption = 'Total Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DB_ID_Produto: TDBEdit
      Left = 17
      Top = 29
      Width = 134
      Height = 27
      DataField = 'ID_PRODUTO'
      DataSource = da_padrao_item
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnExit = DB_ID_ProdutoExit
    end
    object DB_QTDE: TDBEdit
      Left = 174
      Top = 29
      Width = 89
      Height = 27
      DataField = 'QTDE'
      DataSource = da_padrao_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnExit = DB_QTDEExit
    end
    object DB_Desconto: TDBEdit
      Left = 281
      Top = 29
      Width = 111
      Height = 27
      DataField = 'DESCONTO'
      DataSource = da_padrao_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnExit = DB_DescontoExit
    end
    object DB_VL_VENDA: TDBEdit
      Left = 410
      Top = 31
      Width = 127
      Height = 27
      DataField = 'VL_VENDA'
      DataSource = da_padrao_item
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object DB_subtotal: TDBEdit
      Left = 560
      Top = 29
      Width = 141
      Height = 27
      DataField = 'TOTAL_ITEM'
      DataSource = da_padrao_item
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DB_VALOR: TDBEdit
      Left = 742
      Top = 32
      Width = 150
      Height = 27
      DataField = 'VALOR'
      DataSource = ds_padrao
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 201
    Height = 233
    DataSource = da_padrao_item
  end
  inherited q_padrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_VENDA'
    UpdateOptions.AutoIncFields = 'ID_VENDA'
    SQL.Strings = (
      'SELECT * FROM VENDA')
    Left = 827
    Top = 80
    object q_padraoID_VENDA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object q_padraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object q_padraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object q_padraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object q_padraoCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = q_cliente
      LookupKeyFields = 'ID_CLIENTE'
      LookupResultField = 'NOME'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
    object q_padraoFORMA_PGTO: TStringField
      FieldKind = fkLookup
      FieldName = 'FORMA_PGTO'
      LookupDataSet = q_forma_pgto
      LookupKeyFields = 'ID_FORMA_PGTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PGTO'
      Size = 100
      Lookup = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 827
    Top = 136
  end
  inherited q_padrao_item: TFDQuery
    Active = True
    IndexFieldNames = 'ID_VENDA'
    AggregatesActive = True
    MasterFields = 'ID_VENDA'
    DetailFields = 'ID_VENDA'
    Connection = DM.Conexao
    SQL.Strings = (
      'select * from item_venda')
    Left = 832
    Top = 232
    object q_padrao_itemSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = 'SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_padrao_itemID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_padrao_itemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object q_padrao_itemDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = q_produto
      LookupKeyFields = 'ID_PRODUTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Lookup = True
    end
    object q_padrao_itemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      Precision = 18
      Size = 2
    end
    object q_padrao_itemVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object q_padrao_itemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object q_padrao_itemTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      currency = True
      Precision = 18
      Size = 2
    end
    object q_padrao_itemTOTALVENDA: TAggregateField
      FieldName = 'TOTALVENDA'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_ITEM)'
    end
  end
  inherited da_padrao_item: TDataSource
    DataSet = q_padrao_item
    Left = 832
    Top = 296
  end
  object ds_cliente: TDataSource
    DataSet = q_cliente
    Left = 659
    Top = 160
  end
  object ds_forma_pgto: TDataSource
    DataSet = q_cliente
    Left = 731
    Top = 160
  end
  object q_cliente: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'select ID_CLIENTE, NOME   from CLIENTE'
      'ORDER BY NOME')
    Left = 656
    Top = 105
  end
  object q_forma_pgto: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT ID_FORMA_PGTO, DESCRICAO FROM FORMA_PGTO'
      'ORDER BY DESCRICAO')
    Left = 728
    Top = 105
  end
  object q_produto: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'select '
      'ID_PRODUTO, DESCRICAO, ESTOQUE, ESTOQUE_MIN, VL_VENDA'
      'from produto'
      'order by id_produto')
    Left = 744
    Top = 232
    object q_produtoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_produtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object q_produtoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object q_produtoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object q_produtoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
end
