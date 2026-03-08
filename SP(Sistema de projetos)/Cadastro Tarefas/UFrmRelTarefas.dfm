object FrmRelTarefas: TFrmRelTarefas
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Tarefas'
  ClientHeight = 152
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  TextHeight = 15
  object dxPanel1: TdxPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 127
    Align = alClient
    TabOrder = 0
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
      Properties.ListSource = DSQryTarefaLKP
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
    TabOrder = 1
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
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DSQryTarefa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 296
    Top = 16
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
    ReportOptions.LastChange = 46066.654598182900000000
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
      HGuides.Strings = (
        '86,92919')
      VGuides.Strings = (
        '282,90')
      PaperWidth = 300.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
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
            'RELAT'#211'RIO DE STATUS DA TAREFA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 94.488250000000000000
        Top = 102.047310000000000000
        Width = 1058.268400000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1cod_projeto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 10.771490000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'cod_projeto'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."cod_projeto"]')
        end
        object frxDBDataset1nome_projeto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 112.821620000000000000
          Top = 7.559060000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'nome_projeto'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."nome_projeto"]')
        end
        object frxDBDataset1cod_tarefa: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'cod_tarefa'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."cod_tarefa"]')
        end
        object frxDBDataset1nome_tarefa: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 11.338590000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'nome_tarefa'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."nome_tarefa"]')
        end
        object frxDBDataset1projeto_data_inicio: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 97.703500000000000000
          Top = 45.354360000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DataField = 'projeto_data_inicio'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."projeto_data_inicio"]')
        end
        object frxDBDataset1projeto_data_termino_prevista: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 45.354360000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DataField = 'projeto_data_termino_prevista'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."projeto_data_termino_prevista"]')
        end
        object frxDBDataset1status_tarefa: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 1043.150280000000000000
          Top = 11.338590000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          DataField = 'status_tarefa'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."status_tarefa"]')
        end
        object frxDBDataset1nome_colaborador: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 97.703030000000000000
          Top = 69.252010000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'nome_colaborador'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."nome_colaborador"]')
        end
      end
    end
  end
  object QryTarefa: TFDQuery
    Active = True
    Connection = UBancoDados.FDConexao
    SQL.Strings = (
      'EXEC dbprojeto.dbo.spr_tarefas'
      ' NULL                          '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,5                           '
      ' ,NULL                         '
      '')
    Left = 352
    Top = 20
    object QryTarefacod_projeto: TIntegerField
      FieldName = 'cod_projeto'
      Origin = 'cod_projeto'
      Required = True
    end
    object QryTarefanome_projeto: TStringField
      FieldName = 'nome_projeto'
      Origin = 'nome_projeto'
      Size = 200
    end
    object QryTarefaprojeto_data_inicio: TSQLTimeStampField
      FieldName = 'projeto_data_inicio'
      Origin = 'projeto_data_inicio'
    end
    object QryTarefaprojeto_data_termino_prevista: TSQLTimeStampField
      FieldName = 'projeto_data_termino_prevista'
      Origin = 'projeto_data_termino_prevista'
    end
    object QryTarefacod_tarefa: TIntegerField
      FieldName = 'cod_tarefa'
      Origin = 'cod_tarefa'
      Required = True
    end
    object QryTarefanome_tarefa: TStringField
      FieldName = 'nome_tarefa'
      Origin = 'nome_tarefa'
      Size = 200
    end
    object QryTarefadescricao_tarefa: TStringField
      FieldName = 'descricao_tarefa'
      Origin = 'descricao_tarefa'
      Size = 500
    end
    object QryTarefastatus_tarefa: TStringField
      FieldName = 'status_tarefa'
      Origin = 'status_tarefa'
      FixedChar = True
      Size = 1
    end
    object QryTarefacod_funcionario: TIntegerField
      FieldName = 'cod_funcionario'
      Origin = 'cod_funcionario'
    end
    object QryTarefanome_colaborador: TStringField
      FieldName = 'nome_colaborador'
      Origin = 'nome_colaborador'
      Size = 200
    end
    object QryTarefacod_alocacao: TIntegerField
      FieldName = 'cod_alocacao'
      Origin = 'cod_alocacao'
    end
    object QryTarefaalocacao_data_inicio: TSQLTimeStampField
      FieldName = 'alocacao_data_inicio'
      Origin = 'alocacao_data_inicio'
    end
    object QryTarefaalocacao_data_termino: TSQLTimeStampField
      FieldName = 'alocacao_data_termino'
      Origin = 'alocacao_data_termino'
    end
  end
  object QryTarefaLKP: TFDQuery
    Active = True
    Connection = UBancoDados.FDConexao
    SQL.Strings = (
      'EXEC dbprojeto.dbo.spr_tarefas'
      ' NULL                          '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,1                            '
      ' ,NULL                         ')
    Left = 416
    Top = 20
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
  object DSQryTarefa: TDataSource
    DataSet = QryTarefa
    Left = 456
    Top = 84
  end
  object DSQryTarefaLKP: TDataSource
    DataSet = QryTarefaLKP
    Left = 360
    Top = 84
  end
end
