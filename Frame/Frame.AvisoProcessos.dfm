object FrameAvisoProcesso: TFrameAvisoProcesso
  Left = 0
  Top = 0
  Width = 640
  Height = 68
  Align = alTop
  Color = clWhite
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  PixelsPerInch = 96
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 68
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object bvSeparador: TBevel
      Left = 0
      Top = 64
      Width = 640
      Height = 1
      Align = alBottom
      Shape = bsTopLine
      ExplicitTop = 65
    end
    object lblSeqItem: TLabel
      Left = 0
      Top = 3
      Width = 56
      Height = 61
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = '1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitTop = 0
      ExplicitHeight = 15
    end
    object lblDescricaoItem: TLabel
      Left = 62
      Top = 10
      Width = 578
      Height = 21
      AutoSize = False
      Caption = 'Cancelar o item COCA COLA LATA 250ML UN no valor R$ 2,50'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMotivo: TLabel
      Left = 62
      Top = 37
      Width = 578
      Height = 21
      AutoSize = False
      Caption = 'Motivo: CANCELAMENTO CUPOM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Splitter1: TSplitter
      Left = 56
      Top = 3
      Height = 61
      Cursor = crDefault
      ResizeStyle = rsNone
      ExplicitLeft = 240
      ExplicitTop = 24
      ExplicitHeight = 100
    end
    object Splitter2: TSplitter
      Left = 0
      Top = 0
      Width = 640
      Height = 3
      Cursor = crDefault
      Align = alTop
      ResizeStyle = rsNone
      ExplicitLeft = 59
      ExplicitWidth = 74
    end
    object Splitter3: TSplitter
      Left = 0
      Top = 65
      Width = 640
      Height = 3
      Cursor = crDefault
      Align = alBottom
      ResizeStyle = rsNone
      ExplicitLeft = 56
      ExplicitTop = 3
      ExplicitWidth = 71
    end
  end
end
