unit uCadastroConvenios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastroConvenio = class(TfrmCadastro)
    cbStatus: TDBComboBox;
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    edtCNPJ: TDBEdit;
    edtTelefone: TDBEdit;
    edtEmail: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroConvenio: TfrmCadastroConvenio;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadastroConvenio.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := DM.FDTConvenios;
end;

end.
