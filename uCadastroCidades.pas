unit uCadastroCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmCadastroCidades = class(TfrmCadastro)
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    edtUf: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCidades: TfrmCadastroCidades;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadastroCidades.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := DM.FDTCidades;
end;

end.
