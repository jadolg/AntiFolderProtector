object Form1: TForm1
  Left = 219
  Top = 307
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Anti FolderProtection --// by $h@'
  ClientHeight = 92
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 365
    Height = 52
    Caption = 
      'Este programa rompe la seguridad de algunas versiones de FolderP' +
      'rotector. Utilizando la opcion CrackIt crea en una subcarpeta da' +
      'ta dentro de la carpeta protegida con los datos protegidos y Res' +
      'toreIt vuelve a proteger los datos sin necesidad de contrasenna.'
    WordWrap = True
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 377
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 407
    Top = 8
    Width = 75
    Height = 25
    Caption = 'CrackIt'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 407
    Top = 39
    Width = 75
    Height = 25
    Caption = 'RestoreIt'
    TabOrder = 2
    OnClick = Button2Click
  end
end
