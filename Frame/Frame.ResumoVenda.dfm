object FrameResumoVenda: TFrameResumoVenda
  Left = 0
  Top = 0
  Width = 497
  Height = 53
  Align = alTop
  Color = clWhite
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  PixelsPerInch = 96
  object Splitter1: TSplitter
    Left = 0
    Top = 51
    Width = 497
    Height = 2
    Cursor = crDefault
    Align = alBottom
    Color = clBtnFace
    ParentColor = False
    ResizeStyle = rsLine
    ExplicitTop = 50
  end
  object lblDescResumo: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 98
    Height = 45
    Align = alLeft
    Caption = 'SUBTOTAL'
    Color = 5439488
    Font.Charset = ANSI_CHARSET
    Font.Color = 5439488
    Font.Height = -21
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    ExplicitHeight = 30
  end
  object lblValorResumo: TLabel
    AlignWithMargins = True
    Left = 433
    Top = 3
    Width = 61
    Height = 45
    Align = alRight
    Alignment = taRightJustify
    Caption = '125,00'
    Color = 5439488
    Font.Charset = ANSI_CHARSET
    Font.Color = 5439488
    Font.Height = -21
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    ExplicitHeight = 30
  end
end
