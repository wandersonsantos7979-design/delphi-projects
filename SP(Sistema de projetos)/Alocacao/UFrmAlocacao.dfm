object FrmAlocacao: TFrmAlocacao
  Left = 0
  Top = 0
  Caption = 'FrmAlocacao'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object cxScrollBox1: TcxScrollBox
    Left = 0
    Top = 113
    Width = 628
    Height = 294
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 624
    ExplicitHeight = 293
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 626
      Height = 292
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      ExplicitWidth = 622
      ExplicitHeight = 291
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSQryAlocacao
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1cod_alocacao: TcxGridDBColumn
          DataBinding.FieldName = 'cod_alocacao'
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object cxGrid1DBTableView1cod_funcionario: TcxGridDBColumn
          DataBinding.FieldName = 'cod_funcionario'
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object cxGrid1DBTableView1nome_projeto: TcxGridDBColumn
          Caption = 'Projeto'
          DataBinding.FieldName = 'nome_projeto'
          DataBinding.IsNullValueType = True
          Options.Editing = False
          Width = 52
        end
        object cxGrid1DBTableView1cod_tarefa: TcxGridDBColumn
          DataBinding.FieldName = 'cod_tarefa'
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object cxGrid1DBTableView1Nome_tarefa: TcxGridDBColumn
          Caption = 'Tarefa'
          DataBinding.FieldName = 'cod_tarefa'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cod_tarefa'
          Properties.ListColumns = <
            item
              FieldName = 'Nome'
            end>
          Properties.ListSource = DSQryTarefa
          Properties.OnEditValueChanged = cxGrid1DBTableView1Nome_tarefaPropertiesEditValueChanged
          Width = 100
        end
        object cxGrid1DBTableView1Nome_Colaborador: TcxGridDBColumn
          Caption = 'Colaborador'
          DataBinding.FieldName = 'cod_funcionario'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cod_funcionario'
          Properties.ListColumns = <
            item
              FieldName = 'Nome'
            end>
          Properties.ListSource = DSQryColaborador
          Width = 115
        end
        object cxGrid1DBTableView1data_inicio: TcxGridDBColumn
          Caption = 'Data Inicio'
          DataBinding.FieldName = 'data_inicio'
          DataBinding.IsNullValueType = True
          Width = 62
        end
        object cxGrid1DBTableView1data_termino: TcxGridDBColumn
          Caption = 'Data T'#233'rmino'
          DataBinding.FieldName = 'data_termino'
          DataBinding.IsNullValueType = True
          Width = 67
        end
        object cxGrid1DBTableView1cod_projeto: TcxGridDBColumn
          DataBinding.FieldName = 'cod_projeto'
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object cxGrid1DBTableView1Status: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'status_alocacao'
          DataBinding.IsNullValueType = True
          Width = 94
        end
        object cxGrid1DBTableView1descricao_tarefa: TcxGridDBColumn
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'descricao_tarefa'
          DataBinding.IsNullValueType = True
          Width = 136
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 113
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    ExplicitWidth = 624
    object cxLabel1: TcxLabel
      Left = 3
      Top = 52
      Caption = 'Data Inicio'
    end
    object cxLabel2: TcxLabel
      Left = 131
      Top = 52
      Caption = 'Data T'#233'rmino'
    end
    object CBOpcaoPesquisa: TcxComboBox
      Left = 5
      Top = 24
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.ButtonTransparency = ebtInactive
      TabOrder = 2
      Width = 121
    end
    object DTData_Inicio: TcxDateEdit
      Left = 5
      Top = 76
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 121
    end
    object DTData_Termino: TcxDateEdit
      Left = 131
      Top = 76
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Width = 121
    end
    object TEPesquisa: TcxTextEdit
      Left = 132
      Top = 24
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Width = 205
    end
    object cxLabel3: TcxLabel
      Left = 5
      Top = 0
      Caption = 'Op'#231#227'o de Pesquisa'
    end
    object cxLabel4: TcxLabel
      Left = 132
      Top = 0
      Caption = 'Pesquisa'
    end
    object BtnMenu: TcxImage
      Left = 258
      Top = 50
      Picture.Data = {
        0D546478536D617274496D6167653C3F786D6C2076657273696F6E3D22312E30
        2220656E636F64696E673D225554462D38223F3E0D0A3C73766720786D6C6E73
        3D22687474703A2F2F7777772E77332E6F72672F323030302F73766722207669
        6577426F783D22302030203530203530222077696474683D2235307078222068
        65696768743D2235307078223E0D0A093C7061746820643D224D203231203320
        432031312E363231303934203320342031302E36323130393420342032302043
        20342032392E3337383930362031312E36323130393420333720323120333720
        432032342E3731303933382033372032382E3134303632352033352E38303436
        38382033302E393337352033332E3738313235204C2034342E30393337352034
        362E3930363235204C2034362E39303632352034342E3039333735204C203333
        2E39303632352033312E3036323520432033362E3436303933382032382E3038
        353933382033382032342E32323236353620333820323020432033382031302E
        3632313039342033302E33373839303620332032312033205A204D2032312035
        20432032392E32393638373520352033362031312E3730333132352033362032
        3020432033362032382E3239363837352032392E323936383735203335203231
        20333520432031322E37303331323520333520362032382E3239363837352036
        203230204320362031312E3730333132352031322E3730333132352035203231
        2035205A222F3E0D0A3C2F7376673E0D0A}
      Style.BorderColor = clNone
      Style.BorderStyle = ebsNone
      Style.Color = clHotLight
      StyleFocused.Color = clHotLight
      TabOrder = 8
      Transparent = True
      OnClick = BtnMenuClick
      Height = 60
      Width = 56
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 407
    Width = 628
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 2
    ExplicitTop = 406
    ExplicitWidth = 624
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 628
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      Color = clMenuHighlight
      Ctl3D = True
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 0
      object BtnIncluir: TcxButton
        Left = 234
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Incluir'
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
        TabOrder = 0
        OnClick = BtnIncluirClick
      end
      object BtnAlterar: TcxButton
        Left = 314
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Alterar'
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
        TabOrder = 1
        OnClick = BtnAlterarClick
      end
    end
  end
  object QryAlocacao: TFDQuery
    AfterOpen = QryAlocacaoAfterOpen
    BeforePost = QryAlocacaoBeforePost
    ConstraintsEnabled = True
    Connection = UBancoDados.FDConexao
    UpdateObject = USAlocacao
    SQL.Strings = (
      'EXEC dbprojeto.dbo.spr_alocacao'
      ' NULL                          '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,1                            '
      ' ,NULL                         ')
    Left = 360
    Top = 227
  end
  object DSQryAlocacao: TDataSource
    DataSet = QryAlocacao
    Left = 376
    Top = 307
  end
  object USAlocacao: TFDUpdateSQL
    Connection = UBancoDados.FDConexao
    InsertSQL.Strings = (
      'INSERT INTO dbprojeto.dbo.tab_projects_allocation'
      '('
      '  cod_funcionario,'
      '  cod_tarefa,'
      '  data_inicio,'
      '  data_termino'
      ')'
      'VALUES'
      '('
      '  :cod_funcionario,'
      '  :cod_tarefa,'
      '  :data_inicio,'
      '  :data_termino'
      ')')
    ModifySQL.Strings = (
      'UPDATE dbprojeto.dbo.tab_projects_allocation'
      'SET'
      '  cod_funcionario = :cod_funcionario,'
      '  cod_tarefa      = :cod_tarefa,'
      '  data_inicio     = :data_inicio,'
      '  data_termino    = :data_termino'
      'WHERE cod_alocacao = :OLD_cod_alocacao;')
    Left = 232
    Top = 339
  end
  object QryTarefa: TFDQuery
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
    Left = 448
    Top = 227
  end
  object QryColaborador: TFDQuery
    Connection = UBancoDados.FDConexao
    SQL.Strings = (
      'EXEC dbprojeto.dbo.spr_colaboradores'
      ' NULL                          '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,NULL                         '
      ' ,1                            '
      ' ,NULL                         ')
    Left = 528
    Top = 227
  end
  object DSQryColaborador: TDataSource
    DataSet = QryColaborador
    Left = 528
    Top = 307
  end
  object DSQryTarefa: TDataSource
    DataSet = QryTarefa
    Left = 456
    Top = 307
  end
end
