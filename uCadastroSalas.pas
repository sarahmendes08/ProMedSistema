unit uCadastroSalas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastroSalas = class(TfrmCadastro)
    cbTipo: TDBComboBox;
    cbStatus: TDBComboBox;
    lcbSetor: TDBLookupComboBox;
    edtIdSala: TDBEdit;
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
  frmCadastroSalas: TfrmCadastroSalas;

implementation

{$R *.dfm}

uses uDM, FireDAC.Comp.Client;


procedure TfrmCadastroSalas.btnSalvarClick(Sender: TObject);
begin
  DM.FDTSalastipo.Value := cbTipo.Text;
  DM.FDTSalasstatus.Value := cbStatus.Text;
  inherited;
end;

procedure TfrmCadastroSalas.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := DM.FDTSalas;
end;

end.
