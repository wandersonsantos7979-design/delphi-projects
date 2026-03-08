unit UFrmRelTarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxGeometry, dxFramedControl,
  cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  frxClass, frxDBSet, cxGroupBox, cxRadioGroup, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel,
  dxPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.StrUtils;

type
  TFrmRelTarefas = class(TForm)
    dxPanel1: TdxPanel;
    lbnome: TcxLabel;
    cxLabel1: TcxLabel;
    Nome: TcxLookupComboBox;
    cxRadioGroup1: TcxRadioGroup;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Panel2: TPanel;
    BtnOK: TcxButton;
    BtnCancelar: TcxButton;
    QryTarefa: TFDQuery;
    QryTarefaLKP: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    StringField3: TStringField;
    DSQryTarefa: TDataSource;
    DSQryTarefaLKP: TDataSource;
    QryTarefacod_projeto: TIntegerField;
    QryTarefanome_projeto: TStringField;
    QryTarefaprojeto_data_inicio: TSQLTimeStampField;
    QryTarefaprojeto_data_termino_prevista: TSQLTimeStampField;
    QryTarefacod_tarefa: TIntegerField;
    QryTarefanome_tarefa: TStringField;
    QryTarefadescricao_tarefa: TStringField;
    QryTarefastatus_tarefa: TStringField;
    QryTarefacod_funcionario: TIntegerField;
    QryTarefanome_colaborador: TStringField;
    QryTarefacod_alocacao: TIntegerField;
    QryTarefaalocacao_data_inicio: TSQLTimeStampField;
    QryTarefaalocacao_data_termino: TSQLTimeStampField;
    procedure BtnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelTarefas: TFrmRelTarefas;

implementation

{$R *.dfm}

procedure TFrmRelTarefas.BtnOKClick(Sender: TObject);
var
  vStatus: string;
  vFiltro: string;
  vCod: string;
begin
  case cxRadioGroup1.ItemIndex of
    0: vStatus := 'P';
    1: vStatus := 'E';
    2: vStatus := 'S';
    3: vStatus := 'C';
  else
    vStatus := '';
  end;

  QryTarefa.Close;
  QryTarefa.SQL.Text :=
    'EXEC dbo.spr_tarefas '+
    ' @ID=NULL,@Empresa=NULL,@Nome=NULL,@Data=NULL,@Data2=NULL,@Numero=NULL,@Opcao=5,@Texto=NULL';
  QryTarefa.Open;

  vFiltro := '';

  // filtro por projeto (CODIGO)
  if (not VarIsNull(Nome.EditValue)) then
  begin
    vCod := Trim(VarToStr(Nome.EditValue));
    if vCod <> '' then
      vFiltro := 'cod_projeto = ' + vCod;
  end;

  // filtro por status da tarefa (campo correto!)
  if vStatus <> '' then
    vFiltro := vFiltro +
      IfThen(vFiltro <> '', ' AND ', '') +
      'status_tarefa = ''' + vStatus + '''';

  QryTarefa.Filter := vFiltro;
  QryTarefa.Filtered := vFiltro <> '';

  frxReport1.ShowReport;
end;

procedure TFrmRelTarefas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
