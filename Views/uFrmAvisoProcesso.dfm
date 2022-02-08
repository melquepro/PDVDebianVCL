object FrmAvisoProcesso: TFrmAvisoProcesso
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Liberar processo'
  ClientHeight = 882
  ClientWidth = 1129
  Color = clLime
  TransparentColor = True
  TransparentColorValue = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnFundo: TPanel
    Left = 0
    Top = 0
    Width = 1129
    Height = 882
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 0
      Top = 821
      Width = 1129
      Height = 61
      Align = alBottom
      Alignment = taCenter
      AutoSize = False
      Caption = '[ESC] Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 1
      ExplicitTop = 587
      ExplicitWidth = 847
    end
    object Label5: TLabel
      Left = 76
      Top = 556
      Width = 160
      Height = 25
      Caption = 'Solicite a libera'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = -1
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlFundo: TPanel
      Left = 14
      Top = 158
      Width = 1092
      Height = 623
      BevelOuter = bvNone
      Color = 13882323
      ParentBackground = False
      TabOrder = 4
    end
    object Button1: TButton
      Left = 868
      Top = 435
      Width = 75
      Height = 25
      Caption = 'Excluir Item'
      TabOrder = 3
      OnClick = Button1Click
    end
    object EdtSenhaSupervisor: TEdit
      Left = 868
      Top = 478
      Width = 93
      Height = 23
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      PasswordChar = '*'
      ShowHint = False
      TabOrder = 2
      TextHint = 'Senha supervisor'
    end
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 1129
      Height = 137
      Align = alTop
      BevelOuter = bvNone
      Color = 6710015
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 79
        Width = 1129
        Height = 58
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Liberar Processos'
        ExplicitTop = 87
        ExplicitWidth = 328
      end
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 1129
        Height = 81
        Align = alTop
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
          003208060000001E3F88B100000006624B474400FF00FF00FFA0BDA793000002
          6B4944415478DAED9A414B1551148067301225832049452BA3D065FF2270212A
          15228182E026442C0D1124110AB4B48870D1A2DC885884B910FD1BAE52D44559
          19B810B2543419BFE3DC4247E379C771EE4CDC031F87A773CF39DFF86698779F
          AEF39F846B7A002B72D2229EE71591AAA1122EC279F5AB6558847118735D7729
          912208C8D05DD000A7321CBE0543D083D097C48820714B0D960B1BF00EC6601A
          56D461E7E0BAE3FFB5E4F86CF805F5C8BC372E82C47DD21355EB2D3C60B04F19
          D65C566B6ECA4B6863CD8031110692B32B67731B5A19E6A5E6FA1652BF9AA386
          F5E3B18B304431E9239C81BB0C3118B24E33E905AC423975BEC52D3244AA8761
          9ADF095B47D51A21D5C26B6A35C626A2DEE30B8E7FF729CB744D1CA15E296906
          B2E00AF53EC72522EFEDE73042D3BAE348ECA9394ABA0DCDBAD7DA7144A64837
          A096A6A31189C8091986496A56C4253247BA0AD7683A1F914899E3BFBD66A959
          1E9788DC61E46E9547D39F1189E4917EC02A35CFC625E2ED2E26A29088A2AE15
          B1225624A40835E591FC3154C1A528070E11F2E4201F0B3A715CD71591C7EA56
          C302C1E847A44D57443E8A16989E3C104B8814E98A78A6A73E74E07F5C3F56C4
          8A58112B6245FEC41A74C207F55AB68EE44921276D22F7E8F92C505336F39EA6
          4DA4909EDF03350B49A1F6AD4C8A14D3F36BA0A66CEA2DA64DE4213D7B0235BB
          E5E76913D9A6E7BEAF1728F9DBF137E1522572A0E949D4B4229AF1F782A75C09
          497B4F37292213D0A4FABC02EDADD0A488441E56246961459216562469114644
          1EC12F981E3C10A136E8FA48EDA6270F442F221DBA22A7498F1CFFBBF47CC302
          F29F456FA00B91CDC30ED8012C744E42CC8B7D980000000049454E44AE426082}
        ExplicitWidth = 921
      end
    end
    object pnSbox: TPanel
      Left = 15
      Top = 159
      Width = 1090
      Height = 621
      BevelOuter = bvNone
      BorderWidth = 1
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object pnlDescricao: TPanel
        Left = 1
        Top = 1
        Width = 1088
        Height = 46
        Align = alTop
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 0
        object Label3: TLabel
          Left = 11
          Top = 11
          Width = 54
          Height = 21
          Caption = 'C'#243'digo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 107
          Top = 11
          Width = 71
          Height = 21
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object sbProcesso: TScrollBox
        Left = 1
        Top = 47
        Width = 1088
        Height = 573
        HorzScrollBar.ParentColor = False
        HorzScrollBar.Style = ssFlat
        HorzScrollBar.Visible = False
        VertScrollBar.Style = ssFlat
        VertScrollBar.Visible = False
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 1
      end
    end
  end
end
