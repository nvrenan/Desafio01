object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 79
  ClientWidth = 245
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblComprimento: TLabel
    Left = 13
    Top = 8
    Width = 63
    Height = 13
    Caption = 'Comprimento'
  end
  object edtComprimento: TEdit
    Left = 13
    Top = 27
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object btnCalcular: TButton
    Left = 152
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = btnCalcularClick
  end
end
