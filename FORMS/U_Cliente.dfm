inherited Frm_Cliente: TFrm_Cliente
  Caption = 'Cadastro de Clientes'
  ClientHeight = 459
  ExplicitHeight = 488
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 61
    Top = 80
    Width = 93
    Height = 19
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 61
    Top = 122
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
    Left = 208
    Top = 174
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
    Left = 688
    Top = 174
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
    Left = 66
    Top = 235
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
    Left = 464
    Top = 232
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
    Left = 788
    Top = 235
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
    Left = 61
    Top = 174
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
    Left = 615
    Top = 124
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
    Left = 389
    Top = 124
    Width = 30
    Height = 19
    Caption = 'CPF'
    FocusControl = DB_CPF
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel [10]
    Left = 688
    Top = 75
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
    TabOrder = 9
    inherited Btn_Cancelar: TBitBtn
      TabOrder = 7
    end
    inherited Btn_Gravar: TBitBtn
      TabOrder = 6
    end
    inherited Btn_Pesquisar: TBitBtn
      TabOrder = 4
      OnClick = Btn_PesquisarClick
    end
    inherited Btn_Sair: TBitBtn
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    Top = 418
    TabOrder = 10
    ExplicitTop = 418
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [13]
    Left = 61
    Top = 96
    Width = 134
    Height = 27
    DataField = 'ID_CLIENTE'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object DB_Nome: TDBEdit [14]
    Left = 56
    Top = 141
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
  object DB_Endereco: TDBEdit [15]
    Left = 208
    Top = 197
    Width = 452
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
  object DB_Numero: TDBEdit [16]
    Left = 688
    Top = 197
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
  object DB_Bairro: TDBEdit [17]
    Left = 56
    Top = 251
    Width = 377
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
  object DB_Cidade: TDBEdit [18]
    Left = 464
    Top = 251
    Width = 296
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
  object DB_UF: TDBEdit [19]
    Left = 792
    Top = 251
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
  object DB_CEP: TDBEdit [20]
    Left = 61
    Top = 197
    Width = 124
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
  object DB_Telefone: TDBEdit [21]
    Left = 615
    Top = 141
    Width = 207
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
  object DB_CPF: TDBEdit [22]
    Left = 389
    Top = 141
    Width = 198
    Height = 27
    DataField = 'CPF'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DB_Cadastro: TDBEdit [23]
    Left = 688
    Top = 91
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
    TabOrder = 12
  end
  inherited q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_CLIENTE'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'select * from cliente ORDER BY id_cliente;')
    Left = 840
    Top = 296
    object q_padraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
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
    object q_padraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '000\-000\-000\-00;0;_'
    end
    object q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 840
    Top = 352
  end
end
