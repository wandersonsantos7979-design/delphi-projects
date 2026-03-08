object UBancoDados: TUBancoDados
  Height = 480
  Width = 640
  object FDConexao: TFDConnection
    Params.Strings = (
      'DriverID=MSSQL'
      'Server=SERVIDOR'
      'Database=dbprojeto'
      'OSAuthent=Yes'
      'Encrypt=No'
      'TrustServerCertificate=Yes')
    Connected = True
    LoginPrompt = False
    Left = 304
    Top = 224
  end
end
