object FrmConfig: TFrmConfig
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Configura'#231#245'es'
  ClientHeight = 795
  ClientWidth = 1141
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label12: TLabel
    Left = 280
    Top = 173
    Width = 46
    Height = 17
    Caption = 'Modelo'
    Font.Charset = ANSI_CHARSET
    Font.Color = 3808280
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 201
    Height = 766
    Align = alLeft
    BevelInner = bvRaised
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitLeft = 270
    ExplicitTop = 39
    ExplicitHeight = 762
    object spBtnRede: TSpeedButton
      Left = 14
      Top = 26
      Width = 169
      Height = 39
      Cursor = crHandPoint
      Caption = 'REDE'
      ImageIndex = 0
      Images = ImageList1
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      Spacing = 10
    end
    object SpeedButton2: TSpeedButton
      Left = 14
      Top = 87
      Width = 169
      Height = 39
      Cursor = crHandPoint
      Caption = 'TECLAS'
      ImageIndex = 1
      Images = ImageList1
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      Spacing = 10
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 14
      Top = 143
      Width = 169
      Height = 39
      Cursor = crHandPoint
      Caption = 'IMPRESSORA'
      ImageIndex = 2
      Images = ImageList1
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      Spacing = 10
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 14
      Top = 311
      Width = 169
      Height = 39
      Cursor = crHandPoint
      Caption = 'CAIXA'
      ImageIndex = 5
      Images = ImageList1
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      Spacing = 10
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 14
      Top = 255
      Width = 169
      Height = 39
      Cursor = crHandPoint
      Caption = 'BALAN'#199'A'
      ImageIndex = 4
      Images = ImageList1
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      Spacing = 10
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 14
      Top = 194
      Width = 169
      Height = 39
      Cursor = crHandPoint
      Caption = 'GAVENTA'
      ImageIndex = 3
      Images = ImageList1
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      Spacing = 10
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1141
    Height = 29
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '    Configura'#231#245'es'
    Color = 7290415
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      AlignWithMargins = True
      Left = 1106
      Top = 3
      Width = 32
      Height = 23
      Cursor = crHandPoint
      Align = alRight
      Caption = 'X'
      Flat = True
      OnClick = SpeedButton1Click
      ExplicitLeft = 944
      ExplicitTop = 0
      ExplicitHeight = 33
    end
  end
  object pgConfg: TPageControl
    Left = 201
    Top = 29
    Width = 940
    Height = 766
    ActivePage = TabSheet3
    Align = alClient
    OwnerDraw = True
    Style = tsButtons
    TabOrder = 1
    OnDrawTab = pgConfgDrawTab
    ExplicitTop = 33
    ExplicitHeight = 762
    object TabSheet1: TTabSheet
      Caption = 'REDE'
      object Label13: TLabel
        Left = 16
        Top = 3
        Width = 274
        Height = 37
        Caption = 'Configura'#231#227'o de Caixa'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TECLAS'
      ImageIndex = 1
      DesignSize = (
        932
        733)
      object ScrollBox1: TScrollBox
        Left = 3
        Top = -3
        Width = 913
        Height = 737
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        ExplicitHeight = 733
        object Label4: TLabel
          Left = 3
          Top = 21
          Width = 274
          Height = 37
          Caption = 'Configura'#231#227'o de Caixa'
          Color = 13882323
          Font.Charset = ANSI_CHARSET
          Font.Color = 5121313
          Font.Height = -27
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object pnlTeclas: TPanel
          Left = -1
          Top = 64
          Width = 882
          Height = 927
          BevelOuter = bvNone
          TabOrder = 0
          object Shape3: TShape
            Left = 24
            Top = 878
            Width = 148
            Height = 33
            Shape = stRoundRect
          end
          object SpeedButton8: TSpeedButton
            Left = 24
            Top = 878
            Width = 148
            Height = 33
            Caption = 'GRAVAR'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 3808280
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 882
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Color = 13882323
            ParentBackground = False
            TabOrder = 0
            object Label5: TLabel
              AlignWithMargins = True
              Left = 712
              Top = 3
              Width = 167
              Height = 35
              Align = alRight
              AutoSize = False
              Caption = 'TECLAS'
              Font.Charset = ANSI_CHARSET
              Font.Color = 3808280
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
              Layout = tlCenter
            end
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 73
              Height = 35
              Align = alLeft
              Alignment = taCenter
              AutoSize = False
              Caption = 'FUN'#199#195'O'
              Font.Charset = ANSI_CHARSET
              Font.Color = 3808280
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
              Layout = tlCenter
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitHeight = 41
            end
          end
          object DBGrid1: TDBGrid
            Left = 0
            Top = 41
            Width = 882
            Height = 816
            Align = alTop
            BorderStyle = bsNone
            DataSource = DataSource1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            Options = [dgEditing, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'descrfuncao'
                ReadOnly = True
                Title.Caption = 'Fun'#231'ao'
                Width = 700
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descrkeycode'
                Title.Caption = 'Teclas'
                Width = 160
                Visible = True
              end>
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'IMPRESSORA'
      ImageIndex = 2
      object Label19: TLabel
        Left = 28
        Top = 82
        Width = 70
        Height = 17
        Caption = 'Configurar?'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label20: TLabel
        Left = 24
        Top = 24
        Width = 344
        Height = 37
        Caption = 'Configura'#231#227'o da Impressora'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Shape4: TShape
        Left = 24
        Top = 339
        Width = 148
        Height = 33
        Shape = stRoundRect
      end
      object Shape7: TShape
        Left = 276
        Top = 269
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Shape8: TShape
        Left = 516
        Top = 207
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label22: TLabel
        Left = 276
        Top = 248
        Width = 84
        Height = 17
        Caption = 'Linhas '#224' pular'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Shape9: TShape
        Left = 516
        Top = 269
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label23: TLabel
        Left = 516
        Top = 248
        Width = 48
        Height = 17
        Caption = 'Colunas'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Shape10: TShape
        Left = 276
        Top = 205
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label24: TLabel
        Left = 282
        Top = 326
        Width = 67
        Height = 37
        Caption = '0,000'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label25: TLabel
        Left = 28
        Top = 248
        Width = 126
        Height = 17
        Caption = 'Espa'#231'os entre Linhas'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label26: TLabel
        Left = 516
        Top = 184
        Width = 73
        Height = 17
        Caption = 'P'#225'g. C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label27: TLabel
        Left = 28
        Top = 184
        Width = 46
        Height = 17
        Caption = 'Modelo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Shape11: TShape
        Left = 28
        Top = 205
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label28: TLabel
        Left = 276
        Top = 187
        Width = 67
        Height = 17
        Caption = 'Porta COM'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Shape12: TShape
        Left = 28
        Top = 269
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object SpeedButton10: TSpeedButton
        Left = 24
        Top = 339
        Width = 148
        Height = 33
        Caption = 'Testar Impress'#227'o'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton10Click
      end
      object impPorta: TDBComboBox
        Left = 282
        Top = 208
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'portacomusb'
        DataSource = dsConfigImpressora
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'Nenhum')
        ParentFont = False
        TabOrder = 0
      end
      object impModelo: TDBComboBox
        Left = 32
        Top = 209
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'impressora_modelo'
        DataSource = dsConfigImpressora
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'Nenhuma')
        ParentFont = False
        TabOrder = 1
      end
      object impPagCod: TDBComboBox
        Left = 523
        Top = 211
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'pagcod'
        DataSource = dsConfigImpressora
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'Nenhum')
        ParentFont = False
        TabOrder = 2
      end
      object EdtEspacoLinha: TDBEdit
        Left = 32
        Top = 275
        Width = 214
        Height = 23
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        DataField = 'espacoslinha'
        DataSource = dsConfigImpressora
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
      end
      object EdtPulaLinha: TDBEdit
        Left = 281
        Top = 275
        Width = 214
        Height = 23
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        DataField = 'linhapular'
        DataSource = dsConfigImpressora
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 4
      end
      object EdtColuna: TDBEdit
        Left = 523
        Top = 275
        Width = 214
        Height = 23
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        DataField = 'colunas'
        DataSource = dsConfigImpressora
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 5
      end
      object rbManual: TRadioButton
        Left = 32
        Top = 112
        Width = 89
        Height = 17
        Caption = 'Manual'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = rbManualClick
      end
      object rbAuto: TRadioButton
        Left = 127
        Top = 112
        Width = 113
        Height = 17
        Caption = 'Desabilitado'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = rbAutoClick
      end
      object Memo1: TMemo
        Left = 472
        Top = 326
        Width = 369
        Height = 331
        Lines.Strings = (
          'Memo1')
        TabOrder = 8
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'GAVETA'
      ImageIndex = 3
      object Label16: TLabel
        Left = 24
        Top = 32
        Width = 293
        Height = 37
        Caption = 'Configura'#231#227'o da Gaveta'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label18: TLabel
        Left = 28
        Top = 90
        Width = 180
        Height = 17
        Caption = 'Controlar o status da gaveta?'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'BALAN'#199'A'
      ImageIndex = 4
      object shBtnGrava: TShape
        Left = 29
        Top = 398
        Width = 148
        Height = 33
        Shape = stRoundRect
      end
      object Label8: TLabel
        Left = 24
        Top = 24
        Width = 302
        Height = 37
        Caption = 'Configura'#231#227'o de Balan'#231'a'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label7: TLabel
        Left = 24
        Top = 165
        Width = 46
        Height = 17
        Caption = 'Modelo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object shModelo: TShape
        Left = 24
        Top = 186
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object shPorta: TShape
        Left = 272
        Top = 186
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label9: TLabel
        Left = 272
        Top = 165
        Width = 67
        Height = 17
        Caption = 'Porta COM'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Shape6: TShape
        Left = 512
        Top = 188
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label10: TLabel
        Left = 512
        Top = 165
        Width = 104
        Height = 17
        Caption = 'Bits por segundo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object shParidade: TShape
        Left = 24
        Top = 250
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label11: TLabel
        Left = 24
        Top = 229
        Width = 53
        Height = 17
        Caption = 'Paridade'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object shBitDados: TShape
        Left = 272
        Top = 250
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label14: TLabel
        Left = 272
        Top = 229
        Width = 82
        Height = 17
        Caption = 'Bits de dados'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object shBitstop: TShape
        Left = 512
        Top = 250
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label15: TLabel
        Left = 512
        Top = 229
        Width = 87
        Height = 17
        Caption = 'Bits de parada'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object SpeedButton9: TSpeedButton
        Left = 29
        Top = 398
        Width = 148
        Height = 33
        Caption = 'Gravar e Testar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3808280
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton9Click
      end
      object shFluxo: TShape
        Left = 24
        Top = 316
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label17: TLabel
        Left = 24
        Top = 293
        Width = 105
        Height = 17
        Caption = 'Controle de fluxo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object lblPeso: TLabel
        Left = 278
        Top = 307
        Width = 67
        Height = 37
        Caption = '0,000'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object rgUso: TDBRadioGroup
        Left = 24
        Top = 86
        Width = 257
        Height = 55
        Caption = 'Utilizar Balan'#231'a'
        Columns = 2
        DataField = 'utilizar'
        DataSource = dsConfigBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'Utilizar'
          'N'#227'o Utilizar')
        ParentFont = False
        TabOrder = 0
        Values.Strings = (
          '0'
          '1')
      end
      object cmbBalanca: TDBComboBox
        Left = 28
        Top = 190
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'balmodelo'
        DataSource = dsConfigBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'Nenhuma'
          'Filizola'
          'Toledo')
        ParentFont = False
        TabOrder = 1
      end
      object cmbPortaSerial: TDBComboBox
        Left = 278
        Top = 189
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'portacom'
        DataSource = dsConfigBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'COM1'
          'COM2'
          'COM3'
          'COM4'
          'COM5'
          'COM6'
          'COM7'
          'COM8'
          'COM9'
          'COM10')
        ParentFont = False
        TabOrder = 2
      end
      object cmbBaudRate: TDBComboBox
        Left = 519
        Top = 192
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'bitsegundo'
        DataSource = dsConfigBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          '110'
          '300'
          '600'
          '1200'
          '2400'
          '4800'
          '9600'
          '14400'
          '19200'
          '38400'
          '56000'
          '57600')
        ParentFont = False
        TabOrder = 3
      end
      object cmbParity: TDBComboBox
        Left = 28
        Top = 254
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'paridade'
        DataSource = dsConfigBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'Nenhum'
          'odd'
          'even'
          'mark'
          'space')
        ParentFont = False
        TabOrder = 4
      end
      object cmbDataBits: TDBComboBox
        Left = 278
        Top = 254
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'bitdados'
        DataSource = dsConfigBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          '5'
          '6'
          '7'
          '8')
        ParentFont = False
        TabOrder = 5
      end
      object cmbStopBits: TDBComboBox
        Left = 519
        Top = 252
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'bitsstop'
        DataSource = dsConfigBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          's1'
          's1,5'
          's2')
        ParentFont = False
        TabOrder = 6
      end
      object cmbHandShaking: TDBComboBox
        Left = 29
        Top = 320
        Width = 214
        Height = 25
        AutoDropDown = True
        BevelInner = bvNone
        BevelOuter = bvNone
        BevelKind = bkSoft
        DataField = 'Handshaking'
        DataSource = dsConfigBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'Nenhum'
          'XON/XOFF'
          'RTS/CTS'
          'DTR/DSR')
        ParentFont = False
        TabOrder = 7
      end
    end
    object CAIXA: TTabSheet
      Caption = 'CAIXA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3808280
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImageIndex = 5
      ParentFont = False
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 274
        Height = 37
        Caption = 'Configura'#231#227'o de Caixa'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = 5121313
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 97
        Width = 106
        Height = 17
        Caption = 'N'#250'mero do Caixa'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape1: TShape
        Left = 16
        Top = 119
        Width = 225
        Height = 33
        Shape = stRoundRect
      end
      object Label3: TLabel
        Left = 16
        Top = 185
        Width = 50
        Height = 17
        Caption = 'Servi'#231'os'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Line: TSplitter
        Left = 16
        Top = 208
        Width = 3000
        Height = 161
        Cursor = crDefault
        Align = alNone
        Beveled = True
        ResizeStyle = rsLine
      end
      object Shape2: TShape
        Left = 29
        Top = 319
        Width = 148
        Height = 33
        Shape = stRoundRect
      end
      object SpeedButton7: TSpeedButton
        Left = 29
        Top = 319
        Width = 148
        Height = 33
        Caption = 'GRAVAR'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3808280
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 21
        Top = 124
        Width = 180
        Height = 20
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '100'
      end
      object CheckBox1: TCheckBox
        Left = 29
        Top = 226
        Width = 276
        Height = 17
        Caption = 'Emiss'#227'o de Notas'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object CheckBox2: TCheckBox
        Left = 29
        Top = 258
        Width = 276
        Height = 17
        Caption = 'Processar Promo'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object CheckBox3: TCheckBox
        Left = 29
        Top = 290
        Width = 276
        Height = 17
        Caption = 'Comandas'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3808280
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object ImageList1: TImageList
    Height = 20
    Width = 20
    Left = 736
    Top = 457
    Bitmap = {
      494C010106000800040014001400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000500000002800000001002000000000000032
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900B4B4B400B4B4B400D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100B4B4B400B4B4B400F9F9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E40076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      760076767600767676007676760076767600767676007676760076767600E4E4
      E400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA00E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400FAFA
      FA0000000000ECECEC00A9A9A900A4A4A400A4A4A400A9A9A900EDEDED000000
      0000A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A40098989800EEEE
      EE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A2A2A200767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600A2A2A2000000
      000000000000ABABAB0076767600767676007676760076767600ABABAB000000
      00009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B0097979700EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F500838383007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760084848400F5F5F5000000
      000000000000A4A4A40076767600767676007676760076767600A4A4A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7D7D7007777
      7700767676007676760076767600767676007676760076767600767676007676
      76007676760076767600767676007676760077777700D7D7D700000000000000
      000000000000A4A4A40076767600BFBFBF00BFBFBF0076767600A4A4A4000000
      000076767600767676007B7B7B00919191007676760076767600767676007676
      7600767676007B7B7B00D4D4D400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500767676007676760076767600767676007676760076767600767676007676
      760076767600767676007676760076767600B6B6B60000000000000000000000
      000000000000A4A4A40076767600868686008686860076767600A4A4A4000000
      0000767676007676760093939300E6E6E6007676760076767600767676007676
      76007676760076767600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E4007676760076767600E4E4
      E400000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A40076767600767676007676760076767600A4A4A4000000
      00009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B
      9B009B9B9B0082828200A4A4A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E4007676760076767600E4E4
      E400000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A40076767600767676007676760076767600A4A4A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A400A4A4A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E4007676760076767600E4E4
      E400000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A40076767600767676007676760076767600A4A4A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A400A4A4A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E4007676760076767600E4E4
      E400000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A40076767600767676007676760076767600A4A4A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A400A4A4A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E4007676760076767600E4E4
      E400000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A40076767600767676007676760076767600A4A4A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A400A4A4A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E4007676760076767600E4E4
      E400000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A40076767600767676007676760076767600A4A4A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A400A4A4A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400C8C8C800C8C8C800F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A40076767600767676007676760076767600A4A4A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A400A4A4A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C2C2C200919191009191910091919100919191009191
      910091919100C3C3C30000000000000000000000000000000000000000000000
      000000000000ABABAB0076767600767676007676760076767600ABABAB000000
      0000A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4
      A400A4A4A40085858500ABABAB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00767676007676760076767600767676009797
      970097979700ADADAD0000000000000000000000000000000000000000000000
      000000000000ECECEC00A6A6A6009B9B9B009B9B9B00A6A6A600EDEDED000000
      00009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B9B009B9B
      9B009B9B9B00A6A6A600EDEDED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00767676007676760076767600767676008181
      810081818100ADADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00767676007676760076767600767676007676
      760076767600ADADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F4F400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400F4F4F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDED
      ED00939393007777770076767600767676007676760076767600767676007676
      760076767600767676007777770096969600EFEFEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009B9B
      9B0080808000ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD007E7E7E00A0A0A00000000000000000000000
      0000D4D4D400D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D1D1D100D1D1D100D4D4D4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5E5E500BABA
      BA00BABABA00BABABA00BABABA00BABABA00BABABA00BABABA00F6F6F6000000
      0000E8E8E800AFAFAF00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00AFAFAF00E8E8E8000000000000000000000000008080
      8000ACACAC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A7A7A7008484840000000000000000000000
      0000767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBCBCB007A7A
      7A00989898009898980098989800989898009494940076767600EEEEEE000000
      0000888888007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600898989000000000000000000000000007F7F
      7F00ADADAD00000000009B9B9B0088888800888888008888880088888800BFBF
      BF00000000000000000000000000A8A8A8008383830000000000000000000000
      0000767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBCBCB008787
      870000000000000000000000000000000000EEEEEE0076767600EEEEEE000000
      00007676760076767600888888008181810081818100888888007A7A7A008888
      880088888800888888008888880088888800888888007A7A7A00888888008181
      81008181810088888800767676007676760000000000E9E9E900D1D1D1007F7F
      7F00ADADAD0000000000B2B2B200A4A4A400A4A4A400A4A4A400A4A4A400CECE
      CE00000000000000000000000000A8A8A80083838300D1D1D100EAEAEA000000
      00007676760076767600767676007676760076767600767676009E9E9E00C8C8
      C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C8009D9D9D00767676007676
      7600767676007676760076767600767676000000000000000000000000000000
      000000000000E0E0E000FCFCFC00DDDDDD00FCFCFC00E0E0E000CBCBCB008787
      870000000000000000000000000000000000EEEEEE0076767600EEEEEE000000
      0000767676007676760000000000C8C8C800C8C8C80000000000919191000000
      000000000000000000000000000000000000000000009191910000000000C8C8
      C800C8C8C800000000007676760076767600C4C4C40077777700767676007E7E
      7E00ADADAD0000000000B9B9B900ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00B9B9B90000000000A8A8A800828282007676760077777700C6C6
      C60076767600767676007676760076767600767676008F8F8F00F7F7F7009B9B
      9B00919191009191910091919100919191009C9C9C00F7F7F7008F8F8F007676
      7600767676007676760076767600767676000000000000000000000000000000
      0000000000009B9B9B00E9E9E90094949400E9E9E9009B9B9B00CBCBCB008787
      870000000000000000000000000000000000EEEEEE0076767600EEEEEE000000
      00007676760076767600ADADAD009797970097979700ADADAD0081818100ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD0081818100ADADAD009797
      970097979700ADADAD0076767600767676008181810076767600767676007E7E
      7E00ADADAD0000000000929292007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F009292920000000000A8A8A8008282820076767600767676008282
      820076767600767676007676760076767600767676008D8D8D00D7D7D7007C7C
      7C00767676007676760076767600767676007C7C7C00D7D7D7008C8C8C007676
      7600767676007676760076767600767676000000000000000000000000000000
      000000000000CFCFCF00F9F9F900000000000000000000000000CBCBCB007E7E
      7E00BABABA00BABABA00BABABA00BABABA00B2B2B20076767600EEEEEE000000
      00007676760076767600E4E4E400E4E4E400CECECE00A2A2A200E4E4E4008C8C
      8C00E4E4E400B8B8B800B8B8B800E4E4E4008C8C8C00E4E4E400A2A2A200CECE
      CE00E4E4E400E4E4E40076767600767676007676760076767600767676007E7E
      7E00ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A8A8A8008282820076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676000000000000000000000000000000
      000000000000ACACAC00F2F2F200000000000000000000000000D8D8D8009898
      9800989898009898980098989800989898009898980098989800F2F2F2000000
      00007676760076767600EDEDED00EDEDED00D5D5D500A5A5A500EDEDED008E8E
      8E00EDEDED00BDBDBD00BDBDBD00EDEDED008E8E8E00EDEDED00A5A5A500D5D5
      D500EDEDED00EDEDED0076767600767676007676760076767600767676007A7A
      7A00828282009494940094949400949494009494940094949400949494009494
      9400949494009494940094949400828282007B7B7B0076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676000000000000000000000000000000
      000000000000BDBDBD00F5F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007676760076767600A4A4A4009191910091919100A4A4A4007F7F7F00A4A4
      A400888888009B9B9B009B9B9B0088888800A4A4A4007F7F7F00A4A4A4009191
      910091919100A4A4A40076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676000000000000000000000000000000
      000000000000BDBDBD00F6F6F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000767676007676760000000000C8C8C800C8C8C80000000000919191000000
      0000ADADAD00E4E4E400E4E4E400ADADAD00000000009191910000000000C8C8
      C800C8C8C8000000000076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600A4A4A400F9F9F900ACACAC00767676007676
      7600CFCFCF00C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8
      C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8
      C800C8C8C800C8C8C800C8C8C800CFCFCF0000000000F2F2F200989898009898
      98009898980098989800989898009898980098989800D8D8D800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007676760076767600919191008787870087878700919191007B7B7B009191
      9100818181008C8C8C008C8C8C0081818100919191007B7B7B00919191008787
      8700878787009191910076767600767676007979790076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600BCBCBC0000000000C6C6C600767676007979
      790000000000A4A4A40091919100AFAFAF00D2D2D20091919100919191009191
      910091919100919191009191910091919100919191009191910091919100D2D2
      D200AEAEAE0091919100A4A4A4000000000000000000EEEEEE0076767600B2B2
      B200BABABA00BABABA00BABABA00BABABA007E7E7E00CBCBCB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000888888007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600898989009B9B9B0076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      760076767600767676007676760078787800838383007A7A7A00767676009C9C
      9C0000000000C8C8C8007676760079797900E9E9E90089898900888888008888
      880088888800888888008888880088888800888888008888880089898900E9E9
      E9007979790076767600C8C8C8000000000000000000EEEEEE0076767600EEEE
      EE000000000000000000000000000000000087878700CBCBCB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8E8E800ACACAC00A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4
      A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4
      A400A4A4A400A4A4A400ACACAC00E8E8E800F1F1F100A3A3A3008B8B8B007777
      7700777777007979790079797900797979007979790079797900797979007979
      790079797900797979007979790077777700777777008B8B8B00A4A4A400F2F2
      F20000000000FCFCFC008888880076767600CBCBCB00D3D3D300C8C8C800C8C8
      C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800D3D3D300CBCB
      CB007676760088888800FCFCFC000000000000000000EEEEEE0076767600EEEE
      EE000000000000000000000000000000000087878700CBCBCB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9F9F900C2C2C200FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A8A8A8008383830000000000000000000000
      00000000000000000000C7C7C70076767600C8C8C80091919100767676007676
      760076767600767676007676760076767600767676007676760091919100C8C8
      C80076767600C8C8C800000000000000000000000000EEEEEE0076767600EEEE
      EE000000000000000000000000000000000087878700CBCBCB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6B6B60095959500B6B6B600D5D5D500FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A8A8A8008383830000000000000000000000
      00000000000000000000FBFBFB0086868600C8C8C80091919100767676007676
      760076767600767676007676760076767600767676007676760091919100C8C8
      C80086868600FBFBFB00000000000000000000000000EEEEEE00767676009494
      9400989898009898980098989800989898007A7A7A00CBCBCB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200D7D7D700BBBBBB0096969600F9F9
      F900000000000000000000000000000000000000000000000000000000007F7F
      7F00ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A8A8A8008383830000000000000000000000
      0000000000000000000000000000C6C6C600C8C8C80091919100767676007676
      760076767600767676007676760076767600767676007676760091919100C8C8
      C800C7C7C70000000000000000000000000000000000F6F6F600BABABA00BABA
      BA00BABABA00BABABA00BABABA00BABABA00BABABA00E5E5E500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BCBCBC00CACA
      CA00000000000000000000000000000000000000000000000000000000008080
      8000ABABAB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A7A7A7008484840000000000000000000000
      0000000000000000000000000000FAFAFA00D6D6D60091919100767676007676
      760076767600767676007676760076767600767676007676760091919100D8D8
      D800FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDDDDD00C0C0
      C000000000000000000000000000000000000000000000000000000000009B9B
      9B007F7F7F00B2B2B200B6B6B600B6B6B600B6B6B600B6B6B600B6B6B600B6B6
      B600B6B6B600B6B6B600B5B5B5007E7E7E00A0A0A00000000000000000000000
      000000000000000000000000000000000000FEFEFE00D3D3D300C8C8C800C8C8
      C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800D3D3D300FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECEC
      EC00959595007979790076767600767676007676760076767600767676007676
      760076767600767676007A7A7A0097979700EFEFEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000050000000280000000100010000000000E00100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFF0000000000000000000FFF
      FF0000000000000000000FFFFF00000000000000000008100F00000000000000
      800018100F000000000000008000181FFF00000000000000C000381001000000
      00000000E00078100100000000000000FF0FF8100100000000000000FF0FF81F
      F900000000000000FF0FF81FF900000000000000FF0FF81FF900000000000000
      FF0FF81FF900000000000000FF0FF81FF900000000000000FF0FF81FF9000000
      00000000FC03F8100100000000000000FC03F8100100000000000000FC03FFFF
      FF00000000000000FC03FFFFFF00000000000000FC03FFFFFF00000000000000
      FFFFFFFFFFE0007FFFFF0000FFFFFFFFFFE0007000000000FFC0100000E7FE70
      00000000FFC0100000E40E7000000000FFCF100000840E1000000000F80F125F
      A404020000000000F80F10000004020000000000F9C010000007FE0000000000
      F9C010000000000000000000F9FFF0000000000000000000F9FFF250A4000000
      00000000803FF0000000008800010000803FF00000000008000100008F3FF000
      00000008000100008F3FFFF8FFE7FE7C000300008F3FFFFC1FE7FE7C00030000
      803FFFFE0FE7FE7E00070000803FFFFFCFE7FE7E00070000FFFFFFFFCFE0007F
      000F0000FFFFFFFFFFE0007FFFFF000000000000000000000000000000000000
      000000000000}
  end
  object FDQuery1: TFDQuery
    Connection = DM.Conexao
    Transaction = DM.FDTransaction1
    UpdateTransaction = DM.FDTransaction1
    SQL.Strings = (
      'select * from config_teclas')
    Left = 663
    Top = 635
    object FDQuery1idteclado: TFDAutoIncField
      FieldName = 'idteclado'
      Origin = 'idteclado'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery1descrfuncao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descrfuncao'
      Origin = 'descrfuncao'
      Size = 80
    end
    object FDQuery1descrkeycode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descrkeycode'
      Origin = 'descrkeycode'
      Size = 40
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 583
    Top = 659
  end
  object qryConfigBalanca: TFDQuery
    Connection = DM.Conexao
    Transaction = DM.FDTransaction1
    UpdateTransaction = DM.FDTransaction1
    SQL.Strings = (
      'select * from config_balanca')
    Left = 416
    Top = 592
    object qryConfigBalancaidbalanca: TFDAutoIncField
      FieldName = 'idbalanca'
      Origin = 'idbalanca'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryConfigBalancabalmodelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'balmodelo'
      Origin = 'balmodelo'
      Size = 50
    end
    object qryConfigBalancaportacom: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'portacom'
      Origin = 'portacom'
      Size = 30
    end
    object qryConfigBalancabitsegundo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'bitsegundo'
      Origin = 'bitsegundo'
    end
    object qryConfigBalancabitdados: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'bitdados'
      Origin = 'bitdados'
    end
    object qryConfigBalancaparidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'paridade'
      Origin = 'paridade'
      Size = 10
    end
    object qryConfigBalancabitsstop: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bitsstop'
      Origin = 'bitsstop'
      Size = 5
    end
    object qryConfigBalancautilizar: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'utilizar'
      Origin = 'utilizar'
    end
    object qryConfigBalancaHandshaking: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Handshaking'
      Origin = 'Handshaking'
      Size = 10
    end
  end
  object dsConfigBalanca: TDataSource
    DataSet = qryConfigBalanca
    Left = 416
    Top = 640
  end
  object ACBrBAL1: TACBrBAL
    Porta = 'COM1'
    OnLePeso = ACBrBAL1LePeso
    Left = 736
    Top = 128
  end
  object sTimer: TTimer
    Enabled = False
    OnTimer = sTimerTimer
    Left = 637
    Top = 502
  end
  object qryConfigImpressora: TFDQuery
    Connection = DM.Conexao
    Transaction = DM.FDTransaction1
    UpdateTransaction = DM.FDTransaction1
    SQL.Strings = (
      'select * from config_impressora')
    Left = 576
    Top = 440
    object qryConfigImpressoraidimpressora: TFDAutoIncField
      FieldName = 'idimpressora'
      Origin = 'idimpressora'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryConfigImpressoraimpressora_modelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'impressora_modelo'
      Origin = 'impressora_modelo'
      Size = 30
    end
    object qryConfigImpressoraportacomusb: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'portacomusb'
      Origin = 'portacomusb'
      Size = 60
    end
    object qryConfigImpressoracolunas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'colunas'
      Origin = 'colunas'
    end
    object qryConfigImpressoralinhapular: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'linhapular'
      Origin = 'linhapular'
    end
    object qryConfigImpressoraespacoslinha: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'espacoslinha'
      Origin = 'espacoslinha'
    end
    object qryConfigImpressorapagcod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pagcod'
      Origin = 'pagcod'
      Size = 10
    end
    object qryConfigImpressorabuffer: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'buffer'
      Origin = 'buffer'
    end
    object qryConfigImpressoratipo_impressao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_impressao'
      Origin = 'tipo_impressao'
    end
  end
  object dsConfigImpressora: TDataSource
    DataSet = qryConfigImpressora
    Left = 576
    Top = 496
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    Left = 896
    Top = 112
  end
end
