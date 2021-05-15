inherited Frm_Compra: TFrm_Compra
  Caption = 'Cadastro de Compras'
  ClientHeight = 561
  ClientWidth = 969
  ExplicitWidth = 975
  ExplicitHeight = 590
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel_usuario: TPanel
    Width = 969
    ExplicitWidth = 969
  end
  inherited Panel2: TPanel
    Top = 506
    Width = 969
    ExplicitTop = 506
    ExplicitWidth = 969
    inherited DBNavigator1: TDBNavigator
      Left = 608
      Top = 6
      Hints.Strings = ()
      ExplicitLeft = 608
      ExplicitTop = 6
    end
    inherited BtAdd: TBitBtn
      Left = 59
      Width = 64
      OnClick = BitBtn1Click
      ExplicitLeft = 59
      ExplicitWidth = 64
    end
    inherited BitBtn2: TBitBtn
      Left = 187
      Width = 65
      OnClick = BitBtn2Click
      ExplicitLeft = 187
      ExplicitWidth = 65
    end
    inherited BitBtn3: TBitBtn
      Left = 315
      Width = 70
      ExplicitLeft = 315
      ExplicitWidth = 70
    end
    inherited BitBtn4: TBitBtn
      Left = 444
      Width = 77
      ExplicitLeft = 444
      ExplicitWidth = 77
    end
  end
  inherited Panel1: TPanel
    Width = 969
    Height = 152
    ExplicitWidth = 969
    ExplicitHeight = 152
    object Label1: TLabel
      Left = 13
      Top = 6
      Width = 96
      Height = 19
      Caption = 'ID_COMPRA'
      FocusControl = DB_ID_COMPRA
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 208
      Top = 6
      Width = 72
      Height = 19
      Caption = 'USUARIO'
      FocusControl = DB_Usuario
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 758
      Top = 6
      Width = 89
      Height = 19
      Caption = 'Data Compra'
      FocusControl = DBEdit5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 15
      Top = 54
      Width = 136
      Height = 19
      Caption = 'ID_FORNECEDOR'
      FocusControl = DB_ID_Fornecedor
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 13
      Top = 103
      Width = 136
      Height = 19
      Caption = 'ID_FORMA_PGTO'
      FocusControl = DB_Forma_Pgto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 208
      Top = 54
      Width = 49
      Height = 19
      Caption = 'NOME'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 208
      Top = 104
      Width = 92
      Height = 19
      Caption = 'DESCRI'#199#195'O'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object DB_ID_COMPRA: TDBEdit
      Left = 13
      Top = 25
      Width = 134
      Height = 27
      DataField = 'ID_COMPRA'
      DataSource = ds_padrao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DB_Usuario: TDBEdit
      Left = 208
      Top = 25
      Width = 493
      Height = 27
      DataField = 'USUARIO'
      DataSource = ds_padrao
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 758
      Top = 25
      Width = 134
      Height = 27
      DataField = 'CADASTRO'
      DataSource = ds_padrao
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DB_ID_Fornecedor: TDBEdit
      Left = 15
      Top = 70
      Width = 134
      Height = 27
      DataField = 'ID_FORNECEDOR'
      DataSource = ds_padrao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DB_Forma_Pgto: TDBEdit
      Left = 13
      Top = 119
      Width = 134
      Height = 27
      DataField = 'ID_FORMA_PGTO'
      DataSource = ds_padrao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DB_Nome: TDBLookupComboBox
      Left = 208
      Top = 71
      Width = 493
      Height = 27
      DataField = 'NOME'
      DataSource = ds_padrao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DB_Descricao: TDBLookupComboBox
      Left = 208
      Top = 119
      Width = 493
      Height = 27
      DataField = 'DESCRICAO'
      DataSource = ds_padrao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  inherited Panel3: TPanel
    Top = 436
    Width = 969
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 436
    ExplicitWidth = 969
    object Label4: TLabel
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
    object Label11: TLabel
      Left = 281
      Top = 7
      Width = 87
      Height = 19
      Caption = 'VL_CUSTO'
      FocusControl = DB_VL_Custo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 410
      Top = 7
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
      Width = 101
      Height = 19
      Caption = 'Total Compra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DB_Valor: TDBEdit
      Left = 742
      Top = 27
      Width = 150
      Height = 27
      DataField = 'VALOR'
      DataSource = ds_padrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DB_ID_Produto: TDBEdit
      Left = 17
      Top = 29
      Width = 134
      Height = 27
      DataField = 'ID_PRODUTO'
      DataSource = da_padrao_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
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
      TabOrder = 2
    end
    object DB_VL_Custo: TDBEdit
      Left = 281
      Top = 29
      Width = 104
      Height = 27
      DataField = 'VL_CUSTO'
      DataSource = da_padrao_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object DB_Desconto: TDBEdit
      Left = 410
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
      TabOrder = 4
    end
    object DB_subtotal: TDBEdit
      Left = 560
      Top = 29
      Width = 141
      Height = 27
      DataField = 'TOTAL_ITEM'
      DataSource = da_padrao_item
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
    Top = 209
    Width = 969
    Height = 227
    DataSource = da_padrao_item
    Columns = <
      item
        Expanded = False
        FieldName = 'SEQUENCIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_COMPRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 378
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_CUSTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCONTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_ITEM'
        Visible = True
      end>
  end
  inherited q_padrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_COMPRA'
    UpdateOptions.AutoIncFields = 'ID_COMPRA'
    SQL.Strings = (
      'select * from compra')
    Left = 912
    Top = 112
    object q_padraoID_COMPRA: TFDAutoIncField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
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
    end
    object q_padraoNOME: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME'
      LookupDataSet = q_fornecedor
      LookupKeyFields = 'ID_FORNECEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORNECEDOR'
      Size = 100
      Lookup = True
    end
    object q_padraoDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = q_Forma_pgto
      LookupKeyFields = 'ID_FORMA_PGTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PGTO'
      Size = 100
      Lookup = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 912
    Top = 160
  end
  inherited q_padrao_item: TFDQuery
    Active = True
    IndexFieldNames = 'ID_COMPRA'
    AggregatesActive = True
    MasterFields = 'ID_COMPRA'
    DetailFields = 'ID_COMPRA'
    Connection = DM.Conexao
    SQL.Strings = (
      'select  '
      
        'SEQUENCIA, ID_COMPRA, ID_PRODUTO, QTDE, VL_CUSTO, TOTAL_ITEM, DE' +
        'SCONTO'
      'FROM ITEM_COMPRA'
      'WHERE ID_COMPRA = :ID_COMPRA')
    Left = 904
    Top = 240
    ParamData = <
      item
        Name = 'ID_COMPRA'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 1
      end>
    object q_padrao_itemSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = 'SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_padrao_itemID_COMPRA: TIntegerField
      DisplayLabel = 'ID Compra'
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_padrao_itemID_PRODUTO: TIntegerField
      DisplayLabel = 'ID Produto'
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object q_padrao_itemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      Precision = 18
      Size = 2
    end
    object q_padrao_itemVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object q_padrao_itemDESCONTO: TFMTBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object q_padrao_itemTOTAL_ITEM: TFMTBCDField
      DisplayLabel = 'Total Item'
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      currency = True
      Precision = 18
      Size = 2
    end
    object q_padrao_itemDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = q_produto
      LookupKeyFields = 'ID_PRODUTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 100
      Lookup = True
    end
    object q_padrao_itemTOTALCOMPRA: TAggregateField
      FieldName = 'TOTALCOMPRA'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_ITEM)'
    end
  end
  inherited da_padrao_item: TDataSource
    DataSet = q_padrao_item
    Left = 904
    Top = 288
  end
  object q_fornecedor: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'select id_fornecedor, nome from fornecedor')
    Left = 760
    Top = 113
  end
  object q_Forma_pgto: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select id_forma_pgto, descricao from forma_pgto order by id_form' +
        'a_pgto')
    Left = 840
    Top = 112
  end
  object ds_fornecedor: TDataSource
    DataSet = q_fornecedor
    Left = 760
    Top = 163
  end
  object ds_Forma_Pgto: TDataSource
    DataSet = q_Forma_pgto
    Left = 841
    Top = 159
  end
  object q_produto: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'select '
      'ID_PRODUTO, DESCRICAO, ESTOQUE, ESTOQUE_MIN, VL_CUSTO'
      'from produto'
      'order by id_produto')
    Left = 824
    Top = 240
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
    object q_produtoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
  end
end
