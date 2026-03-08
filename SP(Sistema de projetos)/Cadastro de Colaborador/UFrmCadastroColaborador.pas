unit UFrmCadastroColaborador;

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
  cxDBEdit, cxLabel, dxPanel, cxButtonEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxScrollBox, cxPC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmCadastroColaborador = class(TForm)
    PCPagina: TcxPageControl;
    TSPesquisa: TcxTabSheet;
    cxScrollBox1: TcxScrollBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    CBOpcaoPesquisa: TcxComboBox;
    BEPesquisa: TcxButtonEdit;
    TSCadastro: TcxTabSheet;
    dxPanel1: TdxPanel;
    lbnome: TcxLabel;
    cxLabel1: TcxLabel;
    Nome: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    Panel1: TPanel;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnCancelar: TcxButton;
    BtnSalvar: TcxButton;
    Cargo: TcxDBTextEdit;
    Departamento: TcxDBTextEdit;
    QryColaborador: TFDQuery;
    DSQryColaborador: TDataSource;
    USColaborador: TFDUpdateSQL;
    QryColaboradorcod_funcionario: TIntegerField;
    QryColaboradorNome: TStringField;
    QryColaboradorCargo: TStringField;
    QryColaboradorDepartamento: TStringField;
    cxGrid1DBTableView1cod_funcionario: TcxGridDBColumn;
    cxGrid1DBTableView1Nome: TcxGridDBColumn;
    cxGrid1DBTableView1Cargo: TcxGridDBColumn;
    cxGrid1DBTableView1Departamento: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BEPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BEPesquisaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure PCPaginaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure QryColaboradorBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure HabilitaCampo;
    procedure DesabilitaCampo;
    procedure HabilitaBotoes(aOpcao: Integer);
  public
    { Public declarations }
  end;

var
  FrmCadastroColaborador: TFrmCadastroColaborador;

implementation

{$R *.dfm}

uses UDMBancoDados;

procedure TFrmCadastroColaborador.BEPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0; // evita beep / comportamento padrão
    BEPesquisaPropertiesButtonClick(Sender, 0); // chama a pesquisa
  end;
end;

procedure TFrmCadastroColaborador.BEPesquisaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  try
    QryColaborador.Close;
    QryColaborador.SQL.Clear;
    QryColaborador.SQL.Add('EXEC dbprojeto.dbo.spr_colaboradores'+
                           ' NULL                               '+ //ID
                           ' ,NULL                              '+ //EMPRESA
                           ' , ' + CBOpcaoPesquisa.Text          + //NOME
                           ' ,NULL                              '+ //DATA
                           ' ,NULL                              '+ //DATA2
                           ' ,NULL                              '+ //NUMERO
                           ' ,2                                 '+ //OPCAO
                           ' ,:pText                            ');//TEXTO

    if CBOpcaoPesquisa.Text = 'cod_funcionario' then
    begin
      QryColaborador.ParamByName('pText').AsString := BEPesquisa.Text;
    end
    else
    begin
      QryColaborador.ParamByName('pText').AsString := '%'+ BEPesquisa.Text;
    end;

    QryColaborador.Open;
    except
    on E: Exception do
    begin
      Application.MessageBox(PChar(E.Message), 'Atenção', MB_OK or MB_ICONWARNING);
    end;
  end;
end;

procedure TFrmCadastroColaborador.BtnAlterarClick(Sender: TObject);
begin
  QryColaborador.Edit;
  HabilitaCampo;
  HabilitaBotoes(2);
end;

procedure TFrmCadastroColaborador.BtnCancelarClick(Sender: TObject);
begin
  QryColaborador.Cancel;
  DesabilitaCampo;
  HabilitaBotoes(1);
end;

procedure TFrmCadastroColaborador.BtnIncluirClick(Sender: TObject);
begin
  if QryColaborador.Active = False then
    QryColaborador.Active := True;

  QryColaborador.Append;
  HabilitaCampo;
  HabilitaBotoes(2);
end;

procedure TFrmCadastroColaborador.BtnSalvarClick(Sender: TObject);
begin
  QryColaborador.Post;
  QryColaborador.ApplyUpdates(0);
  QryColaborador.CommitUpdates;
  QryColaborador.Refresh; // ou Close/Open
  DesabilitaCampo;
  HabilitaBotoes(1);
end;

procedure TFrmCadastroColaborador.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if QryColaborador.IsEmpty then
    Exit;

  PCPagina.ActivePage := TSCadastro;

  AHandled := True;
end;

procedure TFrmCadastroColaborador.DesabilitaCampo;
begin
  Nome.Enabled         := False;
  Cargo.Enabled        := False;
  Departamento.Enabled := False;
end;

procedure TFrmCadastroColaborador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFrmCadastroColaborador.FormShow(Sender: TObject);
var
  I: Integer;
begin
  QryColaborador.Close;
  QryColaborador.SQL.Add('EXEC dbprojeto.dbo.sspr_colaboradores'+
                         ' NULL                                '+ //ID
                         ' ,NULL                               '+ //EMPRESA
                         ' ,NULL                               '+ //NOME
                         ' ,NULL                               '+ //DATA
                         ' ,NULL                               '+ //DATA2
                         ' ,NULL                               '+ //NUMERO
                         ' ,1                                  '+ //OPCAO
                         ' ,NULL                               ');//TEXTO
  QryColaborador.Open;

  CBOpcaoPesquisa.Properties.Items.Clear;

  for I := 0 to QryColaborador.FieldCount - 1 do
    CBOpcaoPesquisa.Properties.Items.Add(QryColaborador.Fields[I].FieldName);

  PCPagina.ActivePageIndex := 0;
  CBOpcaoPesquisa.ItemIndex := 0;
  DesabilitaCampo;

  QryColaborador.Close;
end;

procedure TFrmCadastroColaborador.HabilitaBotoes(aOpcao: Integer);
begin
  BtnIncluir.Enabled  := not (BtnIncluir.Enabled);
  Btnalterar.Enabled  := not (Btnalterar.Enabled);
  BtnSalvar.Enabled   := not (BtnSalvar.Enabled);
  BtnCancelar.Enabled := not (BtnCancelar.Enabled)
end;

procedure TFrmCadastroColaborador.HabilitaCampo;
begin
  Nome.Enabled         := True;
  Cargo.Enabled        := True;
  Departamento.Enabled := True;
end;

procedure TFrmCadastroColaborador.PCPaginaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ActiveControl := Nil;
end;

procedure TFrmCadastroColaborador.QryColaboradorBeforePost(DataSet: TDataSet);
begin
  if Trim(Nome.Text) = '' then
  begin
    Application.MessageBox('Insira um nome', 'Aviso', MB_ICONEXCLAMATION or MB_OK);
    Nome.SetFocus;
    Abort;
  end;

  if Trim(Cargo.Text) = '' then
  begin
    Application.MessageBox('Insira um cargo', 'Aviso', MB_ICONEXCLAMATION or MB_OK);
    Cargo.SetFocus;
    Abort;
  end;

  if Trim(Departamento.Text) = '' then
  begin
    Application.MessageBox('Insira um departamento', 'Aviso', MB_ICONEXCLAMATION or MB_OK);
    Departamento.SetFocus;
    Abort;
  end;
end;

end.
