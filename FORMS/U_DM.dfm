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
    Left = 160
    Top = 72
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
    Top = 144
  end
  object ds_alerta: TDataSource
    DataSet = q_alerta
    Left = 160
    Top = 144
  end
  object q_balanco: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      
        'select p.id_produto,  p.descricao, sum( distinct iv.qtde)as qtde' +
        '_vendido,sum(distinct ic.qtde)as qtde_comprado from produto p'
      'left join item_venda iv on (iv.id_produto=p.id_produto)'
      'left join venda v on (v.id_venda =iv.id_venda)'
      'left join  item_compra ic on (ic.id_produto=p.id_produto)'
      'left join  compra c on (c.id_compra =ic.id_compra)'
      
        'where( extract(month from c.cadastro) = 6 or extract(month from ' +
        'v.cadastro) = 6)'
      
        'and  (extract(year from v.cadastro) = 2021 or  extract(year from' +
        ' c.cadastro) = 2021)'
      'group by p.id_produto, p.descricao')
    Left = 72
    Top = 216
  end
end
