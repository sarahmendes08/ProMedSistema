unit uCadastroResponsaveis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastroResponsaveis = class(TfrmCadastro)
    edtCodigo: TDBEdit;
    edtEmail: TDBEdit;
    edtBairro: TDBEdit;
    edtNumero: TDBEdit;
    edtDataNasc: TDBEdit;
    edtCPF: TDBEdit;
    edtNome: TDBEdit;
    edtLogradouro: TDBEdit;
    edtTel: TDBEdit;
    lcbCidade: TDBLookupComboBox;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroResponsaveis: TfrmCadastroResponsaveis;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadastroResponsaveis.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := DM.FDTResponsaveis;
end;

end.
