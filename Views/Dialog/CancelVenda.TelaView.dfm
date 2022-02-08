object FrmOpcaoCancelVenda: TFrmOpcaoCancelVenda
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Opcao de Pesquisa'
  ClientHeight = 469
  ClientWidth = 533
  Color = 15066597
  TransparentColor = True
  TransparentColorValue = 15066597
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object pnlFundo: TPanel
    Left = 24
    Top = 24
    Width = 489
    Height = 417
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 0
      Top = 360
      Width = 489
      Height = 57
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
      ExplicitTop = 286
      ExplicitWidth = 414
    end
    object Label3: TLabel
      Left = 72
      Top = 248
      Width = 87
      Height = 25
      Caption = 'Confirmar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 72
      Top = 279
      Width = 74
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sh1: TShape
      Left = 36
      Top = 247
      Width = 28
      Height = 28
      Pen.Color = 9671571
      Shape = stRoundRect
    end
    object sh2: TShape
      Left = 36
      Top = 278
      Width = 28
      Height = 27
      Pen.Color = 9671571
      Shape = stRoundRect
    end
    object Label5: TLabel
      Left = 44
      Top = 249
      Width = 11
      Height = 25
      Caption = '1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 44
      Top = 278
      Width = 11
      Height = 25
      Caption = '2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlEdit: TPanel
      Left = 20
      Top = 240
      Width = 446
      Height = 66
      BevelOuter = bvNone
      BiDiMode = bdRightToLeftNoAlign
      Color = 13882323
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      Visible = False
      object EdtNum: TEdit
        Left = 0
        Top = 4
        Width = 438
        Height = 58
        Alignment = taCenter
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = 13882323
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -37
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '0'
        Visible = False
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 489
      Height = 169
      Align = alTop
      BevelOuter = bvNone
      Color = 7290415
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object Image1: TImage
        Left = 192
        Top = 0
        Width = 113
        Height = 115
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000640000
          0064080600000070E2955400000006624B474400FF00FF00FFA0BDA793000007
          3E4944415478DAED5D698C144514AE35A092A811CF45240A724576934524261A
          C222B8048251C4457F18444DDC0424F106AFB8188D78E0B181A046C52326DE18
          8D07788D92F0073420424051372AE285D71A1531AEDF677787DDD9573DDD7375
          4DF7FB92979A9DAA57F5AABEE93A5E55F5D6198553A84BDA00456F28218E4109
          710C4A886350421C8312E2189410C7A084380625C43128218E4109710C4A8863
          50421C8312E2186213D2DDDDDD84A02969C36B041BEBEAEA36C6512886907604
          37275DD31AC16210D21E474109A92C9410C7A084380625C431244AC81EC8B749
          B74042A8871C207C9F2821EFA1F0E6A45B2609A04D7208260A514A481250421C
          8312E2189410C7A084380625C43128218E4109710C4A886350421C8312E2186A
          8E10E83C6BC98E066F11D2B722682D67A39503B075B6A57E39536384745BB29B
          049D5C8C3212056C15DB4B0949084A886350421C8312E218D244C88396EC9642
          E71321FD99086614DF7495016C6DB3D42F676A8990B44309710C4A886350421C
          8312E2186A8E10E80CB364B70B3A7F0AE907221858CE462B0760EBE796FAE54C
          8D11A2EB90A865C4354A0911EBC73A2821D58612E21E7EF6438E7BDB21DB20EB
          215CC19F22A457421C8312E2189C25C43685ED82CE3F42FA01080EAC6043D5FB
          75985D4C1BC4006FE04E431D23DF9BC9DCC210F65F84A0037250958AEC82CC47
          DB3C192571660881DDBCE1F400646E42263C04598036FA3B2C51260881CD8720
          78093229AA0A6433641D6407E42BB36F86C5EE77086438E45448A389DE8E6F41
          CE413B75D912A49E109F8CB721274748BE01F218E479D4E5BB88F9733C3A17C2
          AEF0A4082A9C264FB691926A42FC6EEA55364081A41F4116C2FE374A2C6F3A82
          3B21630A245D039981F2F6E647A4FDA0DC38C8B09078F6E73742EE95667BC500
          B6F7477015E41648FF90A4CB50E682FC2FB3BC0ED905390BE5AFAF44E6A80357
          EE1CB7EA4392CD42F92FF6FC22AB847442A6A0ECCF2A5806EB31D27803F9104B
          92DD9051B06377F0451609E9844C40B95F5728FFFCBA908CB590E32C491E872D
          73833FB24608C78CD350E6068B9D13106C43FC0F31DBE44804A3A1B7D612CFEE
          8B71D298F22FA409BA9C66678E90AB51DE528B8D2DC6EBF33F355E771689149F
          0C4EABB92EE198F4A625DD2204B75BB2792E38599FB683725C739C6F89A35F69
          BCC577169031C0FF8ABFD6C98548E94146A3FF15DDF267436F8D90964FC78790
          06212B3E25C3A1F745AAD621B08D76B55BA2A749EB0CE84C351E19F9CECC5052
          043202FC653C52560B3AFC91BD62B1EF26E8DC9A3642F8B48D10A2F8EEC3B142
          7ABA525E3376CFB2484A08190148CA74E8BD9BA7C7F6DE64D1DB8AF463524388
          7FB2C5368D9D07DB56083A8722609F1FE65621C91CEBBEF1758E41C0861E19A2
          C349C319D0F94528938BC10E8BDEF1692284BEA4478528F6CF8360DBF716BDA3
          8DF76B0F7377FCFFA4F89FDF31F23810E063E33D55B6F20621D869E4F17B4E9A
          08598660BE10B509763515D03DCA780D5D8814B657D164F4286FB3259F8E3411
          C2AE678A10B50276CD8BA01F8594304422C32F8BB3CE4B85A8D5692284A70A87
          0A5197C3AEFB23E6512C2991C9F0CBB91281B41EDA912642E80F3A4C88EAE3C0
          2B904F5C526291E197414FB6E401FF314D84F0259CFB0B5153A5855A81BC480A
          07FA8602496393E1E7CFB58FB4F7B2274D84D04F25F98A5A6CEE8C90BC949052
          A15D565F244D880EEA7948FA45CA5CE0492E90CC4E7B5D858B0B431EAA90FC59
          655D18BA0AD75C27DC63A75FACE2AE139771051AE83EA12E838DE7281C11A2CB
          43102D81A3D07748721A3D3E44879B5C7448EE14CAE48994BB051D6EE20DCE0A
          21EC22B84DDA6BE73221F73B6D919EB02D48DF901542086EAFBE2CD4A79A1B54
          3311D8A6E0D7416749DAFE29D811903B20FB09715B8DF794F4392D58A52D5C7A
          11F8748C12B2E2B6F2509E8449DDBFCD43C59F31DEBD0F09D7A2D27759F42A7D
          C8E17A04B759B2790A7A17F0431A09E156ED0796BAF1E96846E5D759742B750C
          8817427960AE9F10CD59602374F904A78F10BF011E46708925FA57C84434C0A6
          2AD9C21F48CE782762242C872D97057FA495102EF47843D67695EE4BE34D65B7
          57D88E131170703FD692A4F4A3A4B50234C679089E0E49C26E6996AD9B2943F9
          CD085E30B2C33340E987AD6B0968145E616B0B49C2D9CD0D907BCA7C1DE11AC8
          62238F1901CA731DA196E04F35B9F02B746187D35C5ED879BDC4F2786187D3EE
          42FB28BC4434B32C17766A0DFE9536FA9FC64548CEA39E3C4A14E74A1B7D61DC
          DFB818323682CAFBC63B45F98714997A42089F945590D3A3AA98CA5CFAE4D3DA
          6A23C3C4C8A8E6E1DF37E446555BA9791589E5C67372EE0D4B941942028018DE
          98E5607F78958AE46CAE0D44AC8A923873841020853E2FBA502EAC601B7005FE
          086411C8F829AA52260909E01FD05E68BC01B95F89D9056097B412B284F73DE2
          2A679A900020868723F8B4CC31F2418928E0E0CFF7993C01223A8BB54509C903
          C839C1786F87E31585D1BE1C6CF6BDACE677C86FA6F70BCC72C53C0D12FE0323
          F52986F59A0BA80000000049454E44AE426082}
      end
      object lblMsg: TLabel
        Left = 0
        Top = 112
        Width = 489
        Height = 57
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Cancelamento da Venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -37
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object qryItemVenda: TFDTable
    IndexFieldNames = 'iditemvenda'
    Connection = DM.Conexao
    Transaction = DM.FDTransaction1
    UpdateTransaction = DM.FDTransaction1
    TableName = 'frcaixa.item_venda'
    Left = 368
    Top = 196
    object qryItemVendaiditemvenda: TFDAutoIncField
      FieldName = 'iditemvenda'
      Origin = 'iditemvenda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryItemVendaidvenda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object qryItemVendaidproduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object qryItemVendadescproduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descproduto'
      Origin = 'descproduto'
      Size = 30
    end
    object qryItemVendamedida: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medida'
      Origin = 'medida'
      Size = 30
    end
    object qryItemVendaqtd_item: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'qtd_item'
      Origin = 'qtd_item'
      Precision = 10
      Size = 3
    end
    object qryItemVendavlrunit: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vlrunit'
      Origin = 'vlrunit'
      Precision = 10
      Size = 2
    end
    object qryItemVendavlrtotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vlrtotal'
      Origin = 'vlrtotal'
      Precision = 10
      Size = 2
    end
    object qryItemVendaitemcancel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'itemcancel'
      Origin = 'itemcancel'
      Size = 1
    end
  end
end
