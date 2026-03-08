object FrmCadastroColaborador: TFrmCadastroColaborador
  Left = 0
  Top = 0
  Caption = 'Cadastro de Colaborador'
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
  OnShow = FormShow
  TextHeight = 15
  object PCPagina: TcxPageControl
    Left = 0
    Top = 0
    Width = 628
    Height = 442
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
    OnMouseDown = PCPaginaMouseDown
    ExplicitWidth = 624
    ExplicitHeight = 441
    ClientRectBottom = 421
    ClientRectRight = 628
    ClientRectTop = 0
    object TSPesquisa: TcxTabSheet
      Caption = 'Pesquisa'
      ImageIndex = 0
      object cxScrollBox1: TcxScrollBox
        Left = 0
        Top = 35
        Width = 628
        Height = 386
        Align = alClient
        TabOrder = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 626
          Height = 384
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
            DataController.DataSource = DSQryColaborador
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1cod_funcionario: TcxGridDBColumn
              DataBinding.FieldName = 'cod_funcionario'
            end
            object cxGrid1DBTableView1Nome: TcxGridDBColumn
              DataBinding.FieldName = 'Nome'
            end
            object cxGrid1DBTableView1Cargo: TcxGridDBColumn
              DataBinding.FieldName = 'Cargo'
            end
            object cxGrid1DBTableView1Departamento: TcxGridDBColumn
              DataBinding.FieldName = 'Departamento'
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
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        Color = clMenuHighlight
        Ctl3D = True
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 1
        object CBOpcaoPesquisa: TcxComboBox
          Left = 1
          Top = 6
          Style.BorderStyle = ebsNone
          Style.Color = clBtnFace
          Style.ButtonTransparency = ebtInactive
          TabOrder = 0
          Width = 121
        end
        object BEPesquisa: TcxButtonEdit
          Left = 127
          Top = 6
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
      ExplicitWidth = 624
      ExplicitHeight = 420
      object dxPanel1: TdxPanel
        Left = 0
        Top = 35
        Width = 628
        Height = 386
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 624
        ExplicitHeight = 385
        object lbnome: TcxLabel
          Left = 3
          Top = 5
          Caption = 'Nome'
        end
        object cxLabel1: TcxLabel
          Left = 3
          Top = 57
          Caption = 'Cargo'
        end
        object Nome: TcxDBTextEdit
          Left = 5
          Top = 29
          DataBinding.DataField = 'Nome'
          DataBinding.DataSource = DSQryColaborador
          TabOrder = 2
          Width = 246
        end
        object cxLabel2: TcxLabel
          Left = 3
          Top = 109
          Caption = 'Departamento'
        end
        object Cargo: TcxDBTextEdit
          Left = 5
          Top = 81
          DataBinding.DataField = 'Cargo'
          DataBinding.DataSource = DSQryColaborador
          TabOrder = 4
          Width = 246
        end
        object Departamento: TcxDBTextEdit
          Left = 5
          Top = 133
          DataBinding.DataField = 'Departamento'
          DataBinding.DataSource = DSQryColaborador
          TabOrder = 5
          Width = 246
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 628
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        Color = clMenuHighlight
        Ctl3D = True
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 1
        ExplicitWidth = 624
        object BtnIncluir: TcxButton
          Left = 3
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
  object QryColaborador: TFDQuery
    Active = True
    BeforePost = QryColaboradorBeforePost
    CachedUpdates = True
    Connection = UBancoDados.FDConexao
    UpdateObject = USColaborador
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
    Left = 360
    Top = 227
    object QryColaboradorcod_funcionario: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'cod_funcionario'
      Origin = 'cod_funcionario'
      Required = True
    end
    object QryColaboradorNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 200
    end
    object QryColaboradorCargo: TStringField
      FieldName = 'Cargo'
      Origin = 'Cargo'
      Size = 500
    end
    object QryColaboradorDepartamento: TStringField
      FieldName = 'Departamento'
      Origin = 'Departamento'
      Size = 100
    end
  end
  object DSQryColaborador: TDataSource
    DataSet = QryColaborador
    Left = 360
    Top = 299
  end
  object USColaborador: TFDUpdateSQL
    Connection = UBancoDados.FDConexao
    InsertSQL.Strings = (
      'INSERT INTO dbprojeto.dbo.tab_employees'
      '('
      '  Nome,'
      '  Cargo,'
      '  Departamento'
      ')'
      'VALUES'
      '('
      '  :Nome,'
      '  :Cargo,'
      '  :Departamento'
      ')')
    ModifySQL.Strings = (
      'UPDATE dbprojeto.dbo.tab_employees'
      'SET'
      '  Nome          = :Nome,'
      '  Cargo          = :Cargo,'
      '  Departamento = :Departamento'
      'WHERE cod_funcionario = :OLD_cod_funcionario')
    Left = 456
    Top = 307
  end
end
