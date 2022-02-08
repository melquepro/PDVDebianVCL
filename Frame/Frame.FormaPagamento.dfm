object FrameFormaPg: TFrameFormaPg
  Left = 0
  Top = 0
  Width = 251
  Height = 258
  TabOrder = 0
  OnResize = FrameResize
  PixelsPerInch = 96
  object pnlFundo: TPanel
    Left = 6
    Top = 10
    Width = 235
    Height = 239
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      235
      239)
    object shTipoPg: TShape
      Left = 0
      Top = 88
      Width = 235
      Height = 151
      Align = alBottom
      Pen.Color = 16741749
      Pen.Width = 2
      ExplicitWidth = 281
    end
    object pnlTipoPg: TPanel
      Left = 0
      Top = 0
      Width = 235
      Height = 94
      Align = alTop
      BevelOuter = bvNone
      Color = 16741749
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object lblTipoPg: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 229
        Height = 88
        Align = alClient
        Alignment = taCenter
        Caption = 'VALOR'
        Color = 16741749
        ParentColor = False
        Transparent = True
        Layout = tlCenter
        ExplicitWidth = 74
        ExplicitHeight = 32
      end
    end
    object EdtValor: TEdit
      Left = 9
      Top = 142
      Width = 213
      Height = 45
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      AutoSelect = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = ',00'
      OnKeyPress = EdtValorKeyPress
    end
  end
end
