object AboutFrm: TAboutFrm
  Left = 294
  Top = 176
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cewka'
  ClientHeight = 133
  ClientWidth = 197
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 177
    Height = 81
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 48
    Top = 56
    Width = 80
    Height = 13
    Caption = '©Copyright 2002'
  end
  object Label2: TLabel
    Left = 32
    Top = 24
    Width = 124
    Height = 20
    Caption = 'Krzysztof Kruk'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 56
    Top = 96
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    NumGlyphs = 2
  end
end