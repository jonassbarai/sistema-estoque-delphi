object Frm_Ajuda: TFrm_Ajuda
  Left = 200
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Ajuda'
  ClientHeight = 175
  ClientWidth = 415
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 174
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object ProductName: TLabel
      Left = 2
      Top = 2
      Width = 413
      Height = 25
      Align = alTop
      Alignment = taCenter
      Caption = 'Sistema de Controle de estoque '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      IsControl = True
      ExplicitWidth = 284
    end
    object Version: TLabel
      Left = 2
      Top = 27
      Width = 413
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Vers'#227'o 1.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      IsControl = True
      ExplicitWidth = 64
    end
    object Copyright: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 46
      Width = 407
      Height = 27
      Align = alTop
      Caption = 
        'DICA: se passar o mouse em cima dos bot'#245'es , exibir'#225' sua  funcio' +
        'nalidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      IsControl = True
    end
    object Comments: TLabel
      Left = 13
      Top = 133
      Width = 108
      Height = 41
      Caption = 'Para suporte  contate-nos :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      IsControl = True
    end
    object Label1: TLabel
      Left = 104
      Top = 152
      Width = 188
      Height = 16
      Caption = 'Estoque@controle@email.com'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object OKButton: TButton
    Left = 325
    Top = 133
    Width = 90
    Height = 39
    Caption = 'OK'
    Default = True
    ModalResult = 1
    Style = bsCommandLink
    TabOrder = 1
  end
end
