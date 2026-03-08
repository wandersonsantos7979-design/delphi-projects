object FrmInclusaoAlocacao: TFrmInclusaoAlocacao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'FrmInclusaoAlocacao'
  ClientHeight = 202
  ClientWidth = 468
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object dxPanel1: TdxPanel
    Left = 0
    Top = 0
    Width = 468
    Height = 177
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 464
    ExplicitHeight = 188
    object lbnome: TcxLabel
      Left = 3
      Top = 5
      Caption = 'Tarefa'
    end
    object cxLabel1: TcxLabel
      Left = 3
      Top = 57
      Caption = 'Data Inicio'
    end
    object cxLabel2: TcxLabel
      Left = 131
      Top = 57
      Caption = 'Data T'#233'rmino'
    end
    object cxLabel3: TcxLabel
      Left = 3
      Top = 109
      Caption = 'Colaborador'
    end
    object cod_funcionario: TcxLookupComboBox
      Left = 3
      Top = 134
      Properties.ListColumns = <>
      TabOrder = 4
      Width = 249
    end
    object cod_tarefa: TcxLookupComboBox
      Left = 3
      Top = 28
      Properties.ListColumns = <>
      TabOrder = 5
      Width = 249
    end
    object Data_Inicio: TcxDateEdit
      Left = 3
      Top = 80
      TabOrder = 6
      Width = 121
    end
    object Data_Termino: TcxDateEdit
      Left = 131
      Top = 81
      TabOrder = 7
      Width = 121
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 177
    Width = 468
    Height = 25
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    ExplicitTop = 178
    object BtnOK: TcxButton
      Left = 369
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
      Left = 288
      Top = 1
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
  end
end
