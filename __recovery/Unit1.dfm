object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    624
    441)
  TextHeight = 15
  object Label1: TLabel
    Left = 224
    Top = 104
    Width = 34
    Height = 15
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 40
    Top = 24
    Width = 34
    Height = 15
    Caption = 'Label2'
  end
  object rdgPesqAtendimentos: TRadioGroup
    Left = 24
    Top = 62
    Width = 185
    Height = 105
    Caption = 'Op'#231#245'es de Pesquisa:'
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 296
    Top = 101
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 456
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 192
    Width = 569
    Height = 225
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
