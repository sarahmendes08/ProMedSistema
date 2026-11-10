unit uCadastroCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmCadastroCidades = class(TfrmCadastro)
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    edtUf: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function ValidarCampos: Boolean; override;
    function ValidarChavePrimaria: Boolean; override;
    { Public declarations }
  end;

var
  frmCadastroCidades: TfrmCadastroCidades;

implementation

{$R *.dfm}

uses uDM, FireDAC.Comp.Client;

procedure TfrmCadastroCidades.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := DM.FDTCidades;
end;

function TfrmCadastroCidades.ValidarCampos: Boolean;
begin
   //Testar se qualquer um dos campos está vazio
  if (Trim(edtCodigo.Text) = '') or
      (Trim(edtNome.Text) = '') or
      (Trim(edtUf.Text) = '') then
  begin
    ShowMessage('Preencha todos os campos obrigatórios antes de salvar!');

    //Direciona o foco para o primeiro campo em branco encontrado
    if Trim(edtCodigo.Text) = '' then
      edtCodigo.SetFocus
    else if Trim(edtNome.Text) = '' then
      edtNome.SetFocus
    else if Trim(edtUf.Text) = '' then
      edtUf.SetFocus;

    Result:= False;
    Exit;
  end;

  // 2. Validação da chave primária
  if not ValidarChavePrimaria then
  begin
    Result := False;
    Exit;
  end;

  Result := True;
end;


function TfrmCadastroCidades.ValidarChavePrimaria: Boolean;
var
  QryTemp: TFDQuery;
begin
   Result := True;

  // Validação de Login Duplicado (Executada apenas em novos cadastros)
  if Tabela.State = dsInsert then
  begin
    QryTemp := TFDQuery.Create(nil);
    try
      QryTemp.Connection := DM.FDTCidades.Connection;
      QryTemp.SQL.Text := 'SELECT COUNT(*) AS QTD FROM Cidades WHERE id_cidade = :id_cidade';
      QryTemp.ParamByName('id_cidade').AsString := Trim(edtCodigo.Text);
      QryTemp.Open;

      if QryTemp.FieldByName('QTD').AsInteger > 0 then
      begin
        ShowMessage('Atenção: Este id de Cidade já está cadastrado no sistema. Escolha outro.');
        edtCodigo.SetFocus;
        Result := False;
      end;
    finally
      QryTemp.Free;
    end;
  end;
end;


end.
