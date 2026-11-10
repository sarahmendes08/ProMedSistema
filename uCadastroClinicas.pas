unit uCadastroClinicas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmCadastroClinicas = class(TfrmCadastro)
    edtDescricao: TDBEdit;
    edtNome: TDBEdit;
    edtCodigo: TDBEdit;
    cbStatus: TDBComboBox;
    lcbHospitais: TDBLookupComboBox;
    edtTelefone: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroClinicas: TfrmCadastroClinicas;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadastroClinicas.btnSalvarClick(Sender: TObject);
begin
  DM.FDTClinicasstatus.Value := cbStatus.Text;
  inherited;
end;

procedure TfrmCadastroClinicas.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := DM.FDTClinicas;
end;

end.
