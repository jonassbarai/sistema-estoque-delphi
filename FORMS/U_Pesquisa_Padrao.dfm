object Frm_pesquisa_padrao: TFrm_pesquisa_padrao
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio de pesquisa padr'#227'o'
  ClientHeight = 582
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 89
    Align = alTop
    Color = clMedGray
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 14
      Width = 137
      Height = 19
      Caption = 'Op'#231#245'es de consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lb_nome: TLabel
      Left = 240
      Top = 15
      Width = 48
      Height = 19
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lb_DT_inicio: TLabel
      Left = 472
      Top = 15
      Width = 39
      Height = 19
      Caption = 'In'#237'cio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lb_DT_fim: TLabel
      Left = 592
      Top = 14
      Width = 26
      Height = 19
      Caption = 'Fim'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cb_chave_pesquisa: TComboBox
      Left = 32
      Top = 39
      Width = 177
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = cb_chave_pesquisaChange
      Items.Strings = (
        'C'#211'DIGO'
        'NOME'
        'CADASTRO'
        'PER'#205'ODO')
    end
    object E_pesquisa: TEdit
      Left = 240
      Top = 40
      Width = 209
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object MK_inicio: TMaskEdit
      Left = 472
      Top = 40
      Width = 87
      Height = 27
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
      Text = '  /  /    '
    end
    object MK_fim: TMaskEdit
      Left = 592
      Top = 39
      Width = 87
      Height = 27
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      Text = '  /  /    '
    end
    object bt_Pesquisa: TBitBtn
      Left = 736
      Top = 20
      Width = 73
      Height = 63
      Caption = '&Pesquisar'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCD2E2B9BDCFD8D1D7FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D0E1285A
        9F2B5899626F8DABA2AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C8D1E3285EA55BD3F977DBF426589F707B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFC8D2E52963AC5BD5FA7EE3FA45AFF11879DE255099FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC9D4E72967B45CD5FA7FE3FA45AFF1177FE41F5AADC9
        D4E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D5E9296CBA5CD5FC7FE3FA44AFF1177F
        E41F5EB6C9D5E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D6EA2971C15CD5FC7EE3FA
        44AFF1177FE41F63BDC9D6EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF7F6F7E7E5E6E6E5E6F4F3F3FFFFFFFFFFFFFFFFFFFFFFFF447DC551
        C3F47EE3FA44AFEF177FE41F67C3C9D8ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDFCFCB6B2B66A636C483F48564950534952453B455C545CA8A3A8F7F7
        F7EFEDF1B4C2D52E79C83DA2E91780E41F6CC8C9D9EDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFEFEEEF6C646E66574AAD9D6FFBDCACFFE6C4FFEECDFFF5CC
        C0C8A6606263483C4871647F9CA1B691A9BC2372CB1F70D2C9DBF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFEEEF5D56618E7753F2C18FFFCFA9FFD6B3FF
        E6C9FFEDD0FFF2D3FFF8D8FFFCDF97ACA6453B45726374C8C1CBE0EEFAD4E3F5
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A737E8D734FEAB486F5BC
        91F6BD91FFD8B6FFE8CDFFEED2FFF3D7FFF9E0FFFDE9FFFEF095AEAD463C49CD
        C9CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C6CB6F5C51
        DAA574EDB489E2A97EF8BF93FFDAB9FFE7CDFFEED5FFF4DAFFF9E3FFFDEFFFFE
        F7FFFEEE6B7175A5A1A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF8F8792A07F52E1A87DDBA277DDA479F6BD92FFD7B5FFE7CEFFEDD4FFF2DA
        FFF7E1FFFAE7FFFDEDFFFCE7CCD6C05D555FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF706471C4905DDDA479D39A6FF8BF94FFD0ACFFDABCFF
        EBD8FFEBD4FFEED7FFF4DDFFF7E1FFF8E1FFF9DEFFFAD75D525FF0F0F1FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C6A78C0895BDAA176EFB68BDAA1
        76E5AC81FDC498FFDCBDFFEFE0FFECD5FFEED6FFF2DAFFF4DAFFF3D8FFF2CF7D
        7179D6D5D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7181BE8759
        D89F74E4AB80FFCCA5FFE1CBFFDBBFFFCCA4FFDFC3FFECDBFFE9D1FFECD3FFED
        D3FFEDD1FFEFCE7F767BDAD8DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF827788BF8857D0976CF3BA8FFFE1CBFFEEE2FFF9F5FFDABDFFCBA3FFE6D1
        FFE4CBFFE5CBFFE7CDFFE7CCFFECC26A5E6BF1F1F2FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFA8A0ACA68053CB9267EBB287FFD9BBFFEADAFFF1E7FF
        DEC5F1B88DFFDBBFFFCCA3FED3AEFFD8B6FFDDC0D3C594796F7CFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDCE08B776FBF8656D9A075FCC3
        98FFDCC2FFE5D2FFCCA5FBC297FCC398ECB388F3BA8EFFC99EFCD1A08C8171BC
        B8BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABA4AF
        9D7E5CC0885CDBA277EEB58AFBC297F6BD92EEB58AD1986DDDA479F1B88DF4BE
        91B09F77847A89FCFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFAFA9C929FA0825FBF8857CD9469D69D72DDA479DBA277E3AA7F
        EAB186DFAC7BAB976F857988E9E8EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAB2ABB598867DAD875AC38C5BBC
        8558C28B5DCF9967BA9668958475968F9BEDECEFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0
        E4B7AFBA9D91A09F919DA1939D968B9BA69FABD7D3D8FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      TabOrder = 4
    end
    object bt_transferir: TBitBtn
      Left = 815
      Top = 20
      Width = 74
      Height = 63
      Caption = '&Transferir'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB5763FB5763FB5763FB5763FB5763FB5763FB5763FB576
        3FB5763FB5763FB5763FB5763FB5763FB5763FFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD4B493ECE0D3F4EAE4E9DDCEF0E5DCECE0D3
        EEE4D9EEE1D5EFE2D7EEE3D8EDE1D4F0E7DBF3EAE2EBDDCEE9D9C9D7B99BFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFFE5D4C3E8D8C6F4EDE6FAF6F4EE
        E3D7F8F3EFF1E7DCF6EFE7F2ECE2F3EAE2F5EEE8F0E7DDF7F1ECF6EFE8F2E9DF
        F6F1EBDDC5AAFCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBC0A0F7F3
        ECDBC2A5FFFFFFD2B48FFDFBFADAC0A4F1E8DDE6D6C3E4D4BDF2EAE2D9BFA1F9
        F8F5DCC2A7FAFAF7D7BB9BF1E7DCE0C6A8FFFFFFFFFFFFFFFFFFFFFFFEFFFFFF
        FCFAF7DEC8ABFFFFFFF8F5F0FFFFFFF0E7DAFFFFFFF2E8DFFDFCFBF7F3EEF5F0
        E8FFFFFFF1E8DDFFFFFFF3EBE3FFFFFFF5EEE5FDFCFADAC09FFFFFFFFFFFFFFF
        FFFFFFFEFEFFFFFFDEC7A9F4ECE2DEC7AAEDE1D2ECE2D3D3B28CFFFFFFCCA97C
        F8F4EEE2CEB5DCC3A6FCFBF9CBA577FFFFFED8BD9BF5EEE5E2CFB7E1CCB2ECE0
        D0E7D5BFFFFFFFFFFFFFFFFFFFFFFFFFD7BA95FFFFFFFFFFFFFFFFFFFFFFFFFE
        FEFEFFFFFFFEFEFDFFFFFFFFFFFFFEFEFEFFFFFFFEFEFDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFEFEFDFDD8BB97FFFFFFFFFFFFFFFFFFEEE0D0E9D8C4EDE0D1D0B0
        87FFFFFFCAA473E8D8C3F5EFE7C39964FDFDFEDBC1A1D2B38CFFFFFFC59D6AEE
        E2D4EEE2D5D1AF86FFFFFFC9A270EDE1D1E1CEB4FAF6F1FFFFFFFFFFFFDEC6A7
        FFFFFFFFFFFFFBF9F7FFFFFFF6EFE7FFFFFFFFFFFFF2EBE1FFFFFFFBFBF9F6F3
        F0FFFFFFF5EFE7FFFFFFFFFFFFF8F1EAFFFFFFF8F4EEFFFFFFFDFAF8DEC7A9FF
        FFFFEFE4D2DFCCABFEFFF9FEFFFBFCFDF8FBFCF4FEFEFAF7F1E9F9F4EEFDFEF9
        FCF9F1FFFFFCFFFFFAFFFBF4FFFFFCFAF4EDF7F3EBFCFAF5FAF9F1FEFFFBFEFF
        F8FCFDF5DECAA5FFFFFFB17941B17941B17941B17941B17941B17941B17941DA
        B087DAB086B17941B17941B17941B17941B17941B17941DAB086DAB087B17941
        B17941B17941B17941B17941B17941B17941FFFFFFC59671BD8E5DBD8D5DBD8D
        5DBD8D5CBE8F5FDAB289DAB08781C9A881C9A881C9A881C9A881C9A881C9A8DA
        B087DAB289BE8E5DBC8A59BD8D5DBD8D5CC29768B47749FFFFFFFFFFFFFFFFFF
        BB8857B5763FB57841B37942BA854FDAB28ADBB28971BC94F3FAF7F2F9F6F2F9
        F6FEFFFF71BC94DCB289DAB289B07C43B07C43B07C43B17941B37C43FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCB28ADBB188
        DCB289DCB289DDB289DCB289DBB188DBB189FFFFFFFCF9F6FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFDCB28ADCB28ADCB28ADCB28ADCB28ADCB28AFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF
        FEFFFFFFFFFFFFFFFFFFFFFFFF429155D8EDE3D8EDE3D8EDE3D8EDE3429155FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF429155C4E3D5C4E3D5C4E3
        D5C4E3D5429155FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF328340328340328340328340
        A7D8C0A7D8C0A7D8C0A8D9C1328340328340328340328340FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF287A3484
        CFAE8ECEAC97D3B2A0D9BB9BD6B89CD6B9A5DDC19DD8BB91D4B68AD5B8287A34
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF23752D75D9AE75D9AE75D9AE75D9AE75D9AE75D9AE75D9AE75
        D9AE23752DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E712758D19E58D19E58D19E58D1
        9E58D19E58D19E1E7127FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9F6FFFFFFFFFFFF1E7127
        46CD9246CD9246CD9246CD921E7127FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF196D1F46CD9247CD92196D1FFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF126716126716FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ModalResult = 1
      TabOrder = 5
    end
    object bt_imprimir: TBitBtn
      Left = 895
      Top = 20
      Width = 73
      Height = 63
      Caption = '&Imprimir'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAFAFAFDFDFDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEDEDEDCECECEB58158B4
        8056B48055B47F55B47F55B48055B48055B47F55B38056B48056B48056B58158
        CECECEEDEDEDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFAAABAB7171716E6F6F5B5B
        5B333333B18057F3DEC5F4DEC5F3DDC5F3DEC5F4DDC5F4DEC5F3DEC5F4DEC5F3
        DDC5F3DEC7B27F573333335A5B5B6E6F6F7171719E9F9FFFFFFFFFFFFF686868
        6162625E5F5F4849491B1B1BB38158F9EADAF8EADAF8EADAF8E9DAF8EADAF8EA
        DAF9EADAF9E9D9F8EADAF8E9DAB381581B1B1B4849495E5F5F616262646565FF
        FFFFFFFFFF8E8F8F878888838484636464232323B4845BFBF1E7FBF2E7FBF1E7
        FBF1E7FBF1E8FBF1E8FBF1E7FBF1E7FBF1E7FBF1E7B4835B2323236364648384
        848788888B8C8CFFFFFFFFFFFF9494958D8D8E89898A69696A272727B6875FFB
        F2E7FBF1E7FBF1E7FBF2E7FBF1E8FBF1E8FBF2E7FBF1E8FBF1E7FBF1E8B6865E
        27272769696A89898A8D8D8E919192FFFFFFFFFFFF9B9B9C9595969292937878
        7943434429292A26262726262726262726262726262726262726262726262726
        262726262729292A43434478787992929395959699999AFFFFFFFFFFFFA9A9AA
        A4A4A5A3A3A49898998484857A7A7B7979797979797979797979797979797979
        797979797979797979797979797A7A7B848485989899A3A3A4A4A4A5A7A7A8FF
        FFFFFFFFFFBCBCBCB8B8B8B8B8B8B7B7B7B4B4B4B3B3B3B3B3B3B3B3B3B3B3B3
        B3B3B3B3B3B3B3B3B30ACE220F8F1EB3B3B30ACE220F8F1EB4B4B4B7B7B7B8B8
        B8B8B8B8BBBBBBFFFFFFFFFFFFCFCFCFCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCEAEAEAEAEAEACECECEFFFFFFFFFFFFDDDDDDDADADADADADADADA
        DA3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3E3F3F3F3F3E3F3F3F3F3F3E3F3F3F3F
        3F3F3E3F3F3F3F3F3E3F3FDADADAC4C4C4C4C4C5DCDCDCFFFFFFFFFFFFE0E0E0
        DEDEDEDEDEDEDEDEDE494949626262747474909090B0B0B0CECECFE3E4E3EBEB
        EBE0E0E0C7C8C7A8A8A88D8D8C7C7C7C494949DEDEDE8B8C8B8B8B8BE0E0E0FF
        FFFFFFFFFFD0D0D0CDCDCDCDCDCDCDCDCD535454626262757574909090B0B0B0
        CECECFE4E4E4EBEBEBE0E0E0C8C7C8A8A8A98C8D8D7C7C7C535354CDCDCDCDCD
        CDCDCDCDCFCFCFFFFFFFFFFFFF9797977070707070706F6F6F5E5E5E5E5D5E5D
        5D5D5E5E5E5E5E5E5E5E5E5E5E5E5E5D5D5E5E5E5E5E5D5E5D5E5E5E5E5E5E5E
        5E5E5E6F6F6F7070707070708E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090
        90777777CDA882F6EDE6F5EEE6F6EDE7F5EEE7F6EEE7F6EDE7F6EEE7F5EEE6F6
        EDE7F5EEE6CDA782777777909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF8C8C8C7A7A7ACFAB86F4EDE5F4EDE6F4EDE5F4EDE5F5EDE5F4ED
        E6F4EDE6F5EDE5F4EDE6F5EDE6CFAA867A7A7A8C8C8CFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8A7C7B7CD1AD89F4ECE5F4ECE4F4ECE5
        F4ECE5F4ECE5F4ECE4F4ECE5F4ECE4F4ECE4F4ECE4D1AD897C7B7C8A8A8AFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8888887C7C7CD3B08CF3
        EBE3F3EBE3F3EBE3F3EBE4F4EBE4F3ECE4F4ECE3F3EBE4F3EBE3F4EBE3D3B18C
        7C7C7C888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9393
        937C7C7CD4B38FF1E9E0F2E9DFF2E9E0F2E9DFF2E8DFF2E9DFF2E9DFF1E9E0F2
        E9E0F2E9DFD5B38F7C7C7C939393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F9F9868686D5B591EFE3D5F0E3D5F0E3D5EFE3D5EFE3D5EFE3
        D5F0E3D6EFE3D5F0E3D6F0E3D5D6B691868686F9F9F9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6D9BA96EEDFCDEEDFCDEEDFCD
        EEDFCDEEDFCDEEDECEEEDFCDEEDFCDEEDFCEEEDFCED9BB96F6F6F6FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBBC99DA
        BA96DABA96DABA96DABA96DABA96DABA96DABA96DABA96DABA96DABA96DBBC99
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 541
    Width = 984
    Height = 41
    Align = alBottom
    Color = clMedGray
    ParentBackground = False
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 984
    Height = 452
    Align = alClient
    DataSource = ds_padrao
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object q_pesq_padrao: TFDQuery
    Connection = DM.Conexao
    Left = 848
    Top = 344
  end
  object ds_padrao: TDataSource
    DataSet = q_pesq_padrao
    Left = 848
    Top = 408
  end
end
