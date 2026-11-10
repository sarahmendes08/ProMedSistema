unit uCadastroInternacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Data.DB, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastroInternacoes = class(TfrmCadastro)
    edtCodigo: TDBEdit;
    edtDataEntrada: TDBEdit;
    edtDataAlta: TDBEdit;
    edtCodLiberacao: TDBEdit;
    edtMotivoAlta: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    mMotivoInternacao: TDBMemo;
    cbStatus: TDBComboBox;
    lcbPaciente: TDBLookupComboBox;
    lcbMedico: TDBLookupComboBox;
    lcbConvenio: TDBLookupComboBox;
    lcbQuarto: TDBLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroInternacoes: TfrmCadastroInternacoes;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadastroInternacoes.btnSalvarClick(Sender: TObject);
begin
  DM.FDTInternacoesstatus.Value := cbStatus.Text;
  inherited;
end;

procedure TfrmCadastroInternacoes.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := DM.FDTInternacoes;
end;

end.
