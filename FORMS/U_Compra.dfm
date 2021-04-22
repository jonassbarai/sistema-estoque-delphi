inherited Frm_Compra: TFrm_Compra
  Caption = 'Cadastro de Compras'
  ClientHeight = 561
  ClientWidth = 946
  ExplicitWidth = 952
  ExplicitHeight = 590
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 101
    Top = 99
    Width = 136
    Height = 19
    Caption = 'ID_FORNECEDOR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  inherited Panel_usuario: TPanel
    Width = 946
    ExplicitWidth = 946
  end
  inherited Panel2: TPanel
    Top = 506
    Width = 946
    ExplicitTop = 506
    ExplicitWidth = 946
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel1: TPanel
    Width = 946
    Height = 152
    ExplicitLeft = -8
    ExplicitWidth = 946
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
      Width = 86
      Height = 19
      Caption = 'CADASTRO'
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
      Height = 29
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
    Width = 946
    ExplicitTop = 436
    ExplicitWidth = 946
    object Label4: TLabel
      Left = 765
      Top = 6
      Width = 52
      Height = 21
      Caption = 'VALOR'
      FocusControl = DB_Valor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DB_Valor: TDBEdit
      Left = 764
      Top = 28
      Width = 150
      Height = 29
      DataField = 'VALOR'
      DataSource = ds_padrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 209
    Width = 946
    Height = 227
  end
  inherited q_padrao: TFDQuery
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
    Left = 904
    Top = 232
  end
  inherited da_padrao_item: TDataSource
    Left = 904
    Top = 288
  end
  object q_fornecedor: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select id_fornecedor, nome from fornecedor')
    Left = 760
    Top = 113
  end
  object q_Forma_pgto: TFDQuery
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
    Top = 169
  end
  object ds_forma_pgto: TDataSource
    DataSet = q_Forma_pgto
    Left = 840
    Top = 169
  end
end
