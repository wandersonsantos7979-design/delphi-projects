unit UFrmRelProjeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxControls, cxGeometry, dxFramedControl, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxDBEdit, cxLabel, dxPanel, frxClass, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxDBSet, cxGroupBox, cxRadioGroup,
  System.StrUtils;

type
  TFrmRelProjeto = class(TForm)
    Panel2: TPanel;
    BtnOK: TcxButton;
    BtnCancelar: TcxButton;
    dxPanel1: TdxPanel;
    lbnome: TcxLabel;
    cxLabel1: TcxLabel;
    Nome: TcxLookupComboBox;
    frxReport1: TfrxReport;
    QryProjeto: TFDQuery;
    QryProjetocod_projeto: TIntegerField;
    QryProjetoNome: TStringField;
    QryProjetodescricao: TStringField;
    QryProjetoData_inicio: TSQLTimeStampField;
    QryProjetodata_termino: TSQLTimeStampField;
    QryProjetoStatus: TStringField;
    DSQryProjeto: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    cxRadioGroup1: TcxRadioGroup;
    QryProjetoLKP: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    StringField3: TStringField;
    DSQryProjetoLKP: TDataSource;
    procedure BtnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelProjeto: TFrmRelProjeto;

implementation

{$R *.dfm}

uses UDMBancoDados;

procedure TFrmRelProjeto.btnOKClick(Sender: TObject);
var
  vStatus: string;
  vFiltro: string;
  vCod: string;
begin
  // Define status conforme radio selecionado
  case cxRadioGroup1.ItemIndex of
    0: vStatus := 'P'; // Pendente
    1: vStatus := 'E'; // Em andamento
    2: vStatus := 'S'; // Suspenso
    3: vStatus := 'C'; // Concluído
  else
    vStatus := '';
  end;

  QryProjeto.Close;
  QryProjeto.SQL.Clear;

  QryProjeto.SQL.Add('EXEC dbo.spr_projetos');
  QryProjeto.SQL.Add('  @ID = NULL,');
  QryProjeto.SQL.Add('  @Empresa = NULL,');
  QryProjeto.SQL.Add('  @Nome = NULL,');
  QryProjeto.SQL.Add('  @Data = NULL,');
  QryProjeto.SQL.Add('  @Data2 = NULL,');
  QryProjeto.SQL.Add('  @Numero = NULL,');
  QryProjeto.SQL.Add('  @Opcao = 3,');
  QryProjeto.SQL.Add('  @Texto = NULL');

  QryProjeto.Open;

  vFiltro := '';

  // filtro por projeto (evita "cod_projeto = " quando vier vazio)
  if (not VarIsNull(Nome.EditValue)) then
  begin
    vCod := Trim(VarToStr(Nome.EditValue));
    if vCod <> '' then
      vFiltro := 'cod_projeto = ' + vCod;
  end;

  // filtro por status
  if vStatus <> '' then
    vFiltro := vFiltro +
      IfThen(vFiltro <> '', ' AND ', '') +
      'Status = ''' + vStatus + '''';

  QryProjeto.Filter := vFiltro;
  QryProjeto.Filtered := vFiltro <> '';

  frxReport1.ShowReport;
end;

procedure TFrmRelProjeto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
