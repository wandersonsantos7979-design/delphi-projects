unit uFrmCadastroProjeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
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
  dxSkinXmas2008Blue, dxGDIPlusClasses, cxImage, Vcl.ExtCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxBarBuiltInMenu, cxPC,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxScrollBox, cxButtonEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGeometry, dxFramedControl,
  dxPanel, cxCalendar, cxDBEdit, cxMemo, cxLabel, cxGroupBox, cxRadioGroup,
  Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TFrmCadastroProjeto = class(TForm)
    Panel3: TPanel;
    CBOpcaoPesquisa: TcxComboBox;
    BEPesquisa: TcxButtonEdit;
    cxScrollBox1: TcxScrollBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    PCPagina: TcxPageControl;
    TSPesquisa: TcxTabSheet;
    TSCadastro: TcxTabSheet;
    QryProjeto: TFDQuery;
    DSQryProjeto: TDataSource;
    cxGrid1DBTableView1cod_projeto: TcxGridDBColumn;
    cxGrid1DBTableView1Nome: TcxGridDBColumn;
    cxGrid1DBTableView1Data_inicio: TcxGridDBColumn;
    cxGrid1DBTableView1data_termino: TcxGridDBColumn;
    cxGrid1DBTableView1Status: TcxGridDBColumn;
    dxPanel1: TdxPanel;
    Nome: TcxDBTextEdit;
    lbnome: TcxLabel;
    Descricao: TcxDBMemo;
    Data_Inicio: TcxDBDateEdit;
    Data_Termino: TcxDBDateEdit;
    cxLabel1: TcxLabel;
    Status: TcxDBRadioGroup;
    Panel1: TPanel;
    BtnIncluir: TcxButton;
    USProjeto: TFDUpdateSQL;
    BtnAlterar: TcxButton;
    BtnCancelar: TcxButton;
    BtnSalvar: TcxButton;
    cxLabel2: TcxLabel;
    QryProjetocod_projeto: TIntegerField;
    QryProjetoNome: TStringField;
    QryProjetodescricao: TStringField;
    QryProjetoData_inicio: TSQLTimeStampField;
    QryProjetodata_termino: TSQLTimeStampField;
    QryProjetoStatus: TStringField;
    procedure PCPaginaMouseEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BEPesquisaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure QryProjetoBeforePost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BEPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Procedure HabilitaCampo;
    procedure DesabilitaCampo;
    procedure HabilitaBotoes(aOpcao: Integer);
  public
    { Public declarations }
  end;

var
  FrmCadastroProjeto: TFrmCadastroProjeto;

implementation

uses UDMBancoDados;

{$R *.dfm}

procedure TFrmCadastroProjeto.BEPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0; // evita beep / comportamento padrão
    BEPesquisaPropertiesButtonClick(Sender, 0); // chama a pesquisa
  end;
end;

procedure TFrmCadastroProjeto.BEPesquisaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    QryProjeto.Close;
    QryProjeto.SQL.Clear;
    QryProjeto.SQL.Add('EXEC dbprojeto.dbo.spr_projetos'+
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
      QryProjeto.ParamByName('pText').AsString := BEPesquisa.Text;
    end
    else
    begin
      QryProjeto.ParamByName('pText').AsString := '%'+ BEPesquisa.Text;
    end;

    QryProjeto.Open;
    except
    on E: Exception do
    begin
      Application.MessageBox(PChar(E.Message), 'Atenção', MB_OK or MB_ICONWARNING);
    end;
  end;
end;

procedure TFrmCadastroProjeto.BtnAlterarClick(Sender: TObject);
begin
  QryProjeto.Edit;
  HabilitaCampo;
  HabilitaBotoes(2);
end;

procedure TFrmCadastroProjeto.BtnCancelarClick(Sender: TObject);
begin
  QryProjeto.Cancel;
  DesabilitaCampo;
  HabilitaBotoes(1);
end;

procedure TFrmCadastroProjeto.BtnIncluirClick(Sender: TObject);
begin
  if QryProjeto.Active = False then
    QryProjeto.Active := True;

  QryProjeto.Append;
  HabilitaCampo;
  HabilitaBotoes(2);
end;

procedure TFrmCadastroProjeto.BtnSalvarClick(Sender: TObject);
begin
  QryProjeto.Post;
  QryProjeto.ApplyUpdates(0);
  QryProjeto.CommitUpdates;
  QryProjeto.Refresh;
  DesabilitaCampo;
  HabilitaBotoes(1);
end;

procedure TFrmCadastroProjeto.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if QryProjeto.IsEmpty then
    Exit;

  PCPagina.ActivePage := TSCadastro;

  AHandled := True;
end;

procedure TFrmCadastroProjeto.DesabilitaCampo;
begin
  Nome.Enabled         := False;
  Descricao.Enabled    := False;
  Data_Inicio.Enabled  := False;
  Data_Termino.Enabled := False;
end;

procedure TFrmCadastroProjeto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFrmCadastroProjeto.FormShow(Sender: TObject);
var
  I: Integer;
begin
  QryProjeto.Close;
  QryProjeto.SQL.Add('EXEC dbprojeto.dbo.spr_projetos'+
                     ' NULL                            '+ //ID
                     ' ,NULL                           '+ //EMPRESA
                     ' ,NULL                           '+ //NOME
                     ' ,NULL                           '+ //DATA
                     ' ,NULL                           '+ //DATA2
                     ' ,NULL                           '+ //NUMERO
                     ' ,1                              '+ //OPCAO
                     ' ,NULL                           ');//TEXTO

  QryProjeto.Open;

  CBOpcaoPesquisa.Properties.Items.Clear;

  for I := 0 to QryProjeto.FieldCount - 1 do
    CBOpcaoPesquisa.Properties.Items.Add(QryProjeto.Fields[I].FieldName);

  PCPagina.ActivePageIndex := 0;
  CBOpcaoPesquisa.ItemIndex := 0;
  DesabilitaCampo;

  QryProjeto.Close;
end;

procedure TFrmCadastroProjeto.HabilitaBotoes(aOpcao: Integer);
begin
  BtnIncluir.Enabled := not (BtnIncluir.Enabled);
  Btnalterar.Enabled := not (Btnalterar.Enabled);
  BtnSalvar.Enabled := not (BtnSalvar.Enabled);
  BtnCancelar.Enabled := not (BtnCancelar.Enabled);
end;

procedure TFrmCadastroProjeto.HabilitaCampo;
begin
  Nome.Enabled         := True;
  Descricao.Enabled    := True;
  Data_Inicio.Enabled  := True;
  Data_Termino.Enabled := True;
end;

procedure TFrmCadastroProjeto.PCPaginaMouseEnter(Sender: TObject);
begin
  ActiveControl := Nil;
end;

procedure TFrmCadastroProjeto.QryProjetoBeforePost(DataSet: TDataSet);
begin
  if Nome.Text = '' then
  begin
    Application.MessageBox('Insira um nome', 'Aviso', mb_IconExclamation);
    Nome.SetFocus;
    Abort;
  end;

  if (Data_Inicio.Text = '') and (Data_Termino.Text = '') then
  begin
    Application.MessageBox('O campo data não pode conter uma data vazia, informe uma data valida', 'Aviso', mb_IconExclamation);
    if Data_Inicio.Text = ''then
      Data_Inicio.SetFocus
    else
    if Data_Termino.Text = '' then
      Data_Termino.SetFocus;

    Abort;
  end;
end;

end.
