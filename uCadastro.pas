unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.Dats, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async,FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmCadastro = class(TForm)
    DBGrid1: TDBGrid;
    btnNovo: TBitBtn;
    btnSalvar: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnFechar: TBitBtn;
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Tabela: TFDTable;
    procedure ControlaBotoes;
    function ValidarCampos: Boolean; virtual;
    function ValidarChavePrimaria: Boolean; virtual;
    function ValidarCPF: Boolean; virtual;
    function ValidarTelefone: Boolean; virtual;
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.dfm}

uses uDM;

function TfrmCadastro.ValidarCampos: Boolean;
begin
  Result := True;
end;

function TfrmCadastro.ValidarChavePrimaria: Boolean;
begin
  Result := True;
end;

function TfrmCadastro.ValidarCPF: Boolean;
begin
  Result := True;
end;

function TfrmCadastro.ValidarTelefone: Boolean;
begin
  Result := True;
end;

procedure TfrmCadastro.btnAlterarClick(Sender: TObject);
begin
  Tabela.UpdateOptions.ReadOnly := False;
  Tabela.Edit;
  ControlaBotoes;
end;

procedure TfrmCadastro.btnCancelarClick(Sender: TObject);
begin
  Tabela.Cancel;
  ControlaBotoes;
  Tabela.UpdateOptions.ReadOnly := True;
end;

procedure TfrmCadastro.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o registro?', mtWarning, [mbYes, mbNo], 0) = mrYes
  then
  begin
    Tabela.UpdateOptions.ReadOnly := False;
    Tabela.Delete;
    Tabela.UpdateOptions.ReadOnly := True;
  end;
end;

procedure TfrmCadastro.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastro.btnNovoClick(Sender: TObject);
begin
  Tabela.UpdateOptions.ReadOnly := False;
  Tabela.Append;
  ControlaBotoes;
end;

procedure TfrmCadastro.btnSalvarClick(Sender: TObject);
begin
  if not ValidarCampos then
    Exit;

  if Tabela.State in [dsInsert, dsEdit] then
  begin
  Tabela.Post;
  ControlaBotoes;
  Tabela.UpdateOptions.ReadOnly := True;
  end;
end;

procedure TfrmCadastro.ControlaBotoes;
begin
  if Tabela.State in [dsEdit,dsInsert] then
    begin
      btnSalvar.Enabled := True;
      btnCancelar.Enabled := True;
      btnAlterar.Enabled := False;
      btnNovo.Enabled := False;
      btnExcluir.Enabled := False;
    end
  else
    begin
      btnSalvar.Enabled := False;
      btnCancelar.Enabled := False;
      btnAlterar.Enabled := True;
      btnNovo.Enabled := True;
      btnExcluir.Enabled := True;
    end;

end;

procedure TfrmCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Tabela.State in [dsInsert, dsEdit] then
  begin
    ShowMessage('Confirme ou Cancele o registro antes de sair.');
    Action := CANone;
  end;

end;

procedure TfrmCadastro.FormShow(Sender: TObject);
begin
   if Assigned(Tabela) then
  begin
    if not Tabela.Active then
      Tabela.Open;
    Tabela.UpdateOptions.ReadOnly := True;
    ControlaBotoes;
  end;
end;

end.
