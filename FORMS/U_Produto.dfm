inherited Frm_Produto: TFrm_Produto
  Caption = 'Cadastro de produtos'
  ClientHeight = 447
  ExplicitHeight = 476
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 64
    Top = 80
    Width = 104
    Height = 19
    Caption = 'ID_PRODUTO'
    FocusControl = DB_ID_Produto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 64
    Top = 136
    Width = 92
    Height = 19
    Caption = 'DESCRI'#199#195'O'
    FocusControl = DB_descricao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 172
    Top = 260
    Width = 136
    Height = 19
    Caption = 'ID_FORNECEDOR'
    FocusControl = DB_Id_Fornecedor
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 64
    Top = 195
    Width = 83
    Height = 19
    Caption = 'VL_CUSTO'
    FocusControl = DB_VL_Custo
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 241
    Top = 195
    Width = 86
    Height = 19
    Caption = 'VL_VENDA'
    FocusControl = DB_VL_Venda
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 439
    Top = 195
    Width = 74
    Height = 19
    Caption = 'ESTOQUE'
    FocusControl = DB_Estoque
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [6]
    Left = 619
    Top = 195
    Width = 115
    Height = 19
    Caption = 'ESTOQUE_MIN'
    FocusControl = DB_Estoque_MIN
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [7]
    Left = 64
    Top = 260
    Width = 74
    Height = 19
    Caption = 'UNIDADE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel [8]
    Left = 630
    Top = 80
    Width = 86
    Height = 19
    Caption = 'CADASTRO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel [9]
    Left = 328
    Top = 258
    Width = 46
    Height = 21
    Caption = 'NOME'
    FocusControl = DB_Nome_Fornecedor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited Panel_usuario: TPanel
    TabOrder = 9
    inherited Btn_deletar: TBitBtn
      TabOrder = 7
    end
    inherited Btn_Alterar: TBitBtn
      TabOrder = 1
    end
    inherited Btn_Atualizar: TBitBtn
      TabOrder = 2
    end
    inherited Btn_Gravar: TBitBtn
      TabOrder = 3
    end
    inherited Btn_Pesquisar: TBitBtn
      TabOrder = 5
      OnClick = Btn_PesquisarClick
    end
    inherited Btn_Sair: TBitBtn
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Top = 406
    TabOrder = 10
    ExplicitTop = 406
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DB_ID_Produto: TDBEdit [12]
    Left = 64
    Top = 103
    Width = 134
    Height = 27
    DataField = 'ID_PRODUTO'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DB_descricao: TDBEdit [13]
    Left = 64
    Top = 158
    Width = 700
    Height = 27
    DataField = 'DESCRICAO'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DB_Id_Fornecedor: TDBEdit [14]
    Left = 172
    Top = 280
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
    TabOrder = 7
  end
  object DB_VL_Custo: TDBEdit [15]
    Left = 64
    Top = 216
    Width = 153
    Height = 27
    DataField = 'VL_CUSTO'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DB_VL_Venda: TDBEdit [16]
    Left = 241
    Top = 216
    Width = 152
    Height = 27
    DataField = 'VL_VENDA'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DB_Estoque: TDBEdit [17]
    Left = 439
    Top = 216
    Width = 154
    Height = 27
    DataField = 'ESTOQUE'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DB_Estoque_MIN: TDBEdit [18]
    Left = 619
    Top = 220
    Width = 145
    Height = 27
    DataField = 'ESTOQUE_MIN'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DB_Nome_Fornecedor: TDBEdit [19]
    Left = 328
    Top = 278
    Width = 436
    Height = 29
    DataField = 'NOME'
    DataSource = ds_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object DB_Unidade: TDBComboBox [20]
    Left = 64
    Top = 280
    Width = 82
    Height = 27
    DataField = 'UNIDADE'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    Items.Strings = (
      'KG'
      'ML'
      'LT'
      'PCT'
      'P'#199)
    ParentFont = False
    TabOrder = 6
  end
  object DB_CADASTRO: TDBEdit [21]
    Left = 630
    Top = 103
    Width = 134
    Height = 27
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  inherited q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    SQL.Strings = (
      'select p.*,f.nome  from produto p'
      'inner join fornecedor f on( p.id_fornecedor =f.id_fornecedor)'
      'order by id_produto ')
    Left = 824
    Top = 200
    object q_padraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object q_padraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object q_padraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object q_padraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object q_padraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object q_padraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object q_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object q_padraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 824
    Top = 256
  end
end
