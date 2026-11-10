unit uCadastroMedicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastroMedicos = class(TfrmCadastro)
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    edtCPF: TDBEdit;
    edtCRM: TDBEdit;
    edtUfCrm: TDBEdit;
    edtEspecialidade: TDBEdit;
    edtEmail: TDBEdit;
    edtTelefone: TDBEdit;
    cbStatus: TDBComboBox;
    lcbCidades: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroMedicos: TfrmCadastroMedicos;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadastroMedicos.btnSalvarClick(Sender: TObject);
begin
  DM.FDTMedicosstatus.Value := cbStatus.Text;
  inherited;
end;

procedure TfrmCadastroMedicos.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := DM.FDTMedicos;
end;

end.
