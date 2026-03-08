unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxContainer, cxEdit,
  cxTreeView, Vcl.ExtCtrls, Vcl.WinXCtrls, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, cxImageList,
  cxImage, dxGDIPlusClasses, Vcl.CategoryButtons, cxGeometry, dxFramedControl,
  dxPanel;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    SVMenu: TSplitView;
    Panel3: TPanel;
    cxImageList1: TcxImageList;
    BtnProjetos: TcxButton;
    BtnTarefas: TcxButton;
    BtnColaborador: TcxButton;
    BtnMenu: TcxImage;
    PSubMenuP: TdxPanel;
    BtnRelProjeto: TcxButton;
    BtnCadProjeto: TcxButton;
    TMMenu: TTimer;
    PSubMenuT: TdxPanel;
    BtnRelTarefa: TcxButton;
    BtnCadTarefa: TcxButton;
    PSubMenuC: TdxPanel;
    BtnCadColaborador: TcxButton;
    BtnAlocamento: TcxButton;
    procedure BtnMenuClick(Sender: TObject);
    procedure BtnMenuMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnProjetosMouseEnter(Sender: TObject);
    procedure TMMenuTimer(Sender: TObject);
    procedure BtnTarefasMouseEnter(Sender: TObject);
    procedure BtnColaboradorMouseEnter(Sender: TObject);
    procedure SVMenuMouseEnter(Sender: TObject);
    procedure BtnCadProjetoClick(Sender: TObject);
    procedure BtnCadTarefaClick(Sender: TObject);
    procedure BtnCadColaboradorClick(Sender: TObject);
    procedure BtnRelProjetoClick(Sender: TObject);
    procedure BtnRelTarefaClick(Sender: TObject);
    procedure BtnAlocamentoClick(Sender: TObject);
  private
    { Private declarations }
    PAberto: Integer;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses uFrmCadastroProjeto, UFrmCadastroTarefa, UFrmCadastroColaborador,
UFrmAlocacao, UFrmRelProjeto, UFrmRelTarefas;

{$R *.dfm}

procedure TFrmPrincipal.BtnAlocamentoClick(Sender: TObject);
begin
  FrmAlocacao := TFrmAlocacao.Create(nil);
  FrmAlocacao.Show;
end;

procedure TFrmPrincipal.BtnCadColaboradorClick(Sender: TObject);
begin
  FrmCadastroColaborador := TFrmCadastroColaborador.Create(nil);
  FrmCadastroColaborador.Show;
end;

procedure TFrmPrincipal.BtnCadTarefaClick(Sender: TObject);
begin
  FrmCadastroTarefa := TFrmCadastroTarefa.Create(nil);
  FrmCadastroTarefa.Show;
end;

procedure TFrmPrincipal.BtnColaboradorMouseEnter(Sender: TObject);
begin
  PSubMenuC.Visible := True;
  if PSubMenuT.Visible = True then
  begin
    PSubMenuT.Visible := False;
    PSubMenuC.Visible := True;
  end;

  if PSubMenuP.Visible = True then
  begin
    PSubMenuP.Visible := False;
    PSubMenuC.Visible := True;
  end;
end;

procedure TFrmPrincipal.BtnMenuClick(Sender: TObject);
begin
  ActiveControl := Nil;
  if SVMenu.Opened then
  begin
    SVMenu.Close;
    BtnProjetos.PaintStyle    := bpsGlyph;
    BtnTarefas.PaintStyle     := bpsGlyph;
    BtnColaborador.PaintStyle := bpsGlyph;
    BtnProjetos.OptionsImage.Margin    := -1;
    BtnTarefas.OptionsImage.Margin     := -1;
    BtnColaborador.OptionsImage.Margin := -1;

    PAberto := 1;
  end
  else
  begin
    SVMenu.Open;
    BtnProjetos.PaintStyle    := bpsDefault;
    BtnTarefas.PaintStyle     := bpsDefault;
    BtnColaborador.PaintStyle := bpsDefault;
    BtnProjetos.OptionsImage.Margin    := 8;
    BtnProjetos.OptionsImage.Margin    := 8;
    BtnTarefas.OptionsImage.Margin     := 8;
    BtnColaborador.OptionsImage.Margin := 8;

    PAberto := 0;
  end;

  PSubMenuP.Tag := PSubMenuP.Left;
  PSubMenuT.Tag := PSubMenuT.Left;
  PSubMenuC.Tag := PSubMenuT.Left;
  TMMenu.Tag    := Integer(GetTickCount);

  TMMenu.Interval := 10;
  TMMenu.Enabled := True;

end;

procedure TFrmPrincipal.BtnMenuMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ActiveControl := nil;
end;

procedure TFrmPrincipal.BtnProjetosMouseEnter(Sender: TObject);
begin
  PSubMenuP.Visible := True;
  if PSubMenuT.Visible = True then
  begin
    PSubMenuT.Visible := False;
    PSubMenuP.Visible := True;
  end;

  if PSubMenuC.Visible = True then
  begin
    PSubMenuC.Visible := False;
    PSubMenuP.Visible := True;
  end;
end;

procedure TFrmPrincipal.BtnRelProjetoClick(Sender: TObject);
begin
  FrmRelProjeto := TFrmRelProjeto.Create(nil);
  FrmRelProjeto.Show;
end;

procedure TFrmPrincipal.BtnRelTarefaClick(Sender: TObject);
begin
  FrmRelTarefas := TFrmRelTarefas.Create(nil);
  FrmRelTarefas.Show;
end;

procedure TFrmPrincipal.BtnCadProjetoClick(Sender: TObject);
begin
  FrmCadastroProjeto := TFrmCadastroProjeto.Create(nil);
  FrmCadastroProjeto.Show;
end;

procedure TFrmPrincipal.BtnTarefasMouseEnter(Sender: TObject);
begin
  PSubMenuT.Visible := True;
  if PSubMenuP.Visible = True then
  begin
    PSubMenuP.Visible := False;
    PSubMenuT.Visible := True;
  end;

  if PSubMenuC.Visible = True then
  begin
    PSubMenuC.Visible := False;
    PSubMenuT.Visible := True;
  end;
end;

procedure TFrmPrincipal.SVMenuMouseEnter(Sender: TObject);
begin
  PSubMenuC.Visible := False;
  PSubMenuP.Visible := False;
  PSubMenuT.Visible := False;
end;

procedure TFrmPrincipal.TMMenuTimer(Sender: TObject);
const
  L_MIN  = 50;
  L_MAX  = 144;
  DUR_MS = 180;
var
  targetLeft: Integer;
  elapsed: Cardinal;
  t: Double;
begin
  if PAberto = 0 then
    targetLeft := L_MAX
  else
    targetLeft := L_MIN;

  elapsed := Cardinal(GetTickCount) - Cardinal(TMMenu.Tag);
  t := elapsed / DUR_MS;

  if t >= 1 then
  begin
    PSubMenuP.Left := targetLeft;
    PSubMenuT.Left := targetLeft;
    PSubMenuC.Left := targetLeft;
    TMMenu.Enabled := False;
    Exit;
  end;

  PSubMenuP.Left := Round(PSubMenuP.Tag + (targetLeft - PSubMenuP.Tag) * t);
  PSubMenuT.Left := Round(PSubMenuT.Tag + (targetLeft - PSubMenuT.Tag) * t);
  PSubMenuC.Left := Round(PSubMenuC.Tag + (targetLeft - PSubMenuC.Tag) * t);
end;

end.
