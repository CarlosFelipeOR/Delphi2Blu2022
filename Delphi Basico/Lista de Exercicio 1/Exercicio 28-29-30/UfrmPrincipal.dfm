object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu principal'
  ClientHeight = 281
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 24
    Top = 24
    object ReajusteSalario1: TMenuItem
      Caption = 'Op'#231#245'es'
      object ReajusteSalrios1: TMenuItem
        Caption = 'Reajuste Sal'#225'rios'
      end
      object ConverteMses1: TMenuItem
        Caption = 'Converte Meses'
      end
      object OrdemCrescente1: TMenuItem
        Caption = 'Ordem Crescente'
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
