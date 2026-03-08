unit UFrmInclusaoAlocacao;

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
  cxContainer, cxEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxCalendar, cxDBEdit, cxLabel,
  dxPanel, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Vcl.ComCtrls,
  dxCore, cxDateUtils;

type
  TFrmInclusaoAlocacao = class(TForm)
    dxPanel1: TdxPanel;
    lbnome: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    Panel2: TPanel;
    BtnOK: TcxButton;
    BtnCancelar: TcxButton;
    cod_funcionario: TcxLookupComboBox;
    cod_tarefa: TcxLookupComboBox;
    Data_Inicio: TcxDateEdit;
    Data_Termino: TcxDateEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vCodTarefa: Integer;
    vCodFuncionario: Integer;
    vDataInicio: TDateTime;
    vDataTermino: Variant;
  end;

var
  FrmInclusaoAlocacao: TFrmInclusaoAlocacao;

implementation

{$R *.dfm}
uses UFrmAlocacao;

procedure TFrmInclusaoAlocacao.BtnOkClick(Sender: TObject);
begin
  // pega valores
  vCodTarefa := cod_tarefa.EditValue;
  vCodFuncionario := cod_funcionario.EditValue;

  if (vCodTarefa <= 0) then
    raise Exception.Create('Selecione uma tarefa.');

  if (vCodFuncionario <= 0) then
    raise Exception.Create('Selecione um colaborador.');

  if Data_Inicio.Date = 0 then
    raise Exception.Create('Informe a Data Início.');

  vDataInicio := Data_Inicio.Date;

  if Data_Termino.Text = '' then
    vDataTermino := ''
  else
    vDataTermino := Data_Termino.Date;

  ModalResult := mrOk;
end;

procedure TFrmInclusaoAlocacao.BtnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmInclusaoAlocacao.FormShow(Sender: TObject);
begin
  if not FrmAlocacao.QryColaborador.Active then FrmAlocacao.QryColaborador.Open;
  if not FrmAlocacao.QryTarefa.Active then FrmAlocacao.QryTarefa.Open;
end;

end.
