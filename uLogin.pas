unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmLogin = class(TForm)
    Label1: TLabel;
    edtLogin: TEdit;
    Label2: TLabel;
    edtSenha: TEdit;
    btnLogin: TBitBtn;
    btnCancelar: TBitBtn;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses uDM, uPrincipal;


procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
var
  login, senha : String;
begin
  DM.FDTUsuarios.Open;
  login := edtLogin.Text;
  senha := edtSenha.Text;
  DM.FDTUsuarios.Filtered := False;
  DM.FDTUsuarios.Filter := 'email = '
  + QuotedStr(edtLogin.Text)
  + ' and ' + 'senha = '
  + QuotedStr(edtSenha.Text);
  DM.FDTUsuarios.Filtered := True;

  if DM.FDTUsuarios.RecordCount > 0 then //Tabela retornou registros
  begin

    frmPrincipal.StatusBar1.Panels[0].Text := 'Usuário: ' + edtLogin.Text;
    frmPrincipal.StatusBar1.Panels[1].Text := 'Data e Hora Login: '
    + FormatDateTime('dd/mm/yyyy', Date) + '  ' + FormatDateTime('hh:mm:ss', Now);
    frmPrincipal.HoraLogin := Now;

    if DM.FDTUsuariosocupacao.Value = 'Administrador' then
    begin
      frmPrincipal.Usuarios1.Visible := True;
      //frmPrincipal.Usuarios3.Visible := True;
    end

    else if DM.FDTUsuariosocupacao.Value = 'Recepcionista' then
    begin
      frmPrincipal.Cidades1.Visible := False;
      frmPrincipal.Clinicas1.Visible := False;
      frmPrincipal.Convenios1.Visible := False;
      frmPrincipal.Hospitais1.Visible := False;
      frmPrincipal.Medicos1.Visible := False;
      frmPrincipal.Quartos1.Visible := False;
      frmPrincipal.Salas1.Visible := False;
      frmPrincipal.Setores1.Visible := False;
      frmPrincipal.Usuarios1.Visible := False;
    end

    else if DM.FDTUsuariosocupacao.Value = 'Médico' then
    begin
      frmPrincipal.Atendimentos1.Visible := False;
      frmPrincipal.Cidades1.Visible := False;
      frmPrincipal.Clinicas1.Visible := False;
      frmPrincipal.Convenios1.Visible := False;
      frmPrincipal.Hospitais1.Visible := False;
      frmPrincipal.Medicos1.Visible := False;
      frmPrincipal.Pacientes1.Visible := False;
      frmPrincipal.Quartos1.Visible := False;
      frmPrincipal.Responsveis1.Visible := False;
      frmPrincipal.Salas1.Visible := False;
      frmPrincipal.Setores1.Visible := False;
      frmPrincipal.Usuarios1.Visible := False;
    end

    else if DM.FDTUsuariosocupacao.Value = 'Clínico Geral' then
    begin
      frmPrincipal.Atendimentos1.Visible := False;
      frmPrincipal.Cidades1.Visible := False;
      frmPrincipal.Clinicas1.Visible := False;
      frmPrincipal.Convenios1.Visible := False;
      frmPrincipal.Hospitais1.Visible := False;
      frmPrincipal.Internacoes.Visible := False;
      frmPrincipal.Medicos1.Visible := False;
      frmPrincipal.Pacientes1.Visible := False;
      frmPrincipal.Quartos1.Visible := False;
      frmPrincipal.Responsveis1.Visible := False;
      frmPrincipal.Salas1.Visible := False;
      frmPrincipal.Setores1.Visible := False;
      frmPrincipal.Usuarios1.Visible := False;
    end

    else if DM.FDTUsuariosocupacao.Value = 'Enfemeiro' then
    begin
      frmPrincipal.Atendimentos1.Visible := False;
      frmPrincipal.Cidades1.Visible := False;
      frmPrincipal.Clinicas1.Visible := False;
      frmPrincipal.Convenios1.Visible := False;
      frmPrincipal.Hospitais1.Visible := False;
      frmPrincipal.Internacoes.Visible := False;
      frmPrincipal.Medicos1.Visible := False;
      frmPrincipal.Ocorrencias1.Visible := False;
      frmPrincipal.Pacientes1.Visible := False;
      frmPrincipal.Quartos1.Visible := False;
      frmPrincipal.Responsveis1.Visible := False;
      frmPrincipal.Salas1.Visible := False;
      frmPrincipal.Setores1.Visible := False;
      frmPrincipal.Transferencias1.Visible := False;
      frmPrincipal.Usuarios1.Visible := False;
    end

    else if DM.FDTUsuariosocupacao.Value = 'Servidores' then
    begin
      frmPrincipal.Atendimentos1.Visible := False;
      frmPrincipal.Cidades1.Visible := False;
      frmPrincipal.Clinicas1.Visible := False;
      frmPrincipal.Convenios1.Visible := False;
      frmPrincipal.Hospitais1.Visible := False;
      frmPrincipal.Internacoes.Visible := False;
      frmPrincipal.Medicos1.Visible := False;
      frmPrincipal.Ocorrencias1.Visible := False;
      frmPrincipal.Pacientes1.Visible := False;
      frmPrincipal.Quartos1.Visible := False;
      frmPrincipal.Responsveis1.Visible := False;
      frmPrincipal.Salas1.Visible := False;
      frmPrincipal.Setores1.Visible := False;
      frmPrincipal.Transferencias1.Visible := False;
      frmPrincipal.Usuarios1.Visible := False;
    end;

    DM.FDTUsuarios.Filtered := False;
    frmLogin.Close;
  end
  else
    MessageDlg('Usuário ou Senha invalido', mtError, [mbOk], 0);

end;
end.
