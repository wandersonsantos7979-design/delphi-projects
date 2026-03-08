object FrmCadastroProjeto: TFrmCadastroProjeto
  Left = 0
  Top = 0
  Caption = 'Cadastro de Projeto'
  ClientHeight = 441
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object PCPagina: TcxPageControl
    Left = 0
    Top = 0
    Width = 634
    Height = 441
    Align = alClient
    Color = clMenuHighlight
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    Properties.ActivePage = TSCadastro
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 10
    Properties.TabPosition = tpBottom
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    OnMouseEnter = PCPaginaMouseEnter
    ExplicitWidth = 630
    ExplicitHeight = 440
    ClientRectBottom = 420
    ClientRectRight = 634
    ClientRectTop = 0
    object TSPesquisa: TcxTabSheet
      Caption = 'Pesquisa'
      ImageIndex = 0
      object cxScrollBox1: TcxScrollBox
        Left = 0
        Top = 35
        Width = 634
        Height = 385
        Align = alClient
        TabOrder = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 632
          Height = 383
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = cxcbsNone
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellDblClick = cxGrid1DBTableView1CellDblClick
            DataController.DataSource = DSQryProjeto
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1cod_projeto: TcxGridDBColumn
              Caption = 'C'#243'd. Projeto'
              DataBinding.FieldName = 'cod_projeto'
              Options.Editing = False
              Width = 73
            end
            object cxGrid1DBTableView1Nome: TcxGridDBColumn
              DataBinding.FieldName = 'Nome'
              Width = 234
            end
            object cxGrid1DBTableView1Data_inicio: TcxGridDBColumn
              Caption = 'Inicio'
              DataBinding.FieldName = 'Data_inicio'
            end
            object cxGrid1DBTableView1data_termino: TcxGridDBColumn
              Caption = 'T'#233'rmino'
              DataBinding.FieldName = 'data_termino'
              Width = 154
            end
            object cxGrid1DBTableView1Status: TcxGridDBColumn
              DataBinding.FieldName = 'Status'
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
        Width = 634
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        Color = clMenuHighlight
        Ctl3D = True
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 1
        object CBOpcaoPesquisa: TcxComboBox
          Left = 5
          Top = 5
          Style.BorderStyle = ebsNone
          Style.Color = clBtnFace
          Style.ButtonTransparency = ebtInactive
          TabOrder = 0
          Width = 121
        end
        object BEPesquisa: TcxButtonEdit
          Left = 129
          Top = 5
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = BEPesquisaPropertiesButtonClick
          Style.BorderStyle = ebsNone
          TabOrder = 1
          OnKeyDown = BEPesquisaKeyDown
          Width = 486
        end
      end
    end
    object TSCadastro: TcxTabSheet
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'Cadastro'
      ImageIndex = 1
      ExplicitWidth = 630
      ExplicitHeight = 419
      object dxPanel1: TdxPanel
        Left = 0
        Top = 35
        Width = 634
        Height = 385
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 630
        ExplicitHeight = 384
        object lbnome: TcxLabel
          Left = 3
          Top = 5
          Caption = 'Nome'
        end
        object Descricao: TcxDBMemo
          Left = 0
          Top = 128
          Align = alBottom
          DataBinding.DataField = 'descricao'
          DataBinding.DataSource = DSQryProjeto
          TabOrder = 1
          ExplicitTop = 127
          ExplicitWidth = 628
          Height = 255
          Width = 632
        end
        object Data_Inicio: TcxDBDateEdit
          Left = 5
          Top = 81
          DataBinding.DataField = 'Data_inicio'
          DataBinding.DataSource = DSQryProjeto
          TabOrder = 2
          Width = 121
        end
        object Data_Termino: TcxDBDateEdit
          Left = 131
          Top = 81
          DataBinding.DataField = 'data_termino'
          DataBinding.DataSource = DSQryProjeto
          TabOrder = 3
          Width = 121
        end
        object cxLabel1: TcxLabel
          Left = 3
          Top = 57
          Caption = 'Data Inicio'
        end
        object Status: TcxDBRadioGroup
          Left = 443
          Top = 0
          Align = alRight
          Caption = 'Status'
          DataBinding.DataField = 'Status'
          DataBinding.DataSource = DSQryProjeto
          Enabled = False
          Properties.Columns = 2
          Properties.DefaultValue = 'P'
          Properties.Items = <
            item
              Caption = 'Planejado'
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
          TabOrder = 5
          ExplicitLeft = 439
          ExplicitHeight = 127
          Height = 128
          Width = 189
        end
        object Nome: TcxDBTextEdit
          Left = 6
          Top = 30
          DataBinding.DataField = 'Nome'
          DataBinding.DataSource = DSQryProjeto
          TabOrder = 6
          Width = 246
        end
        object cxLabel2: TcxLabel
          Left = 131
          Top = 57
          Caption = 'Data T'#233'rmino'
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 634
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        Color = clMenuHighlight
        Ctl3D = True
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 1
        ExplicitWidth = 630
        object BtnIncluir: TcxButton
          Left = 4
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
          Left = 84
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Alterar'
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
          TabOrder = 1
          OnClick = BtnAlterarClick
        end
        object BtnCancelar: TcxButton
          Left = 163
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          Enabled = False
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
          TabOrder = 2
          OnClick = BtnCancelarClick
        end
        object BtnSalvar: TcxButton
          Left = 244
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Salvar'
          Enabled = False
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
          TabOrder = 3
          OnClick = BtnSalvarClick
        end
      end
    end
  end
  object QryProjeto: TFDQuery
    BeforePost = QryProjetoBeforePost
    CachedUpdates = True
    Connection = UBancoDados.FDConexao
    UpdateObject = USProjeto
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
    Left = 360
    Top = 227
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
    Left = 360
    Top = 299
  end
  object USProjeto: TFDUpdateSQL
    Connection = UBancoDados.FDConexao
    InsertSQL.Strings = (
      'INSERT INTO dbprojeto.dbo.tab_projects'
      '('
      '  Nome,'
      '  descricao,'
      '  Data_inicio,'
      '  data_termino,'
      '  Status'
      ')'
      'VALUES'
      '('
      '  :Nome,'
      '  :Descricao,'
      '  :Data_Inicio,'
      '  :Data_Termino,'
      '  :Status'
      ')')
    ModifySQL.Strings = (
      'UPDATE dbprojeto.dbo.tab_projects'
      'SET'
      '  Nome          = :Nome,'
      '  descricao     = :Descricao,'
      '  Data_inicio   = :Data_inicio,'
      '  Data_termino  = :Data_termino ,'
      '  Status        = :Status'
      'WHERE cod_projeto = :OLD_cod_projeto')
    Left = 456
    Top = 307
  end
end
