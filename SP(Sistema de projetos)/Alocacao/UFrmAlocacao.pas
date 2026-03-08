unit UFrmAlocacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxScrollBox, cxPC,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxLabel, Vcl.ComCtrls, dxCore, cxDateUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxGDIPlusClasses, cxImage,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxDBLookupComboBox;

type
  TFrmAlocacao = class(TForm)
    cxScrollBox1: TcxScrollBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    CBOpcaoPesquisa: TcxComboBox;
    DTData_Inicio: TcxDateEdit;
    DTData_Termino: TcxDateEdit;
    TEPesquisa: TcxTextEdit;
    QryAlocacao: TFDQuery;
    DSQryAlocacao: TDataSource;
    USAlocacao: TFDUpdateSQL;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    BtnMenu: TcxImage;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    cxGrid1DBTableView1cod_alocacao: TcxGridDBColumn;
    cxGrid1DBTableView1cod_funcionario: TcxGridDBColumn;
    cxGrid1DBTableView1Nome_Colaborador: TcxGridDBColumn;
    cxGrid1DBTableView1cod_tarefa: TcxGridDBColumn;
    cxGrid1DBTableView1Nome_tarefa: TcxGridDBColumn;
    cxGrid1DBTableView1data_inicio: TcxGridDBColumn;
    cxGrid1DBTableView1data_termino: TcxGridDBColumn;
    cxGrid1DBTableView1descricao_tarefa: TcxGridDBColumn;
    cxGrid1DBTableView1cod_projeto: TcxGridDBColumn;
    cxGrid1DBTableView1nome_projeto: TcxGridDBColumn;
    cxGrid1DBTableView1Status: TcxGridDBColumn;
    QryTarefa: TFDQuery;
    QryColaborador: TFDQuery;
    DSQryColaborador: TDataSource;
    DSQryTarefa: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnMenuClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1Nome_tarefaPropertiesEditValueChanged(
      Sender: TObject);
    procedure QryAlocacaoAfterOpen(DataSet: TDataSet);
    procedure QryAlocacaoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    vQueryAux: TFDQuery;
  public
    { Public declarations }
  end;

var
  FrmAlocacao: TFrmAlocacao;

implementation

{$R *.dfm}

uses UDMBancoDados, UFrmInclusaoAlocacao;

procedure TFrmAlocacao.BtnAlterarClick(Sender: TObject);
begin
  QryAlocacao.Edit;
end;

procedure TFrmAlocacao.BtnIncluirClick(Sender: TObject);
begin
  if not QryColaborador.Active then QryColaborador.Open;
  if not QryTarefa.Active then QryTarefa.Open;

  FrmInclusaoAlocacao := TFrmInclusaoAlocacao.Create(nil);
  try
    FrmInclusaoAlocacao.cod_tarefa.Properties.ListSource := DSQryTarefa;
    FrmInclusaoAlocacao.cod_tarefa.Properties.KeyFieldNames := 'cod_tarefa';
    FrmInclusaoAlocacao.cod_tarefa.Properties.ListFieldNames := 'Nome';

    FrmInclusaoAlocacao.cod_funcionario.Properties.ListSource := DSQryColaborador;
    FrmInclusaoAlocacao.cod_funcionario.Properties.KeyFieldNames := 'cod_funcionario';
    FrmInclusaoAlocacao.cod_funcionario.Properties.ListFieldNames := 'Nome';

    if FrmInclusaoAlocacao.ShowModal = mrOk then
    begin
      QryAlocacao.Close;
      QryAlocacao.SQL.Text :=
        'EXEC dbprojeto.dbo.spr_alocacao NULL,NULL,NULL,NULL,NULL,NULL,3,NULL';
      QryAlocacao.Open;

      QryAlocacao.Append;
      QryAlocacao.FieldByName('cod_tarefa').AsInteger := FrmInclusaoAlocacao.vCodTarefa;
      QryAlocacao.FieldByName('cod_funcionario').AsInteger := FrmInclusaoAlocacao.vCodFuncionario;
      QryAlocacao.FieldByName('data_inicio').AsDateTime := FrmInclusaoAlocacao.vDataInicio;

      if FrmInclusaoAlocacao.vDataTermino = '' then
        QryAlocacao.FieldByName('data_termino').Clear
      else
        QryAlocacao.FieldByName('data_termino').AsDateTime := FrmInclusaoAlocacao.vDataTermino;

      QryAlocacao.Post;

      vQueryAux.Close;
      vQueryAux.SQL.Clear;
      vQueryAux.SQL.Add('EXEC dbprojeto.dbo.spr_alocacao NULL,NULL,NULL,NULL,NULL,:pCod,4,NULL');
      vQueryAux.ParamByName('pCod').AsInteger := FrmInclusaoAlocacao.vCodTarefa;
      vQueryAux.Open;

      QryAlocacao.Close;
      QryAlocacao.SQL.Text :=
         'EXEC dbprojeto.dbo.spr_alocacao NULL,NULL,NULL,NULL,NULL,NULL,1,NULL';
      QryAlocacao.Open;

      cxGrid1DBTableView1.DataController.Refresh;
      cxGrid1DBTableView1.LayoutChanged;
    end;
  finally
    FrmInclusaoAlocacao.Free;
  end;
end;


procedure TFrmAlocacao.BtnMenuClick(Sender: TObject);
begin
  try
    // 1) Reabre lookups primeiro (pra nomes aparecerem)
    QryColaborador.Close;
    QryColaborador.Open;

    QryTarefa.Close;
    QryTarefa.Open;

    if CBOpcaoPesquisa.Text <> '' then
    begin
      QryAlocacao.Close;
      QryAlocacao.SQL.Clear;
      QryAlocacao.SQL.Text :=
      'EXEC dbprojeto.dbo.spr_alocacao '+
      ' NULL, NULL, :pNome, :pData, :pData2, NULL, 2, :pTexto';

      QryAlocacao.ParamByName('pNome').AsString := Trim(CBOpcaoPesquisa.Text);
      QryAlocacao.ParamByName('pTexto').AsString := Trim(TEPesquisa.Text);

      // 🔥 tipa os params SEMPRE
      QryAlocacao.ParamByName('pData').DataType  := ftDateTime;
      QryAlocacao.ParamByName('pData2').DataType := ftDateTime;

      // se não for pesquisa por data, manda NULL tipado
      QryAlocacao.ParamByName('pData').Clear;
      QryAlocacao.ParamByName('pData2').Clear;

      // se for pesquisa por período
      if (CBOpcaoPesquisa.Text = 'data_inicio') or (CBOpcaoPesquisa.Text = 'data_termino') then
      begin
        QryAlocacao.ParamByName('pData').AsDateTime  := DTData_Inicio.Date;
        QryAlocacao.ParamByName('pData2').AsDateTime := DTData_Termino.Date;
      end;
    end
    else
    begin
      QryAlocacao.Close;
      QryAlocacao.SQL.Clear;
      QryAlocacao.SQL.Text :=
      'EXEC dbprojeto.dbo.spr_alocacao NULL,NULL,NULL,NULL,NULL,NULL,1,NULL';
    end;

    QryAlocacao.Open;

    cxGrid1DBTableView1.DataController.Refresh;
    cxGrid1DBTableView1.LayoutChanged;

  except
    on E: Exception do
      Application.MessageBox(PChar(E.Message), 'Atenção', MB_OK or MB_ICONWARNING);
  end;
end;

procedure TFrmAlocacao.cxGrid1DBTableView1Nome_tarefaPropertiesEditValueChanged(Sender: TObject);
var
  CodTarefa: Integer;
  R: Integer;
begin
  CodTarefa := QryAlocacao.FieldByName('cod_tarefa').AsInteger;
  if CodTarefa <= 0 then Exit;

  vQueryAux.Close;
  vQueryAux.SQL.Text :=
    'SELECT t.cod_projeto, p.nome as nome_projeto, t.Data_inicio, t.data_termino, t.descricao '+
    'FROM dbprojeto.dbo.tab_projects_tasks t '+
    'JOIN dbprojeto.dbo.tab_projects p ON p.cod_projeto = t.cod_projeto '+
    'WHERE t.cod_tarefa = :id';
  vQueryAux.ParamByName('id').AsInteger := CodTarefa;
  vQueryAux.Open;

  if vQueryAux.IsEmpty then Exit;

  // record atual do grid
  R := cxGrid1DBTableView1.DataController.FocusedRecordIndex;
  if R < 0 then Exit;

  // seta valores nas colunas unbound
  cxGrid1DBTableView1nome_projeto.DataBinding.Field.AsString :=
    vQueryAux.FieldByName('nome_projeto').AsString;

  cxGrid1DBTableView1cod_projeto.DataBinding.Field.AsInteger :=
    vQueryAux.FieldByName('cod_projeto').AsInteger;

  cxGrid1DBTableView1descricao_tarefa.DataBinding.Field.AsString :=
    vQueryAux.FieldByName('descricao').AsString;
end;

procedure TFrmAlocacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFrmAlocacao.FormCreate(Sender: TObject);
begin
  vQueryAux := TFDQuery.Create(Self);
  vQueryAux.Connection := UBancoDados.FDConexao;

  // 🔥 Configuração para permitir update via FDUpdateSQL
  QryAlocacao.UpdateOptions.RequestLive := True;
  QryAlocacao.UpdateOptions.UpdateTableName := 'tab_projects_allocation';
  QryAlocacao.UpdateOptions.KeyFields := 'cod_alocacao';
  QryAlocacao.UpdateOptions.AutoIncFields := 'cod_alocacao';
end;

procedure TFrmAlocacao.FormShow(Sender: TObject);
var
  I: Integer;
begin
  vQueryAux.Close;
  vQueryAux.SQL.Text :=
    'EXEC dbprojeto.dbo.spr_alocacao NULL,NULL,NULL,NULL,NULL,NULL,1,NULL';
  vQueryAux.Open;

  CBOpcaoPesquisa.Properties.Items.Clear;
  for I := 0 to vQueryAux.FieldCount - 1 do
    CBOpcaoPesquisa.Properties.Items.Add(vQueryAux.Fields[I].FieldName);

  vQueryAux.Close;
end;

procedure TFrmAlocacao.QryAlocacaoAfterOpen(DataSet: TDataSet);
var
  I: Integer;
begin
  for I := 0 to DataSet.FieldCount - 1 do
    DataSet.Fields[I].ReadOnly := False;

  if DataSet.FindField('cod_alocacao') <> nil then
    DataSet.FieldByName('cod_alocacao').ReadOnly := True;
end;

procedure TFrmAlocacao.QryAlocacaoBeforePost(DataSet: TDataSet);
var
  CodTarefa, CodFunc: Integer;
  D1, D2: TDateTime;
begin
  // obrigatórios
  CodTarefa := DataSet.FieldByName('cod_tarefa').AsInteger;
  if CodTarefa <= 0 then
  begin
    Application.MessageBox('Informe a tarefa.', 'Aviso', MB_OK or MB_ICONEXCLAMATION);
    Abort;
  end;

  CodFunc := DataSet.FieldByName('cod_funcionario').AsInteger;
  if CodFunc <= 0 then
  begin
    Application.MessageBox('Informe o colaborador.', 'Aviso', MB_OK or MB_ICONEXCLAMATION);
    Abort;
  end;

  if DataSet.FieldByName('data_inicio').IsNull then
  begin
    Application.MessageBox('Informe a Data Início.', 'Aviso', MB_OK or MB_ICONEXCLAMATION);
    Abort;
  end;

  D1 := DataSet.FieldByName('data_inicio').AsDateTime;

  if not DataSet.FieldByName('data_termino').IsNull then
  begin
    D2 := DataSet.FieldByName('data_termino').AsDateTime;
    if D1 > D2 then
    begin
      Application.MessageBox('A Data Início não pode ser maior que a Data Término.', 'Aviso', MB_OK or MB_ICONEXCLAMATION);
      Abort;
    end;
  end
  else
    D2 := 0;

  vQueryAux.Close;
  vQueryAux.SQL.Text :=
    'SELECT Data_inicio, data_termino '+
    'FROM dbprojeto.dbo.tab_projects_tasks '+
    'WHERE cod_tarefa = :id';
  vQueryAux.ParamByName('id').AsInteger := CodTarefa;
  vQueryAux.Open;

  if vQueryAux.IsEmpty then
  begin
    Application.MessageBox('Tarefa não encontrada.', 'Aviso', MB_OK or MB_ICONEXCLAMATION);
    Abort;
  end;

  // início da alocação não pode ser antes do início da tarefa
  if D1 < vQueryAux.FieldByName('Data_inicio').AsDateTime then
  begin
    Application.MessageBox('A Data Início da alocação não pode ser menor que a Data Início da tarefa.', 'Aviso', MB_OK or MB_ICONEXCLAMATION);
    Abort;
  end;
end;

end.
