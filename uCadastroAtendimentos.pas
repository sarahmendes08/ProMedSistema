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
    { Public declarations }
  end;

var
  frmCadastroAtendimentos: TfrmCadastroAtendimentos;

implementation

{$R *.dfm}

uses uDM;

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

end.
