inherited Frm_Usuario: TFrm_Usuario
  Caption = 'Formul'#225'rio Usu'#225'rios'
  Font.Charset = ANSI_CHARSET
  Font.Height = -15
  Font.Name = 'Times New Roman'
  PixelsPerInch = 96
  TextHeight = 17
  object Label1: TLabel [0]
    Left = 13
    Top = 72
    Width = 17
    Height = 19
    Caption = 'ID'
    FocusControl = DB_ID_Usuario
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 13
    Top = 205
    Width = 54
    Height = 19
    Caption = 'SENHA'
    FocusControl = DB_senha
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 13
    Top = 132
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
  object Label4: TLabel [3]
    Left = 226
    Top = 205
    Width = 36
    Height = 19
    Caption = 'TIPO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 440
    Top = 208
    Width = 86
    Height = 19
    Caption = 'CADASTRO'
    FocusControl = DB_cadastro
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  inherited Panel_usuario: TPanel
    TabOrder = 3
    inherited Btn_Atualizar: TBitBtn
      TabOrder = 5
    end
    inherited Btn_Gravar: TBitBtn
      TabOrder = 3
    end
    inherited Btn_Pesquisar: TBitBtn
      OnClick = Btn_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    TabOrder = 4
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DB_ID_Usuario: TDBEdit [7]
    Left = 13
    Top = 96
    Width = 134
    Height = 27
    DataField = 'ID_USUARIO'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object DB_senha: TDBEdit [8]
    Left = 13
    Top = 233
    Width = 173
    Height = 27
    DataField = 'SENHA'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
  end
  object DB_Nome: TDBEdit [9]
    Left = 13
    Top = 157
    Width = 600
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
  object DB_cadastro: TDBEdit [10]
    Left = 440
    Top = 233
    Width = 173
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
    TabOrder = 5
  end
  object DBComboBox1: TDBComboBox [11]
    Left = 226
    Top = 233
    Width = 173
    Height = 27
    DataField = 'TIPO'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO')
    ParentFont = False
    TabOrder = 2
  end
  inherited q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'select id_usuario, nome, senha, tipo, cadastro '
      'from usuario'
      'order by id_usuario')
    object q_padraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object q_padraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object q_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
