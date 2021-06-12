object DM: TDM
  OldCreateOrder = False
  Height = 302
  Width = 597
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\ESTOQUE\EXE\banco\ESTOQUE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'RoleName=win'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 16
    Top = 16
  end
  object Transacao: TFDTransaction
    Connection = Conexao
    Left = 72
    Top = 16
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 160
    Top = 16
  end
  object ds_login: TDataSource
    Left = 144
    Top = 88
  end
  object q_login: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from usuario')
    Left = 72
    Top = 88
  end
  object q_alerta: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      
        'select ID_PRODUTO, DESCRICAO, ESTOQUE_MIN, ESTOQUE from produto ' +
        'Where estoque_min >= estoque')
    Left = 72
    Top = 160
  end
  object ds_alerta: TDataSource
    DataSet = q_alerta
    Left = 136
    Top = 160
  end
end
