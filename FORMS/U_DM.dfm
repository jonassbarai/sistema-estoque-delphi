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
end
