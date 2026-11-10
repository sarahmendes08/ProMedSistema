unit uCadastroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastroUsuarios = class(TfrmCadastro)
    edtSenha: TDBEdit;
    edtNome: TDBEdit;
    edtEmail: TDBEdit;
    cbOcupacao: TDBComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroUsuarios: TfrmCadastroUsuarios;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadastroUsuarios.btnSalvarClick(Sender: TObject);
begin
  DM.FDTUsuariosocupacao.Value := cbOcupacao.Text;
  inherited;
end;

procedure TfrmCadastroUsuarios.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := DM.FDTUsuarios;
end;

end.
