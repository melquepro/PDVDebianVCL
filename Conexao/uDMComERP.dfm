object DMComERP: TDMComERP
  Height = 537
  Width = 759
  PixelsPerInch = 96
  object qryCaixa: TFDQuery
    Connection = DMConexaoERP.ConexaoERP
    Transaction = DMConexaoERP.Transaction
    UpdateTransaction = DMConexaoERP.Transaction
    SQL.Strings = (
      'SELECT * FROM caixa order by idcaixa')
    Left = 96
    Top = 104
    object qryCaixaidcaixa: TIntegerField
      FieldName = 'idcaixa'
      Origin = 'idcaixa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCaixaidempresa: TIntegerField
      FieldName = 'idempresa'
      Origin = 'idempresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCaixaidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCaixadtabertura: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dtabertura'
      Origin = 'dtabertura'
    end
    object qryCaixadtmovimento: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dtmovimento'
      Origin = 'dtmovimento'
    end
    object qryCaixadtfechamento: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dtfechamento'
      Origin = 'dtfechamento'
    end
    object qryCaixacaixaaberto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'caixaaberto'
      Origin = 'caixaaberto'
      FixedChar = True
      Size = 1
    end
    object qryCaixacaixafechado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'caixafechado'
      Origin = 'caixafechado'
      FixedChar = True
      Size = 1
    end
    object qryCaixavalreforcocx: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valreforcocx'
      Origin = 'valreforcocx'
    end
  end
end
