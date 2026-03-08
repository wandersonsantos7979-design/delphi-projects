unit UFrmCadastroTarefa;

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
  cxContainer, cxGeometry, dxFramedControl, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxDBEdit, cxGroupBox, cxRadioGroup, cxDropDownEdit, cxCalendar, cxMemo,
  cxLabel, dxPanel, cxButtonEdit, cxTextEdit, cxMaskEdit, Vcl.ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxScrollBox, cxPC, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TFrmCadastroTarefa = class(TForm)
    PCPagina: TcxPageControl;
    TSPesquisa: TcxTabSheet;
    cxScrollBox1: TcxScrollBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1cod_projeto: TcxGridDBColumn;
    cxGrid1DBTableView1Nome: TcxGridDBColumn;
    cxGrid1DBTableView1Data_inicio: TcxGridDBColumn;
    cxGrid1DBTableView1data_termino: TcxGridDBColumn;
    cxGrid1DBTableView1Status: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    CBOpcaoPesquisa: TcxComboBox;
    BEPesquisa: TcxButtonEdit;
    TSCadastro: TcxTabSheet;
    dxPanel1: TdxPanel;
    lbnome: TcxLabel;
    Descricao: TcxDBMemo;
    Data_Inicio: TcxDBDateEdit;
    Data_Termino: TcxDBDateEdit;
    cxLabel1: TcxLabel;
    Status: TcxDBRadioGroup;
    Nome: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    Panel1: TPanel;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnCancelar: TcxButton;
    BtnSalvar: TcxButton;
    QryTarefa: TFDQuery;
    QryTarefacod_projeto: TIntegerField;
    QryTarefaNome: TStringField;
    QryTarefadescricao: TStringField;
    QryTarefaData_inicio: TSQLTimeStampField;
    QryTarefadata_termino: TSQLTimeStampField;
    QryTarefaStatus: TStringField;
    DSQryTarefa: TDataSource;
    USTarefa: TFDUpdateSQL;
    QryProjeto: TFDQuery;
    QryProjetocod_projeto: TIntegerField;
    QryProjetoNome: TStringField;
    QryProjetodescricao: TStringField;
    QryProjetoData_inicio: TSQLTimeStampField;
    QryProjetodata_termino: TSQLTimeStampField;
    QryProjetoStatus: TStringField;
    DSQryProjeto: TDataSource;
    cxLabel3: TcxLabel;
    cod_projeto: TcxDBLookupComboBox;
    cxGrid1DBTableView1cod_tarefa: TcxGridDBColumn;
    QryTarefacod_tarefa: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure PCPaginaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BEPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BEPesquisaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure QryTarefaBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    vQueryAux: TFDQuery;
    Procedure HabilitaCampo;
    procedure DesabilitaCampo;
    procedure HabilitaBotoes(aOpcao: Integer);
  public
    { Public declarations }
  end;

var
  FrmCadastroTarefa: TFrmCadastroTarefa;

implementation

{$R *.dfm}

uses UDMBancoDados;

procedure TFrmCadastroTarefa.BEPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0; // evita beep / comportamento padrão
    BEPesquisaPropertiesButtonClick(Sender, 0); // chama a pesquisa
  end;
end;

procedure TFrmCadastroTarefa.BEPesquisaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    QryTarefa.Close;
    QryTarefa.SQL.Clear;
    QryTarefa.SQL.Add('EXEC dbprojeto.dbo.spr_tarefas'+
                       ' NULL                            '+ //ID
                       ' ,NULL                           '+ //EMPRESA
                       ' , ' + CBOpcaoPesquisa.Text       + //NOME
                       ' ,NULL                           '+ //DATA
                       ' ,NULL                           '+ //DATA2
                       ' ,NULL                           '+ //NUMERO
                       ' ,2                              '+ //OPCAO
                       ' ,:pText                         ');//TEXTO

    if CBOpcaoPesquisa.Text = 'cod_projeto' then
    begin
      QryTarefa.ParamByName('pText').AsString := BEPesquisa.Text;
    end
    else
    begin
      QryTarefa.ParamByName('pText').AsString := '%'+ BEPesquisa.Text;
    end;

    QryTarefa.Open;
    except
    on E: Exception do
    begin
      Application.MessageBox(PChar(E.Message), 'Atenção', MB_OK or MB_ICONWARNING);
    end;
  end;
end;

procedure TFrmCadastroTarefa.BtnAlterarClick(Sender: TObject);
begin
  QryTarefa.Edit;
  HabilitaCampo;
  HabilitaBotoes(2);
end;

procedure TFrmCadastroTarefa.BtnCancelarClick(Sender: TObject);
begin
  QryTarefa.Cancel;
  DesabilitaCampo;
  HabilitaBotoes(1);
end;

procedure TFrmCadastroTarefa.BtnIncluirClick(Sender: TObject);
begin
  if QryTarefa.Active = False then
    QryTarefa.Active := True;

  QryTarefa.Append;
  HabilitaCampo;
  HabilitaBotoes(2);
end;

procedure TFrmCadastroTarefa.BtnSalvarClick(Sender: TObject);
begin
  QryTarefa.Post;
  QryTarefa.ApplyUpdates(0);
  QryTarefa.CommitUpdates;

  vQueryAux.Close;
  vQueryAux.SQL.Clear;
  vQueryAux.SQL.Text :=
    'EXEC dbo.spr_tarefas ' +
    '  @ID = NULL, @Empresa = NULL, @Nome = NULL, @Data = NULL, @Data2 = NULL, ' +
    '  @Numero = :Numero, @Opcao = 4, @Texto = NULL';

  vQueryAux.ParamByName('Numero').AsInteger :=
    QryTarefa.FieldByName('cod_projeto').AsInteger;

  vQueryAux.ExecSQL;

  // Agora sim atualiza dataset/tela
  QryTarefa.Refresh;

  DesabilitaCampo;
  HabilitaBotoes(1);
end;

procedure TFrmCadastroTarefa.cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if QryTarefa.IsEmpty then
    Exit;

  PCPagina.ActivePage := TSCadastro;

  AHandled := True;
end;

procedure TFrmCadastroTarefa.DesabilitaCampo;
begin
  Nome.Enabled         := False;
  Descricao.Enabled    := False;
  Data_Inicio.Enabled  := False;
  Data_Termino.Enabled := False;
  cod_projeto.Enabled  := False;
end;

procedure TFrmCadastroTarefa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFrmCadastroTarefa.FormCreate(Sender: TObject);
begin
  vQueryAux := TFDQuery.Create(Self);
  vQueryAux.Connection := UBancoDados.FDConexao;
end;

procedure TFrmCadastroTarefa.FormDestroy(Sender: TObject);
begin
  FreeAndNil(vQueryAux);
end;

procedure TFrmCadastroTarefa.FormShow(Sender: TObject);
var
  I: Integer;
begin
  QryTarefa.Close;
  QryTarefa.SQL.Add('EXEC dbprojeto.dbo.spr_tarefas'+
                     ' NULL                            '+ //ID
                     ' ,NULL                           '+ //EMPRESA
                     ' ,NULL                           '+ //NOME
                     ' ,NULL                           '+ //DATA
                     ' ,NULL                           '+ //DATA2
                     ' ,NULL                           '+ //NUMERO
                     ' ,1                              '+ //OPCAO
                     ' ,NULL                           ');//TEXTO

  QryTarefa.Open;

  CBOpcaoPesquisa.Properties.Items.Clear;

  for I := 0 to QryTarefa.FieldCount - 1 do
    CBOpcaoPesquisa.Properties.Items.Add(QryTarefa.Fields[I].FieldName);

  PCPagina.ActivePageIndex := 0;
  CBOpcaoPesquisa.ItemIndex := 0;
  DesabilitaCampo;

  QryTarefa.Close;
end;

procedure TFrmCadastroTarefa.HabilitaBotoes(aOpcao: Integer);
begin
  BtnIncluir.Enabled := not (BtnIncluir.Enabled);
  Btnalterar.Enabled := not (Btnalterar.Enabled);
  BtnSalvar.Enabled := not (BtnSalvar.Enabled);
  BtnCancelar.Enabled := not (BtnCancelar.Enabled)
end;

procedure TFrmCadastroTarefa.HabilitaCampo;
begin
  Nome.Enabled         := True;
  Descricao.Enabled    := True;
  Data_Inicio.Enabled  := True;
  Data_Termino.Enabled := True;
  cod_projeto.Enabled  := True;
end;

procedure TFrmCadastroTarefa.PCPaginaMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ActiveControl := Nil;
end;

procedure TFrmCadastroTarefa.QryTarefaBeforePost(DataSet: TDataSet);
var
  DTIni, DTFim: TDateTime;
  CodProjeto: Integer;
begin
  if Trim(Nome.Text) = '' then
  begin
    Application.MessageBox('Insira um nome', 'Aviso', MB_ICONEXCLAMATION or MB_OK);
    Nome.SetFocus;
    Abort;
  end;

  if not TryStrToDate(Data_Inicio.Text, DTIni) then
  begin
    Application.MessageBox('Informe uma Data Início válida.', 'Aviso', MB_ICONEXCLAMATION or MB_OK);
    Data_Inicio.SetFocus;
    Abort;
  end;

  if not TryStrToDate(Data_Termino.Text, DTFim) then
  begin
    Application.MessageBox('Informe uma Data Término válida.', 'Aviso', MB_ICONEXCLAMATION or MB_OK);
    Data_Termino.SetFocus;
    Abort;
  end;

  if DTIni > DTFim then
  begin
    Application.MessageBox('A Data Início não pode ser maior que a Data Término.', 'Aviso', MB_ICONEXCLAMATION or MB_OK);
    Data_Inicio.SetFocus;
    Abort;
  end;

  // pega cod_projeto (ajuste conforme seu form/dataset)
  CodProjeto := DataSet.FieldByName('cod_projeto').AsInteger;

  // --- CHAMA OPÇÃO 3 (VALIDAÇÃO NO SQL) ---
  vQueryAux.Close;
  vQueryAux.SQL.Clear;

  // Preferível parametrizado (sem concatenar)
  vQueryAux.SQL.Text :=
    'EXEC dbo.spr_tarefas '+
    ' @ID = NULL,'+
    ' @Empresa = NULL,'+
    ' @Nome = NULL,'+
    ' @Data = :pData,'+
    ' @Data2 = :pData2,'+
    ' @Numero = :pCodProjeto,'+
    ' @Opcao = 3,'+
    ' @Texto = NULL';

  vQueryAux.ParamByName('pData').AsDateTime := DTIni;
  vQueryAux.ParamByName('pData2').AsDateTime := DTFim;
  vQueryAux.ParamByName('pCodProjeto').AsInteger := CodProjeto;

  try
    vQueryAux.Open; // se der erro, cai no except com a mensagem do RAISERROR
  except
    on E: Exception do
    begin
      Application.MessageBox(PChar(E.Message), 'Aviso', MB_ICONEXCLAMATION or MB_OK);
      Abort;
    end;
  end;

  // Normaliza datas no dataset (opcional, mas bom)
  DataSet.FieldByName('Data_inicio').AsDateTime := DTIni;
  DataSet.FieldByName('Data_termino').AsDateTime := DTFim;
end;

end.
