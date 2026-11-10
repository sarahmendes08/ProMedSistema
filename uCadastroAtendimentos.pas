unit uCadastroAtendimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastroAtendimentos = class(TfrmCadastro)
    edtCodigo: TDBEdit;
    edtDataHora: TDBEdit;
    cbTipo: TDBComboBox;
    lcbPaciente: TDBLookupComboBox;
    lcbMedico: TDBLookupComboBox;
    lcbHospital: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    label20: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    mQueixa: TDBMemo;
    mObs: TDBMemo;
    Label5: TLabel;
    mDiagnostico: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    function ValidarCampos: Boolean; override;
    function ValidarChavePrimaria: Boolean; override;
    function ValidarTelefone: Boolean; override;
    function ValidarCnpj: Boolean; override;
    function ValidarCRM: Boolean; override;
    { Public declarations }
  end;

var
  frmCadastroAtendimentos: TfrmCadastroAtendimentos;

implementation

{$R *.dfm}

uses uDM,FireDAC.Comp.Client;

procedure TfrmCadastroAtendimentos.btnSalvarClick(Sender: TObject);
begin
  DM.FDTAtendimentostipo_atendimento.Value := cbTipo.Text;
  inherited;
end;

procedure TfrmCadastroAtendimentos.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := DM.FDTAtendimentos;
end;

function TfrmCadastroAtendimentos.ValidarCampos: Boolean;
begin
   //Testar se qualquer um dos campos está vazio
  if (Trim(edtCodigo.Text) = '') or
      (Trim(edtDataHora.Text) = '') or
      (Trim(cbTipo.Text) = '') or
      (Trim(lcbPaciente.Text) = '') or
      (Trim(lcbMedico.Text) = '') or
      (Trim(lcbHospital.Text) = '') or
      (Trim(mQueixa.Text) = '') or
      (Trim(mObs.Text) = '') or
      (Trim(mDiagnostico.Text) = '')then
  begin
    ShowMessage('Preencha todos os campos obrigatórios antes de salvar!');

    //Direciona o foco para o primeiro campo em branco encontrado
    if Trim(edtCodigo.Text) = '' then
      edtCodigo.SetFocus
    else if Trim(edtDataHora.Text) = '' then
      edtDataHora.SetFocus
    else if Trim(cbTipo.Text) = '' then
      cbTipo.SetFocus
    else if Trim(lcbPaciente.Text) = '' then
      lcbPaciente.SetFocus
    else if Trim(lcbMedico.Text) = '' then
      lcbMedico.SetFocus
    else if Trim(lcbHospital.Text) = '' then
      lcbHospital.SetFocus
    else if Trim(mQueixa.Text) = '' then
      mQueixa.SetFocus
    else if Trim(mObs.Text) = '' then
      mObs.SetFocus
    else if Trim(mDiagnostico.Text) = '' then
      mDiagnostico.SetFocus;

    Result:= False;
    Exit;
  end;

  // 2. Validação da chave primária
  if not ValidarChavePrimaria then
  begin
    Result := False;
    Exit;
  end;

  if not ValidarCPF then
  begin
    Result := False;
    Exit;
  end;

  if not ValidarTelefone then
  begin
    Result := False;
    Exit;
  end;

  if not ValidarCnpj then
  begin
    Result := False;
    Exit;
  end;

  if not ValidarCRM then
  begin
    Result := False;
    Exit;
  end;

  Result := True;
end;

function TfrmCadastroAtendimentos.ValidarChavePrimaria: Boolean;
var
  QryTemp: TFDQuery;
begin
   Result := True;

  // Validação de Login Duplicado (Executada apenas em novos cadastros)
  if Tabela.State = dsInsert then
  begin
    QryTemp := TFDQuery.Create(nil);
    try
      QryTemp.Connection := DM.FDTAtendimentos.Connection;
      QryTemp.SQL.Text := 'SELECT COUNT(*) AS QTD FROM Atendimentos WHERE id_atendimento = :id_atendimento';
      QryTemp.ParamByName('id_atendimento').AsString := Trim(edtCodigo.Text);
      QryTemp.Open;

      if QryTemp.FieldByName('QTD').AsInteger > 0 then
      begin
        ShowMessage('Atenção: Este id de Atendimento já está cadastrado no sistema. Escolha outro.');
        edtCodigo.SetFocus;
        Result := False;
      end;
    finally
      QryTemp.Free;
    end;
  end;
end;

function TfrmCadastroAtendimentos.ValidarCnpj: Boolean;
begin

end;

function TfrmCadastroAtendimentos.ValidarCRM: Boolean;
begin

end;

function TfrmCadastroAtendimentos.ValidarTelefone: Boolean;
begin

end;

end.
