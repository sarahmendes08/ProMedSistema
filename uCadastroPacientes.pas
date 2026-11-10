unit uCadastroPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastroPaciente = class(TfrmCadastro)
    Label1: TLabel;
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    edtCPF: TDBEdit;
    edtEmail: TDBEdit;
    edtSexo: TDBEdit;
    edtTelefone: TDBEdit;
    edtDataNasc: TDBEdit;
    edtLogradouro: TDBEdit;
    edtNumero: TDBEdit;
    edtBairro: TDBEdit;
    edtCEP: TDBEdit;
    edtProntuario: TDBEdit;
    edtConvenio: TDBLookupComboBox;
    lcbResponsavel: TDBLookupComboBox;
    lcbCidade: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edtCadastro: TDBEdit;
    Label17: TLabel;
    cbStatus: TDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPaciente: TfrmCadastroPaciente;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadastroPaciente.btnSalvarClick(Sender: TObject);
begin
  DM.FDTPacientesstatus.Value := cbStatus.Text;
  inherited;
end;

procedure TfrmCadastroPaciente.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := DM.FDTPacientes;
end;

end.
