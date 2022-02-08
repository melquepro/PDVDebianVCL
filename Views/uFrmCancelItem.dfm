object FrmCancelItem: TFrmCancelItem
  Left = 0
  Top = 154
  AutoSize = True
  BorderStyle = bsNone
  BorderWidth = 2
  Caption = 'Cancelar Item'
  ClientHeight = 847
  ClientWidth = 1129
  Color = 15066597
  TransparentColor = True
  TransparentColorValue = 15066597
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  SnapBuffer = 0
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnlCentro: TPanel
    Left = 0
    Top = 0
    Width = 1129
    Height = 847
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pnlFundo: TPanel
      Left = 15
      Top = 214
      Width = 1094
      Height = 540
      BevelOuter = bvNone
      Color = 13882323
      ParentBackground = False
      TabOrder = 4
    end
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 1129
      Height = 145
      Align = alTop
      BevelOuter = bvNone
      Color = 7290415
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
        Top = 87
        Width = 1129
        Height = 58
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Cancelar Item'
        ExplicitWidth = 905
      end
      object Image1: TImage
        Left = 455
        Top = 31
        Width = 218
        Height = 50
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
          003208060000001E3F88B100000006624B474400FF00FF00FFA0BDA793000003
          414944415478DAED9A5B884D5118C7D7612289DC9AC61865624C5E6452C6E081
          F2E212898917A73399916694BC78F0822779C68C6B264A8890CB9342320D8D5C
          5EDC939A0B492E27653419BFCF5EDBD94EE7B2F7B9ACBD3BEDAFFE7DB3D6ECF5
          DFEB773AEB3A1351251211BF3B10828420018F10246891166478787836699CDF
          1D4C8A78241279E515E43669A9DF3D4F8A3B802C0B41881FE8974F9D1F85C616
          0AA409834E3F28E8478C742A04295590A0440852122095A43A745D577DD76593
          F1188DD73FAF963220FD9E4034CC3C6D26F1159389262978FF17D2045DACE3FD
          4FD23D1B82A479BE99B44E59AB71A6905DC265FC4E040E84676B49CFB3793A9B
          A03978BE0C1AC834D25B34DA25C8209A89675FA0401CCF2F7009F200BFA759FC
          C2C16E1C84778C212D476BD17C344559DB76393A4C4523F5A3F5BCFF61E040F0
          96996D27DA8526B968F20DED4187E9C7502040F0954FFA126AC8A179175A4F5F
          3EF80A82E75CD20D54E5A88EA3ABBA5E66BECF68329A8556A135EAFF8B905EA9
          A73FCF7C01C16F3AA91B55DA55A81DEDC3FB538676E5A4BD689BA3CFB2E79271
          D36B1404AF32920C567BE329AB7B339E673C784449C75562E7F0082D94316312
          643BE9A02EFE461BF1BB98834F23E91C1AA1ABDAF0693702828FACF6EF94359D
          4A74E0D59AC787728CD4A28BF215AB3605B25259035942D607D99A7CCC03A482
          F44625AE89569802394ADAAA8BE7F1D9942B84C3F302A951178F9802E951D6AA
          2D11B50738F532A59679B01AA26D5CB78DA9C4ED4A8F29900152852E36E0D3AD
          EBBDDE0BFC3BB3D37611E9BEAEEF3705225B767BCAACB56FD4F30491F3CF0B5D
          3F680A44CE1CF622B8189FAE02802C21DDD3F57D5E400A15512F8B6086BEC554
          8E63A450E1FBAC55A89075A40698813C20E46B2AE3CCF53A2203B42A9BB18B10
          9FBBA85C973B0169CA03E43469B32E665FD90B19BC7C0BC979FDD30A4C470E3E
          6DA4438EAABF7F293009926AF72B30273D78B468086FBBDF22C0249F4724CEA2
          DD74E67D86763348FB917392707F1E29124CAA13A22C9837916CEB5FABC409B1
          066D40B2E974DE97793B211611C6EC99BDC830F26EF9B40FA06A174DE43CB303
          806BA97EE9FBBF7024DD6BD52BEBF0255F2BF97AC9389009E20ABA05C4CF743E
          7F00AB8BF34267CC52FE0000000049454E44AE426082}
      end
    end
    object pnlBottom: TPanel
      Left = 0
      Top = 780
      Width = 1129
      Height = 67
      Align = alBottom
      BevelOuter = bvNone
      Caption = '[PAGEUP] Voltar    [PAGEDOWN] Avan'#231'ar    [ESC] Cancelar'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
    object pnlEditNome: TPanel
      Left = 15
      Top = 158
      Width = 1099
      Height = 52
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object Shape1: TShape
        Left = 0
        Top = 0
        Width = 1093
        Height = 50
        Pen.Color = 13882323
        Shape = stRoundRect
      end
      object pnlCod: TPanel
        Left = 1
        Top = 1
        Width = 87
        Height = 48
        BevelOuter = bvNone
        Caption = 'C'#243'd'
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -27
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
      object EdtNome: TEdit
        Left = 91
        Top = 1
        Width = 1001
        Height = 48
        Margins.Left = 0
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -35
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyDown = EdtNomeKeyDown
        OnKeyPress = EdtNomeKeyPress
      end
    end
    object pnlListFundo: TPanel
      Left = 16
      Top = 215
      Width = 1092
      Height = 538
      BevelOuter = bvNone
      Color = 14803425
      ParentBackground = False
      TabOrder = 3
      object gridItem: TDBGrid
        Left = 0
        Top = 40
        Width = 1092
        Height = 498
        Align = alClient
        BorderStyle = bsNone
        DataSource = dsConsItem
        GradientEndColor = 5439488
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Options = [dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnKeyDown = gridItemKeyDown
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'idproduto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            Title.Caption = 'C'#243'digo    '
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -27
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descproduto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            Title.Caption = 'CPF_CNPJ'
            Width = 680
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'qtd_item'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            Title.Caption = 'Nome'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -27
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 105
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'vlrtotal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            Width = 125
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1092
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        Color = 14803425
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 1097
        object Label2: TLabel
          Left = 0
          Top = 0
          Width = 169
          Height = 40
          Align = alLeft
          AutoSize = False
          Caption = '   C'#243'd. Barra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object Label3: TLabel
          Left = 169
          Top = 0
          Width = 674
          Height = 40
          Align = alLeft
          AutoSize = False
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object Label4: TLabel
          Left = 953
          Top = 0
          Width = 120
          Height = 40
          Align = alLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object Label5: TLabel
          Left = 843
          Top = 0
          Width = 110
          Height = 40
          Align = alLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Quantidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
      end
    end
  end
  object qryConsItem: TFDQuery
    Active = True
    Connection = DM.Conexao
    Transaction = DM.FDTransaction1
    UpdateTransaction = DM.FDTransaction1
    SQL.Strings = (
      'SELECT * FROM item_venda WHERE iditemvenda ORDER BY iditemvenda')
    Left = 232
    Top = 343
    object qryConsItemiditemvenda: TFDAutoIncField
      FieldName = 'iditemvenda'
      ReadOnly = True
    end
    object qryConsItemidvenda: TIntegerField
      FieldName = 'idvenda'
    end
    object qryConsItemidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object qryConsItemdescproduto: TStringField
      FieldName = 'descproduto'
      Size = 30
    end
    object qryConsItemmedida: TStringField
      FieldName = 'medida'
      Size = 30
    end
    object qryConsItemqtd_item: TBCDField
      FieldName = 'qtd_item'
      DisplayFormat = '#,##0.000'
      Precision = 10
      Size = 3
    end
    object qryConsItemvlrunit: TBCDField
      FieldName = 'vlrunit'
      Precision = 10
      Size = 2
    end
    object qryConsItemvlrtotal: TBCDField
      FieldName = 'vlrtotal'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object qryConsItemitemcancel: TStringField
      FieldName = 'itemcancel'
      Size = 1
    end
  end
  object dsConsItem: TDataSource
    DataSet = qryConsItem
    Left = 232
    Top = 400
  end
end
