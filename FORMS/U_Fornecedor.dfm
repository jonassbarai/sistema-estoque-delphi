inherited Frm_Fornecedor: TFrm_Fornecedor
  Caption = 'cadastro de fornecedores'
  ClientHeight = 504
  ExplicitHeight = 533
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 72
    Top = 70
    Width = 136
    Height = 19
    Caption = 'ID_FORNECEDOR'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 72
    Top = 119
    Width = 49
    Height = 19
    Caption = 'NOME'
    FocusControl = DB_Nome
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 248
    Top = 175
    Width = 88
    Height = 19
    Caption = 'ENDERECO'
    FocusControl = DB_Endereco
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 729
    Top = 180
    Width = 72
    Height = 19
    Caption = 'NUMERO'
    FocusControl = DB_Numero
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 72
    Top = 246
    Width = 61
    Height = 19
    Caption = 'BAIRRO'
    FocusControl = DB_Bairro
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 438
    Top = 246
    Width = 61
    Height = 19
    Caption = 'CIDADE'
    FocusControl = DB_Cidade
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [6]
    Left = 833
    Top = 246
    Width = 21
    Height = 19
    Caption = 'UF'
    FocusControl = DB_UF
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [7]
    Left = 70
    Top = 180
    Width = 31
    Height = 19
    Caption = 'CEP'
    FocusControl = DB_CEP
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel [8]
    Left = 664
    Top = 119
    Width = 82
    Height = 19
    Caption = 'TELEFONE'
    FocusControl = DB_Telefone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel [9]
    Left = 383
    Top = 119
    Width = 40
    Height = 19
    Caption = 'CNPJ'
    FocusControl = DB_CNPJ
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel [10]
    Left = 70
    Top = 304
    Width = 51
    Height = 19
    Caption = 'EMAIL'
    FocusControl = DB_Email
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel [11]
    Left = 729
    Top = 68
    Width = 86
    Height = 19
    Caption = 'CADASTRO'
    FocusControl = DB_Cadastro
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  inherited Panel_usuario: TPanel
    TabOrder = 10
    inherited Btn_deletar: TBitBtn
      TabOrder = 3
    end
    inherited Btn_Alterar: TBitBtn
      TabOrder = 4
    end
    inherited Btn_Atualizar: TBitBtn
      TabOrder = 5
    end
    inherited Btn_Cancelar: TBitBtn
      TabOrder = 2
    end
    inherited Btn_Gravar: TBitBtn
      TabOrder = 1
    end
    inherited Btn_Pesquisar: TBitBtn
      OnClick = Btn_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 463
    TabOrder = 11
    ExplicitTop = 463
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [14]
    Left = 72
    Top = 88
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
    TabOrder = 12
  end
  object DB_Nome: TDBEdit [15]
    Left = 72
    Top = 138
    Width = 305
    Height = 27
    DataField = 'NOME'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DB_Endereco: TDBEdit [16]
    Left = 248
    Top = 200
    Width = 465
    Height = 27
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DB_Numero: TDBEdit [17]
    Left = 729
    Top = 200
    Width = 134
    Height = 27
    DataField = 'NUMERO'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DB_Bairro: TDBEdit [18]
    Left = 72
    Top = 271
    Width = 337
    Height = 27
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object DB_Cidade: TDBEdit [19]
    Left = 438
    Top = 271
    Width = 377
    Height = 27
    DataField = 'CIDADE'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object DB_UF: TDBEdit [20]
    Left = 833
    Top = 271
    Width = 30
    Height = 27
    DataField = 'UF'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object DB_CEP: TDBEdit [21]
    Left = 70
    Top = 200
    Width = 163
    Height = 27
    DataField = 'CEP'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DB_Telefone: TDBEdit [22]
    Left = 664
    Top = 138
    Width = 199
    Height = 27
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DB_CNPJ: TDBEdit [23]
    Left = 383
    Top = 138
    Width = 264
    Height = 27
    DataField = 'CNPJ'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DB_Email: TDBEdit [24]
    Left = 70
    Top = 329
    Width = 791
    Height = 27
    DataField = 'EMAIL'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object DB_Cadastro: TDBEdit [25]
    Left = 729
    Top = 86
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
    TabOrder = 13
  end
  inherited q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORNECEDOR'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'select * from fornecedor order by id_fornecedor')
    Left = 328
    Top = 80
    object q_padraoID_FORNECEDOR: TFDAutoIncField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object q_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object q_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object q_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object q_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object q_padraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object q_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-999;0;_'
      Size = 16
    end
    object q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)00000-0000;0;_'
      Size = 15
    end
    object q_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00.000.000/0000-00;0;_'
    end
    object q_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 272
    Top = 80
  end
end
