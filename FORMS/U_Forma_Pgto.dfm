inherited Frm_Forma_pgto: TFrm_Forma_pgto
  Caption = 'Cadastros de formas de pagamento'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 48
    Top = 80
    Width = 157
    Height = 21
    Caption = 'ID_FORMA_PGTO'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 48
    Top = 142
    Width = 107
    Height = 21
    Caption = 'DESCRICAO'
    FocusControl = DB_Descricao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 540
    Top = 80
    Width = 102
    Height = 21
    Caption = 'CADASTRO'
    FocusControl = DB_Cadastro
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  inherited Panel_usuario: TPanel
    inherited Btn_Pesquisar: TBitBtn
      OnClick = Btn_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [5]
    Left = 48
    Top = 107
    Width = 134
    Height = 29
    DataField = 'ID_FORMA_PGTO'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DB_Descricao: TDBEdit [6]
    Left = 48
    Top = 169
    Width = 626
    Height = 29
    DataField = 'DESCRICAO'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DB_Cadastro: TDBEdit [7]
    Left = 540
    Top = 107
    Width = 134
    Height = 29
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  inherited q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORMA_PGTO'
    UpdateOptions.AutoIncFields = 'ID_FORMA_PGTO'
    SQL.Strings = (
      'select * from forma_pgto order by id_forma_pgto ')
    object q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object q_padraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
