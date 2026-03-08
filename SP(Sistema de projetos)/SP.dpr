program SP;

uses
  Vcl.Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmPrincipal},
  UDMBancoDados in 'BancoDados\UDMBancoDados.pas' {UBancoDados: TDataModule},
  uFrmCadastroProjeto in 'Cadastro de Projeto\uFrmCadastroProjeto.pas' {FrmCadastroProjeto},
  UFrmCadastroTarefa in 'Cadastro Tarefas\UFrmCadastroTarefa.pas' {FrmCadastroTarefa},
  UFrmCadastroColaborador in 'Cadastro de Colaborador\UFrmCadastroColaborador.pas' {FrmCadastroColaborador},
  UFrmAlocacao in 'Alocacao\UFrmAlocacao.pas' {FrmAlocacao},
  UFrmInclusaoAlocacao in 'Alocacao\UFrmInclusaoAlocacao.pas' {FrmInclusaoAlocacao},
  UFrmRelProjeto in 'Cadastro de Projeto\UFrmRelProjeto.pas' {FrmRelProjeto},
  UFrmRelTarefas in 'Cadastro Tarefas\UFrmRelTarefas.pas' {FrmRelTarefas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TUBancoDados, UBancoDados);
  Application.CreateForm(TFrmCadastroProjeto, FrmCadastroProjeto);
  Application.CreateForm(TFrmCadastroTarefa, FrmCadastroTarefa);
  Application.CreateForm(TFrmCadastroColaborador, FrmCadastroColaborador);
  Application.CreateForm(TFrmAlocacao, FrmAlocacao);
  Application.CreateForm(TFrmInclusaoAlocacao, FrmInclusaoAlocacao);
  Application.CreateForm(TFrmRelProjeto, FrmRelProjeto);
  Application.CreateForm(TFrmRelTarefas, FrmRelTarefas);
  Application.Run;
end.
