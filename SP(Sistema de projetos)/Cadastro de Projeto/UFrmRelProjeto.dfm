object FrmRelProjeto: TFrmRelProjeto
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Projetos'
  ClientHeight = 152
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  TextHeight = 15
  object Panel2: TPanel
    Left = 0
    Top = 127
    Width = 417
    Height = 25
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    ExplicitTop = 126
    ExplicitWidth = 413
    object BtnOK: TcxButton
      Left = 329
      Top = 1
      Width = 75
      Height = 25
      Caption = 'OK'
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
      OnClick = BtnOKClick
    end
    object BtnCancelar: TcxButton
      Left = 256
      Top = 1
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
    end
  end
  object dxPanel1: TdxPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 127
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 413
    ExplicitHeight = 126
    object lbnome: TcxLabel
      Left = 3
      Top = 5
      Caption = 'Nome'
    end
    object cxLabel1: TcxLabel
      Left = 3
      Top = 57
      Caption = 'Status'
    end
    object Nome: TcxLookupComboBox
      Left = 3
      Top = 28
      Properties.KeyFieldNames = 'cod_projeto'
      Properties.ListColumns = <
        item
          FieldName = 'Nome'
        end>
      Properties.ListSource = DSQryProjetoLKP
      TabOrder = 2
      Width = 248
    end
    object cxRadioGroup1: TcxRadioGroup
      Left = 3
      Top = 57
      Caption = 'Status'
      Properties.Columns = 4
      Properties.Items = <
        item
          Caption = 'Pendente'
          Value = 'P'
        end
        item
          Caption = 'Em Andamento'
          Value = 'E'
        end
        item
          Caption = 'Suspenso'
          Value = 'S'
        end
        item
          Caption = 'Concluido'
          Value = 'C'
        end>
      TabOrder = 3
      Height = 38
      Width = 342
    end
  end
  object frxReport1: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46065.294024976900000000
    ReportOptions.LastChange = 46065.294024976900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 296
    Top = 72
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 300.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 102.047310000000000000
        Width = 1058.268400000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1cod_projeto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'cod_projeto'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."cod_projeto"]')
          ParentFont = False
        end
        object frxDBDataset1Nome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'Nome'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Nome"]')
          ParentFont = False
        end
        object frxDBDataset1Data_inicio: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 3.779530000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataField = 'Data_inicio'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Data_inicio"]')
          ParentFont = False
        end
        object frxDBDataset1data_termino: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 718.110700000000000000
          Top = 3.779530000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'data_termino'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."data_termino"]')
          ParentFont = False
        end
        object frxDBDataset1Status: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 948.662030000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'Status'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Status"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Description = 'RELAT'#211'RIO DE STATUS DO PROJETO'
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 1058.268400000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = -3.779530000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RELAT'#211'RIO DE STATUS DO PROJETO')
          ParentFont = False
        end
      end
    end
  end
  object QryProjeto: TFDQuery
    Active = True
    Connection = UBancoDados.FDConexao
    SQL.Strings = (
      'EXEC dbprojeto.dbo.spr_projetos'
      ' NULL                          '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,1                            '
      ' ,NULL                         ')
    Left = 352
    Top = 20
    object QryProjetocod_projeto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'cod_projeto'
      Required = True
    end
    object QryProjetoNome: TStringField
      FieldName = 'Nome'
      Size = 200
    end
    object QryProjetodescricao: TStringField
      FieldName = 'descricao'
      Size = 500
    end
    object QryProjetoData_inicio: TSQLTimeStampField
      FieldName = 'Data_inicio'
    end
    object QryProjetodata_termino: TSQLTimeStampField
      FieldName = 'data_termino'
    end
    object QryProjetoStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
  end
  object DSQryProjeto: TDataSource
    DataSet = QryProjeto
    Left = 352
    Top = 76
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QryProjeto
    BCDToCurrency = False
    DataSetOptions = []
    Left = 296
    Top = 16
  end
  object QryProjetoLKP: TFDQuery
    Active = True
    Connection = UBancoDados.FDConexao
    SQL.Strings = (
      'EXEC dbprojeto.dbo.spr_projetos'
      ' NULL                          '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,1                            '
      ' ,NULL                         ')
    Left = 264
    Top = 12
    object IntegerField1: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'cod_projeto'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'Nome'
      Size = 200
    end
    object StringField2: TStringField
      FieldName = 'descricao'
      Size = 500
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'Data_inicio'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'data_termino'
    end
    object StringField3: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
  end
  object DSQryProjetoLKP: TDataSource
    DataSet = QryProjetoLKP
    Left = 256
    Top = 76
  end
end
