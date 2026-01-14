inherited LancamentoEntradaDEForm: TLancamentoEntradaDEForm
  Caption = 'Lan'#231'amento de Entradas'
  ClientHeight = 783
  ClientWidth = 1477
  ExplicitWidth = 1493
  ExplicitHeight = 822
  PixelsPerInch = 96
  TextHeight = 13
  inherited BottomPanel: TPanel
    Top = 727
    Width = 1477
    ExplicitTop = 727
    ExplicitWidth = 1477
    inherited Panel2: TPanel
      Width = 1477
      ExplicitWidth = 1477
    end
    inherited OkButton: TBitBtn
      Left = 1160
      ExplicitLeft = 1160
    end
    inherited CancelButton: TBitBtn
      Left = 1315
      ExplicitLeft = 1315
    end
    inherited CloseButton: TBitBtn
      Left = 1396
      ExplicitLeft = 1396
    end
    inherited StatusBar: TStatusBar
      Width = 1477
      ExplicitWidth = 1477
    end
    inherited InsertButton: TBitBtn
      Left = 1238
      ExplicitLeft = 1238
    end
  end
  inherited pnlControl: TPanel
    Height = 727
    ExplicitHeight = 727
  end
  inherited FormPanel: TAdvScrollBox
    Width = 1406
    Height = 727
    ExplicitWidth = 1406
    ExplicitHeight = 727
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 1404
      Height = 134
      Align = alTop
      TabOrder = 0
      object NoNotaLabel: TLabel
        Left = 7
        Top = 12
        Width = 13
        Height = 13
        Caption = 'NF'
      end
      object NomeLabel: TLabel
        Left = 191
        Top = 15
        Width = 112
        Height = 13
        Caption = 'Fornecedor/Remetente'
      end
      object SelPessoaButton: TSpeedButton
        Left = 242
        Top = 30
        Width = 21
        Height = 21
        Hint = 'Selecione um fornecedor'
        Glyph.Data = {
          52020000424D5202000000000000760000002800000033000000110000000100
          040000000000DC01000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555555555555555555555555555FBFFFFFFFF0000055555555555555555555
          5555555555555555555555FBBFFFFBF000005555555555555555555555555555
          5555555555555FBFFFFBFFF00000555555555555555555555555555555555555
          55555FBFFFFBFBF00000555555555555555555555555555555555555555555FB
          BFFFFFF00000555555544455555555555555FFF55555555555555444FBFFFBF0
          0000555555448345555555555558777F55555555555544834FBFFFF000005555
          54847F845555555555877777F55555555554847F84BFFFF00000555554484F84
          5555555555877777F55555555554484F84FBBFB000005555548F744855555555
          55877777F555555555548F74485FF5F00000555544FFF745555555555877777F
          555555555544FFF745555550000055448F844455555555588777FFF555555555
          448F84445555555000005448F745555555555588777F55555555555448F74555
          555555500000548F775555555555558777F55555555555548F77555555555550
          000054F7745555555555558777F5555555555554F77455555555555000005444
          4555555555555588885555555555555444455555555555500000555555555555
          55555555555555555555555555555555555555500000}
        NumGlyphs = 3
        ParentShowHint = False
        ShowHint = True
        OnClick = SelPessoaButtonClick
      end
      object RegistroLabel: TLabel
        Left = 87
        Top = 16
        Width = 64
        Height = 13
        Caption = 'Data Entrada'
      end
      object SelDataRegistroButton: TSpeedButton
        Left = 157
        Top = 30
        Width = 21
        Height = 21
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000010000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333FFFFFFFFFFFFFFF000000000000010077777777777777770FF7FF7FF7FF
          7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
          777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
          79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
          7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
          777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
          79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
          CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SelDataRegistroButtonClick
      end
      object Label1: TLabel
        Left = 565
        Top = 12
        Width = 43
        Height = 13
        Caption = 'Processo'
      end
      object SelDepButton: TSpeedButton
        Left = 55
        Top = 70
        Width = 21
        Height = 21
        Hint = 'Selecionar um dep'#243'sito'
        AllowAllUp = True
        Glyph.Data = {
          52020000424D5202000000000000760000002800000033000000110000000100
          040000000000DC01000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555555555555555555555555555FBFFFFFFFF0000055555555555555555555
          5555555555555555555555FBBFFFFBF000005555555555555555555555555555
          5555555555555FBFFFFBFFF00000555555555555555555555555555555555555
          55555FBFFFFBFBF00000555555555555555555555555555555555555555555FB
          BFFFFFF00000555555544455555555555555FFF55555555555555444FBFFFBF0
          0000555555448345555555555558777F55555555555544834FBFFFF000005555
          54847F845555555555877777F55555555554847F84BFFFF00000555554484F84
          5555555555877777F55555555554484F84FBBFB000005555548F744855555555
          55877777F555555555548F74485FF5F00000555544FFF745555555555877777F
          555555555544FFF745555550000055448F844455555555588777FFF555555555
          448F84445555555000005448F745555555555588777F55555555555448F74555
          555555500000548F775555555555558777F55555555555548F77555555555550
          000054F7745555555555558777F5555555555554F77455555555555000005444
          4555555555555588885555555555555444455555555555500000555555555555
          55555555555555555555555555555555555555500000}
        NumGlyphs = 3
        ParentShowHint = False
        ShowHint = True
        OnClick = SelDepButtonClick
      end
      object Label20: TLabel
        Left = 12
        Top = 57
        Width = 42
        Height = 13
        Caption = 'Dep'#243'sito'
      end
      object Label2: TLabel
        Left = 305
        Top = 54
        Width = 39
        Height = 13
        Caption = 'Dolar DI'
      end
      object Label3: TLabel
        Left = 628
        Top = 53
        Width = 87
        Height = 13
        Caption = 'Pedido de Compra'
      end
      object PedidoButton: TSpeedButton
        Left = 719
        Top = 70
        Width = 21
        Height = 22
        Hint = 'Selecionar um dep'#243'sito'
        AllowAllUp = True
        Glyph.Data = {
          52020000424D5202000000000000760000002800000033000000110000000100
          040000000000DC01000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555555555555555555555555555FBFFFFFFFF0000055555555555555555555
          5555555555555555555555FBBFFFFBF000005555555555555555555555555555
          5555555555555FBFFFFBFFF00000555555555555555555555555555555555555
          55555FBFFFFBFBF00000555555555555555555555555555555555555555555FB
          BFFFFFF00000555555544455555555555555FFF55555555555555444FBFFFBF0
          0000555555448345555555555558777F55555555555544834FBFFFF000005555
          54847F845555555555877777F55555555554847F84BFFFF00000555554484F84
          5555555555877777F55555555554484F84FBBFB000005555548F744855555555
          55877777F555555555548F74485FF5F00000555544FFF745555555555877777F
          555555555544FFF745555550000055448F844455555555588777FFF555555555
          448F84445555555000005448F745555555555588777F55555555555448F74555
          555555500000548F775555555555558777F55555555555548F77555555555550
          000054F7745555555555558777F5555555555554F77455555555555000005444
          4555555555555588885555555555555444455555555555500000555555555555
          55555555555555555555555555555555555555500000}
        NumGlyphs = 3
        ParentShowHint = False
        ShowHint = True
        OnClick = PedidoButtonClick
      end
      object Label29: TLabel
        Left = 380
        Top = 54
        Width = 109
        Height = 13
        Caption = 'Valor Aduaneiro em R$'
      end
      object Label41: TLabel
        Left = 503
        Top = 55
        Width = 80
        Height = 13
        Caption = 'FOB Total em R$'
      end
      object NoNotaEdit: TDBEdit
        Left = 7
        Top = 29
        Width = 69
        Height = 21
        Ctl3D = True
        DataField = 'NONOTA'
        DataSource = DataSource
        ParentCtl3D = False
        TabOrder = 0
      end
      object NoFornecedorEdit: TDBEdit
        Left = 191
        Top = 30
        Width = 48
        Height = 19
        DataField = 'NOFORNECEDOR'
        DataSource = DataSource
        TabOrder = 2
        OnKeyPress = NoFornecedorEditKeyPress
      end
      object NomeFornecedorEdit: TDBEdit
        Left = 263
        Top = 30
        Width = 292
        Height = 19
        TabStop = False
        Color = clBtnFace
        DataField = 'NOME'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 30
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object RegistroEdit: TDBEdit
        Left = 87
        Top = 32
        Width = 65
        Height = 19
        Hint = 'Data de Entrada'
        DataField = 'DATAENTRADA'
        DataSource = DataSource
        TabOrder = 1
      end
      object ProcessoEdit: TDBEdit
        Left = 565
        Top = 29
        Width = 69
        Height = 21
        Ctl3D = True
        DataField = 'PROCESSO'
        DataSource = DataSource
        ParentCtl3D = False
        TabOrder = 4
      end
      object rgTipo: TDBRadioGroup
        Left = 640
        Top = 15
        Width = 188
        Height = 36
        Caption = 'Tipo'
        Columns = 2
        DataField = 'TIPO'
        DataSource = DataSource
        Items.Strings = (
          'Nacional'
          'Importado')
        TabOrder = 5
        Values.Strings = (
          'N'
          'I')
      end
      object DepPadraoEdit: TDBEdit
        Left = 10
        Top = 72
        Width = 42
        Height = 19
        DataField = 'NODEPOSITO'
        DataSource = DataSource
        TabOrder = 6
        OnKeyPress = DepPadraoEditKeyPress
      end
      object NomeDepositoEdit: TEdit
        Left = 87
        Top = 72
        Width = 209
        Height = 19
        TabStop = False
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object DolarEdit: TDBEdit
        Left = 305
        Top = 71
        Width = 69
        Height = 21
        Ctl3D = True
        DataField = 'DOLARDI'
        DataSource = DataSource
        ParentCtl3D = False
        TabOrder = 8
      end
      object NovoButton: TBitBtn
        Left = 10
        Top = 100
        Width = 100
        Height = 28
        Caption = '&Inserir Produto'
        NumGlyphs = 2
        TabOrder = 12
        OnClick = NovoButtonClick
      end
      object AlterarButton: TBitBtn
        Left = 116
        Top = 100
        Width = 100
        Height = 28
        Caption = '&Alterar Produto'
        NumGlyphs = 2
        TabOrder = 13
        OnClick = AlterarButtonClick
      end
      object ExcluirButton: TBitBtn
        Left = 222
        Top = 100
        Width = 100
        Height = 28
        Caption = '&Excluir Produto'
        NumGlyphs = 2
        TabOrder = 14
        OnClick = ExcluirButtonClick
      end
      object PedidoEdit: TDBEdit
        Left = 628
        Top = 71
        Width = 84
        Height = 21
        Ctl3D = True
        DataField = 'NOPEDIDO'
        DataSource = DataSource
        ParentCtl3D = False
        TabOrder = 11
        OnKeyPress = PedidoEditKeyPress
      end
      object FreteDIEdit: TDBEdit
        Left = 380
        Top = 71
        Width = 110
        Height = 21
        Ctl3D = True
        DataField = 'VALORADUANEIRO'
        DataSource = DataSource
        ParentCtl3D = False
        TabOrder = 9
      end
      object FobTotalEdit: TDBEdit
        Left = 503
        Top = 71
        Width = 114
        Height = 21
        Ctl3D = True
        DataField = 'FOBTOTAL'
        DataSource = DataSource
        ParentCtl3D = False
        TabOrder = 10
      end
    end
    object ItensGrid: TDbAltGrid
      Left = 0
      Top = 134
      Width = 1404
      Height = 438
      Align = alClient
      AltColors.BandLine = 15790320
      AltColors.ColLine = 15790320
      AltColors.FixedLine = 14474460
      AltColors.RowLine = 15790320
      AltColors.Stripe1 = 16776176
      AltOptions = [dagBandLines, dagDiscreteBandHeight, dagStripedBackground, dagStripedRows]
      DataSource = dsItens
      FixedColor = clWhite
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ITEM'
          Width = 39
        end
        item
          Expanded = False
          FieldName = 'NOPEDIDO'
          Width = 51
        end
        item
          Expanded = False
          FieldName = 'CODIGOIMPORTADOR'
          Width = 90
        end
        item
          Expanded = False
          FieldName = 'CODIGOREDUZIDO'
          Width = 81
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 429
        end
        item
          Expanded = False
          FieldName = 'NCM'
        end
        item
          Expanded = False
          FieldName = 'ORIGEM'
        end
        item
          Expanded = False
          FieldName = 'NODEPOSITO'
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
        end
        item
          Expanded = False
          FieldName = 'FOB'
        end
        item
          Expanded = False
          FieldName = 'IPI'
        end
        item
          Expanded = False
          FieldName = 'ICMS'
        end
        item
          Expanded = False
          FieldName = 'ICMSEFETIVO'
        end
        item
          Expanded = False
          FieldName = 'PISCOFINS'
        end
        item
          Expanded = False
          FieldName = 'FOBTOTAL'
        end
        item
          Expanded = False
          FieldName = 'VALORICMS'
        end
        item
          Expanded = False
          FieldName = 'VALORPISCOFINS'
        end
        item
          Expanded = False
          FieldName = 'DESCONTOACRESCIMO'
        end
        item
          Expanded = False
          FieldName = 'CUSTOMEDIO'
        end
        item
          Expanded = False
          FieldName = 'PMINIMO'
        end
        item
          Expanded = False
          FieldName = 'FATOR'
        end
        item
          Expanded = False
          FieldName = 'PRECOVENDA'
        end
        item
          Expanded = False
          FieldName = 'MARGEMMINIMA'
        end
        item
          Expanded = False
          FieldName = 'CREDITOPRESUMIDO'
        end
        item
          Expanded = False
          FieldName = 'IRJPCREDITOPRESUMIDO'
        end
        item
          Expanded = False
          FieldName = 'TOTALVENDA'
        end
        item
          Expanded = False
          FieldName = 'VALORIPI'
        end
        item
          Expanded = False
          FieldName = 'BASECALCULOICMS'
        end
        item
          Expanded = False
          FieldName = 'TOTALVALORNF'
        end>
    end
    object pntProdutos: TPanel
      Left = 0
      Top = 572
      Width = 1404
      Height = 153
      Align = alBottom
      TabOrder = 2
      ExplicitLeft = 5
      ExplicitTop = 575
      object Label113: TLabel
        Left = 5
        Top = 3
        Width = 22
        Height = 13
        Caption = 'Item'
      end
      object Label6: TLabel
        Left = 108
        Top = 3
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object SelProdutoButton: TSpeedButton
        Left = 169
        Top = 19
        Width = 23
        Height = 25
        Glyph.Data = {
          52020000424D5202000000000000760000002800000033000000110000000100
          040000000000DC01000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555555555555555555555555555FBFFFFFFFF0000055555555555555555555
          5555555555555555555555FBBFFFFBF000005555555555555555555555555555
          5555555555555FBFFFFBFFF00000555555555555555555555555555555555555
          55555FBFFFFBFBF00000555555555555555555555555555555555555555555FB
          BFFFFFF00000555555544455555555555555FFF55555555555555444FBFFFBF0
          0000555555448345555555555558777F55555555555544834FBFFFF000005555
          54847F845555555555877777F55555555554847F84BFFFF00000555554484F84
          5555555555877777F55555555554484F84FBBFB000005555548F744855555555
          55877777F555555555548F74485FF5F00000555544FFF745555555555877777F
          555555555544FFF745555550000055448F844455555555588777FFF555555555
          448F84445555555000005448F745555555555588777F55555555555448F74555
          555555500000548F775555555555558777F55555555555548F77555555555550
          000054F7745555555555558777F5555555555554F77455555555555000005444
          4555555555555588885555555555555444455555555555500000555555555555
          55555555555555555555555555555555555555500000}
        NumGlyphs = 3
        OnClick = SelProdutoButtonClick
      end
      object Label4: TLabel
        Left = 201
        Top = 3
        Width = 68
        Height = 13
        Caption = 'Nome Produto'
      end
      object Label5: TLabel
        Left = 849
        Top = 3
        Width = 22
        Height = 13
        Caption = 'NCM'
      end
      object Label7: TLabel
        Left = 975
        Top = 3
        Width = 34
        Height = 13
        Caption = 'Origem'
      end
      object Label8: TLabel
        Left = 1018
        Top = 3
        Width = 42
        Height = 13
        Caption = 'Dep'#243'sito'
      end
      object Label9: TLabel
        Left = 1066
        Top = 3
        Width = 65
        Height = 13
        Caption = 'Quantidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 1140
        Top = 3
        Width = 21
        Height = 13
        Caption = 'FOB'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 500
        Top = 51
        Width = 33
        Height = 13
        Caption = '% IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 615
        Top = 51
        Width = 29
        Height = 13
        Caption = 'ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 649
        Top = 51
        Width = 71
        Height = 13
        Caption = 'ICMS Efetivo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 905
        Top = 51
        Width = 32
        Height = 13
        Caption = '% Pis'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 1229
        Top = 3
        Width = 47
        Height = 13
        Caption = 'FOB Total'
      end
      object Label17: TLabel
        Left = 828
        Top = 51
        Width = 52
        Height = 13
        Caption = 'Valor ICMS'
      end
      object Label18: TLabel
        Left = 1297
        Top = 51
        Width = 74
        Height = 13
        Caption = 'Valor Pis/Cofins'
      end
      object Label19: TLabel
        Left = 5
        Top = 99
        Width = 54
        Height = 13
        Caption = 'Desc/Acres'
      end
      object Label21: TLabel
        Left = 83
        Top = 51
        Width = 69
        Height = 13
        Caption = 'Custo M'#233'dio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 226
        Top = 51
        Width = 58
        Height = 13
        Caption = 'Pre'#231'o Min.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 140
        Top = 99
        Width = 26
        Height = 13
        Caption = 'Fator'
      end
      object Label24: TLabel
        Left = 208
        Top = 99
        Width = 60
        Height = 13
        Caption = 'Pre'#231'o Venda'
      end
      object Label25: TLabel
        Left = 276
        Top = 99
        Width = 61
        Height = 13
        Caption = 'Margem Min.'
      end
      object Label10: TLabel
        Left = 5
        Top = 51
        Width = 75
        Height = 13
        Caption = 'Custo Liquido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 160
        Top = 51
        Width = 57
        Height = 13
        Caption = 'Custo Bruto'
      end
      object Label35: TLabel
        Left = 70
        Top = 99
        Width = 46
        Height = 13
        Caption = '% Minimo'
      end
      object Label37: TLabel
        Left = 540
        Top = 51
        Width = 49
        Height = 13
        Caption = 'Valor IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 973
        Top = 51
        Width = 48
        Height = 13
        Caption = 'Valor Pis'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label39: TLabel
        Left = 1122
        Top = 51
        Width = 72
        Height = 13
        Caption = 'Valor COFINS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label40: TLabel
        Left = 735
        Top = 51
        Width = 88
        Height = 13
        Caption = 'Base Calculo ICMS'
      end
      object Label26: TLabel
        Left = 357
        Top = 99
        Width = 110
        Height = 13
        Caption = 'Vlr. Cred.Presumido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 476
        Top = 99
        Width = 113
        Height = 13
        Caption = 'IRPJ s/ Cred.Presumido'
      end
      object Label28: TLabel
        Left = 31
        Top = 3
        Width = 58
        Height = 13
        Caption = 'C'#243'digo Imp.'
      end
      object Label36: TLabel
        Left = 598
        Top = 99
        Width = 57
        Height = 13
        Caption = 'Total Venda'
        FocusControl = TotalVendaEdit
      end
      object Label31: TLabel
        Left = 1053
        Top = 51
        Width = 50
        Height = 13
        Caption = '% Cofins'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 391
        Top = 51
        Width = 26
        Height = 13
        Caption = '% II'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 427
        Top = 51
        Width = 42
        Height = 13
        Caption = 'Valor II'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 291
        Top = 51
        Width = 90
        Height = 13
        Caption = 'Valor Aduaneiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label42: TLabel
        Left = 1200
        Top = 50
        Width = 87
        Height = 13
        Caption = 'Valor IPI Venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtItem: TDBEdit
        Left = 5
        Top = 20
        Width = 24
        Height = 21
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'ITEM'
        DataSource = dsItens
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object CodigoProdutoEdit: TDBEdit
        Left = 105
        Top = 22
        Width = 62
        Height = 21
        Ctl3D = True
        DataField = 'CODIGOREDUZIDO'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 2
        OnKeyPress = CodigoProdutoEditKeyPress
      end
      object NomeProdutoEdit: TDBEdit
        Left = 198
        Top = 18
        Width = 630
        Height = 24
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'NOME'
        DataSource = dsItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object NCMEdit: TDBEdit
        Left = 846
        Top = 20
        Width = 120
        Height = 21
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'CLASSIFICACAOIPI'
        DataSource = dsItens
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
      object OrigemEdit: TDBEdit
        Left = 972
        Top = 20
        Width = 37
        Height = 21
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'ORIGEM'
        DataSource = dsItens
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
      object DepositoEdit: TDBEdit
        Left = 1015
        Top = 20
        Width = 45
        Height = 21
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'NODEPOSITO'
        DataSource = dsItens
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 6
      end
      object QuantidadeEdit: TDBEdit
        Left = 1066
        Top = 20
        Width = 70
        Height = 21
        Ctl3D = True
        DataField = 'QUANTIDADE'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 7
      end
      object FOBEdit: TDBEdit
        Left = 1140
        Top = 20
        Width = 80
        Height = 21
        Ctl3D = True
        DataField = 'FOB'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 8
      end
      object IpiEdit: TDBEdit
        Left = 500
        Top = 68
        Width = 37
        Height = 21
        Ctl3D = True
        DataField = 'IPI'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 15
      end
      object ICMSEdit: TDBEdit
        Left = 615
        Top = 68
        Width = 32
        Height = 21
        Ctl3D = True
        DataField = 'ICMS'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 17
      end
      object ICMSEfetEdit: TDBEdit
        Left = 649
        Top = 68
        Width = 83
        Height = 21
        Ctl3D = True
        DataField = 'ICMSEFETIVO'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 18
      end
      object PisEdit: TDBEdit
        Left = 905
        Top = 68
        Width = 62
        Height = 21
        Ctl3D = True
        DataField = 'PPIS'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 21
      end
      object FobTotEdit: TDBEdit
        Left = 1229
        Top = 20
        Width = 144
        Height = 21
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'FOBTOTAL'
        DataSource = dsItens
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 30
      end
      object VlrICMSEdit: TDBEdit
        Left = 828
        Top = 68
        Width = 71
        Height = 21
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'VALORICMS'
        DataSource = dsItens
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 20
      end
      object VlrPisCofinsEdit: TDBEdit
        Left = 1296
        Top = 68
        Width = 77
        Height = 21
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'VALORPISCOFINS'
        DataSource = dsItens
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 24
      end
      object DescAcrescEdit: TDBEdit
        Left = 5
        Top = 116
        Width = 62
        Height = 21
        Ctl3D = True
        DataField = 'DESCONTOACRESCIMO'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 25
      end
      object CMEdit: TDBEdit
        Left = 83
        Top = 68
        Width = 72
        Height = 21
        Ctl3D = True
        DataField = 'CUSTOMEDIO'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 10
      end
      object PrecoMinEdit: TDBEdit
        Left = 226
        Top = 68
        Width = 62
        Height = 21
        Ctl3D = True
        DataField = 'PRECOMINIMO'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 12
      end
      object FatorEdit: TDBEdit
        Left = 140
        Top = 116
        Width = 62
        Height = 21
        Ctl3D = True
        DataField = 'FATOR'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 27
      end
      object PVendaEdit: TDBEdit
        Left = 208
        Top = 116
        Width = 62
        Height = 21
        Ctl3D = True
        DataField = 'PRECOVENDA'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 28
      end
      object MargemMinEdit: TDBEdit
        Left = 276
        Top = 116
        Width = 79
        Height = 21
        Ctl3D = True
        DataField = 'MARGEMMINIMA'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 29
      end
      object CustoLiquidoEdit: TDBEdit
        Left = 5
        Top = 68
        Width = 73
        Height = 21
        Ctl3D = True
        DataField = 'CUSTOLIQUIDO'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 9
      end
      object CustoBrutoEdit: TDBEdit
        Left = 160
        Top = 68
        Width = 62
        Height = 21
        Ctl3D = True
        DataField = 'CUSTOBRUTO'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 11
      end
      object PMinEdit: TDBEdit
        Left = 70
        Top = 116
        Width = 66
        Height = 21
        Ctl3D = True
        DataField = 'PMINIMO'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 26
      end
      object ValorIPIEdit: TDBEdit
        Left = 542
        Top = 68
        Width = 70
        Height = 21
        Ctl3D = True
        DataField = 'VALORIPI'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 16
      end
      object ValorPisEdit: TDBEdit
        Left = 973
        Top = 68
        Width = 75
        Height = 21
        Ctl3D = True
        DataField = 'VALORPIS'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 22
      end
      object ValorCofinsEdit: TDBEdit
        Left = 1122
        Top = 68
        Width = 75
        Height = 21
        Ctl3D = True
        DataField = 'VALORCOFINS'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 23
      end
      object BaseCalculoEdit: TDBEdit
        Left = 735
        Top = 68
        Width = 90
        Height = 21
        Ctl3D = True
        DataField = 'BASECALCULOICMS'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 19
      end
      object CredPresumidoEdit: TDBEdit
        Left = 357
        Top = 116
        Width = 116
        Height = 21
        Ctl3D = True
        DataField = 'CREDITOPRESUMIDO'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 31
      end
      object IRPJCredPresEdit: TDBEdit
        Left = 476
        Top = 116
        Width = 114
        Height = 21
        Ctl3D = True
        DataField = 'IRJPCREDITOPRESUMIDO'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 32
        OnExit = IRPJCredPresEditExit
      end
      object CodigoImpEdit: TDBEdit
        Left = 31
        Top = 20
        Width = 68
        Height = 21
        Ctl3D = True
        DataField = 'CODIGOIMPORTADOR'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 1
        OnKeyPress = CodigoProdutoEditKeyPress
      end
      object TotalVendaEdit: TDBEdit
        Left = 598
        Top = 117
        Width = 134
        Height = 19
        TabStop = False
        Color = clBtnFace
        DataField = 'TOTALVENDA'
        DataSource = dsItens
        ReadOnly = True
        TabOrder = 33
      end
      object CofinsEdit: TDBEdit
        Left = 1053
        Top = 68
        Width = 62
        Height = 21
        Ctl3D = True
        DataField = 'PCOFINS'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 34
      end
      object pIIEdit: TDBEdit
        Left = 391
        Top = 68
        Width = 32
        Height = 21
        Ctl3D = True
        DataField = 'PII'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 13
      end
      object ValorIIEdit: TDBEdit
        Left = 427
        Top = 68
        Width = 70
        Height = 21
        Ctl3D = True
        DataField = 'VALORII'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 14
      end
      object ValorAduaneiroEdit: TDBEdit
        Left = 291
        Top = 68
        Width = 93
        Height = 21
        Ctl3D = True
        DataField = 'VALORADUANEIRO'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 35
      end
      object DBEdit1: TDBEdit
        Left = 1200
        Top = 67
        Width = 87
        Height = 21
        Ctl3D = True
        DataField = 'VALORIPIVENDA'
        DataSource = dsItens
        ParentCtl3D = False
        TabOrder = 36
      end
    end
  end
  inherited DataSource: TDataSource
    Top = 344
  end
  inherited ActionList: TActionList
    Top = 291
  end
  inherited Table: TIBCQuery
    SQL.Strings = (
      'SELECT'
      '    LANCENTR.NOEMPRESA,'
      '    LANCENTR.NONOTA,'
      '    LANCENTR.NOFORNECEDOR,'
      '    LANCENTR.NODEPOSITO,'
      '    LANCENTR.DATAENTRADA,'
      '    LANCENTR.PROCESSO,'
      '    LANCENTR.TIPO,'
      '    LANCENTR.DOLARDI,'
      '    LANCENTR.AJUSTEENTRADA,'
      '    LANCENTR.AJUSTESAIDA,'
      '    LANCENTR.NOPEDIDO,'
      '    LANCENTR.VALORADUANEIRO,'
      '    LANCENTR.FOBTOTAL,'
      '    PESSOA.NOME,'
      '    CIDADE.ESTADO,'
      '    CASE'
      '        WHEN PESSOA.ISENTO = '#39'F'#39' THEN '#39'F'#39
      '        WHEN PESSOA.ISENTO = '#39'T'#39' THEN'
      '            CASE'
      '                WHEN PESSOAJU.REGIMETRIBUTACAO = '#39'M'#39
      
        '                     AND COALESCE(PESSOA.CONSUMIDORFINAL, '#39'F'#39') =' +
        ' '#39'F'#39
      '                THEN '#39'T'#39
      '                ELSE '#39'F'#39
      '            END'
      '        ELSE '#39'T'#39
      '    END AS CONTRIBUINTE'
      'FROM LANCENTR'
      'JOIN PESSOA ON LANCENTR.NOFORNECEDOR = PESSOA.NOPESSOA'
      'JOIN CIDADE ON PESSOA.NOCIDADE     = CIDADE.NOCIDADE'
      'LEFT JOIN PESSOAJU ON PESSOAJU.NOPESSOA = PESSOA.NOPESSOA'
      'where LANCENTR.NOEMPRESA = :NOEMPRESA'
      '  and LANCENTR.NONOTA = :NONOTA'
      '  and LANCENTR.NOFORNECEDOR = :NOFORNECEDOR')
    AfterScroll = TableAfterScroll
    OnNewRecord = TableNewRecord
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOEMPRESA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NONOTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOFORNECEDOR'
        Value = nil
      end>
    object TableNOEMPRESA: TIntegerField
      FieldName = 'NOEMPRESA'
      Required = True
    end
    object TableNONOTA: TIntegerField
      FieldName = 'NONOTA'
      Required = True
    end
    object TableNOFORNECEDOR: TIntegerField
      FieldName = 'NOFORNECEDOR'
      Required = True
      OnValidate = TableNOFORNECEDORValidate
    end
    object TableNODEPOSITO: TIntegerField
      FieldName = 'NODEPOSITO'
      Required = True
      OnValidate = TableNODEPOSITOValidate
    end
    object TableDATAENTRADA: TDateTimeField
      FieldName = 'DATAENTRADA'
      Required = True
    end
    object TablePROCESSO: TIntegerField
      FieldName = 'PROCESSO'
    end
    object TableDOLARDI: TFloatField
      FieldName = 'DOLARDI'
      DisplayFormat = '###,###,##0.0000'
    end
    object TableNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object TableESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = []
      Size = 2
    end
    object TableCONTRIBUINTE: TStringField
      FieldName = 'CONTRIBUINTE'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object TableTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object TableAJUSTEENTRADA: TStringField
      FieldName = 'AJUSTEENTRADA'
    end
    object TableAJUSTESAIDA: TStringField
      FieldName = 'AJUSTESAIDA'
    end
    object TableNOPEDIDO: TIntegerField
      FieldName = 'NOPEDIDO'
    end
    object TableFOBTOTAL: TFloatField
      FieldName = 'FOBTOTAL'
      DisplayFormat = '###,###,##0.0000'
    end
    object TableVALORADUANEIRO: TFloatField
      FieldName = 'VALORADUANEIRO'
      DisplayFormat = '###,###,##0.0000'
    end
  end
  inherited UpdateSQL: TIBCUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO LANCENTR'
      
        '  (NOEMPRESA, NONOTA, NOFORNECEDOR, NODEPOSITO, DATAENTRADA, PRO' +
        'CESSO, DOLARDI, TIPO, AJUSTEENTRADA, AJUSTESAIDA, NOPEDIDO, VALO' +
        'RADUANEIRO, FOBTOTAL)'
      'VALUES'
      
        '  (:NOEMPRESA, :NONOTA, :NOFORNECEDOR, :NODEPOSITO, :DATAENTRADA' +
        ', :PROCESSO, :DOLARDI, :TIPO, :AJUSTEENTRADA, :AJUSTESAIDA, :NOP' +
        'EDIDO, :VALORADUANEIRO, :FOBTOTAL)')
    DeleteSQL.Strings = (
      'DELETE FROM LANCENTR'
      'WHERE'
      
        '  NOEMPRESA = :Old_NOEMPRESA AND NONOTA = :Old_NONOTA AND NOFORN' +
        'ECEDOR = :Old_NOFORNECEDOR')
    ModifySQL.Strings = (
      'UPDATE LANCENTR'
      'SET'
      
        '  NOEMPRESA = :NOEMPRESA, NONOTA = :NONOTA, NOFORNECEDOR = :NOFO' +
        'RNECEDOR, NODEPOSITO = :NODEPOSITO, DATAENTRADA = :DATAENTRADA, ' +
        'PROCESSO = :PROCESSO, DOLARDI = :DOLARDI, TIPO = :TIPO, AJUSTEEN' +
        'TRADA = :AJUSTEENTRADA, AJUSTESAIDA = :AJUSTESAIDA, NOPEDIDO = :' +
        'NOPEDIDO, VALORADUANEIRO = :VALORADUANEIRO, FOBTOTAL = :FOBTOTAL'
      'WHERE'
      
        '  NOEMPRESA = :Old_NOEMPRESA AND NONOTA = :Old_NONOTA AND NOFORN' +
        'ECEDOR = :Old_NOFORNECEDOR')
    RefreshSQL.Strings = (
      
        'SELECT NOEMPRESA, NONOTA, NOFORNECEDOR, NODEPOSITO, DATAENTRADA,' +
        ' PROCESSO, DOLARDI, TIPO, AJUSTEENTRADA, AJUSTESAIDA, NOPEDIDO, ' +
        'VALORADUANEIRO, FOBTOTAL FROM LANCENTR'
      'WHERE'
      
        '  NOEMPRESA = :Old_NOEMPRESA AND NONOTA = :Old_NONOTA AND NOFORN' +
        'ECEDOR = :Old_NOFORNECEDOR')
    Top = 240
  end
  inherited Query: TIBCQuery
    Top = 288
  end
  inherited ToolsMenu: TMainMenu
    Left = 24
    Top = 256
  end
  object dsItens: TDataSource
    DataSet = qrItens
    OnStateChange = dsItensStateChange
    Left = 207
    Top = 296
  end
  object qrItens: TIBCQuery
    Connection = dtmConnec.DBConnec
    SQL.Strings = (
      
        'select ITEMLANCENTR.*, PRODUTO.CLASSIFICACAOICMS, PRODUTO.CLASSI' +
        'FICACAOPISCOFINS, PRODUTO.NOME, '
      
        'PRODUTO.NOCATEGORIA, PRODUTO.CFOPVENDA, PRODUTO.CFOPDEV, PRODUTO' +
        '.CLASSIFICACAOIPI, PRODUTO.PPB, '
      
        'PRODUTO.SUFRAMA, PRODUTO.OBSPPB, PRODUTO.CONTROLARNROSERIE, PROD' +
        'UTO.NOOBSERVACAO, PRODUTO.GARANTIA, PRODUTO.GARANTIAVENDA, '
      
        'PRODUTO.IPIVENDA, PRODUTO.BLOQUEADO, PRODUTO.CODIGODIFICMS, PROD' +
        'UTO.PARTNUMBER, FORNPROD.CODFORNECED, PRODUTO.CODIGONCM, PRODUTO' +
        '.ORIGEM, NOEMBALAGEMVENDA'
      '  from ITEMLANCENTR'
      
        '  inner join PRODUTO on ITEMLANCENTR.CODIGOREDUZIDO = PRODUTO.CO' +
        'DIGOREDUZIDO'
      
        '  left join FORNPROD on FORNPROD.CODIGOREDUZIDO = PRODUTO.CODIGO' +
        'REDUZIDO and FORNPROD.NOFORNECEDOR = ITEMLANCENTR.NOFORNECEDOR'
      ' where ITEMLANCENTR.NOEMPRESA = :NOEMPRESA'
      '   and ITEMLANCENTR.NONOTA = :NONOTA'
      '   and ITEMLANCENTR.NOFORNECEDOR = :NOFORNECEDOR')
    CachedUpdates = True
    UpdateObject = upItens
    BeforeDelete = qrItensBeforeDelete
    OnNewRecord = qrItensNewRecord
    Left = 208
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOEMPRESA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NONOTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOFORNECEDOR'
        Value = nil
      end>
    object qrItensNOEMPRESA: TIntegerField
      FieldName = 'NOEMPRESA'
      Required = True
    end
    object qrItensNOFORNECEDOR: TIntegerField
      FieldName = 'NOFORNECEDOR'
      Required = True
    end
    object qrItensNONOTA: TIntegerField
      FieldName = 'NONOTA'
      Required = True
    end
    object qrItensITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Required = True
    end
    object qrItensCODIGOREDUZIDO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGOREDUZIDO'
      Required = True
      OnSetText = qrItensCODIGOREDUZIDOSetText
      OnValidate = qrItensCODIGOREDUZIDOValidate
    end
    object qrItensCODIGOIMPORTADOR: TStringField
      DisplayLabel = 'Codigo Imp.'
      FieldName = 'CODIGOIMPORTADOR'
    end
    object qrItensNODEPOSITO: TIntegerField
      DisplayLabel = 'Dep'#243'sito'
      FieldName = 'NODEPOSITO'
      Required = True
    end
    object qrItensQUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      OnChange = qrItensQUANTIDADEChange
    end
    object qrItensFOB: TFloatField
      FieldName = 'FOB'
      OnChange = qrItensFOBChange
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrItensICMS: TFloatField
      FieldName = 'ICMS'
      OnValidate = qrItensICMSValidate
    end
    object qrItensPISCOFINS: TFloatField
      DisplayLabel = '% Pis/Cofins'
      FieldName = 'PISCOFINS'
    end
    object qrItensFOBTOTAL: TFloatField
      DisplayLabel = 'FOB Total'
      FieldName = 'FOBTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensVALORICMS: TFloatField
      DisplayLabel = 'Valor ICMS'
      FieldName = 'VALORICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensVALORPISCOFINS: TFloatField
      DisplayLabel = 'Valor Pis/Cofins'
      FieldName = 'VALORPISCOFINS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensDESCONTOACRESCIMO: TFloatField
      DisplayLabel = 'Desc/Acresc'
      FieldName = 'DESCONTOACRESCIMO'
      OnChange = qrItensDESCONTOACRESCIMOChange
    end
    object qrItensCUSTOMEDIO: TFloatField
      DisplayLabel = 'Custo M'#233'dio'
      FieldName = 'CUSTOMEDIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensPMINIMO: TFloatField
      DisplayLabel = 'Pre'#231'o Min.'
      FieldName = 'PMINIMO'
      OnValidate = qrItensPMINIMOValidate
    end
    object qrItensFATOR: TFloatField
      DisplayLabel = 'Fator'
      FieldName = 'FATOR'
    end
    object qrItensPRECOVENDA: TFloatField
      DisplayLabel = 'Pre'#231'o Venda'
      FieldName = 'PRECOVENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensICMSEFETIVO: TFloatField
      DisplayLabel = 'ICMS Efetivo'
      FieldName = 'ICMSEFETIVO'
    end
    object qrItensMARGEMMINIMA: TFloatField
      DisplayLabel = 'Margem Min.'
      FieldName = 'MARGEMMINIMA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensCREDITOPRESUMIDO: TFloatField
      DisplayLabel = 'Credito Presumido'
      FieldName = 'CREDITOPRESUMIDO'
      OnValidate = qrItensCREDITOPRESUMIDOValidate
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensIRJPCREDITOPRESUMIDO: TFloatField
      DisplayLabel = 'IRJP Cr'#233'd. Pres.'
      FieldName = 'IRJPCREDITOPRESUMIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensBASECALCULOICMS: TFloatField
      DisplayLabel = 'Base Calculo ICMS'
      FieldName = 'BASECALCULOICMS'
    end
    object qrItensTOTALVENDA: TFloatField
      DisplayLabel = 'Total Venda'
      FieldName = 'TOTALVENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensTOTALVALORNF: TFloatField
      DisplayLabel = 'Total NF'
      FieldName = 'TOTALVALORNF'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensNOPEDIDO: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'NOPEDIDO'
    end
    object qrItensNOME: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 255
    end
    object qrItensPARTNUMBER: TStringField
      FieldName = 'PARTNUMBER'
      ProviderFlags = []
      Size = 50
    end
    object qrItensCODIGONCM: TStringField
      FieldName = 'CODIGONCM'
      ProviderFlags = []
      Size = 8
    end
    object qrItensORIGEM: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qrItensCLASSIFICACAOICMS: TStringField
      FieldName = 'CLASSIFICACAOICMS'
      ProviderFlags = []
    end
    object qrItensCLASSIFICACAOPISCOFINS: TStringField
      FieldName = 'CLASSIFICACAOPISCOFINS'
      ProviderFlags = []
    end
    object qrItensNOCATEGORIA: TIntegerField
      FieldName = 'NOCATEGORIA'
      ProviderFlags = []
    end
    object qrItensCLASSIFICACAOIPI: TStringField
      FieldName = 'CLASSIFICACAOIPI'
      ProviderFlags = []
    end
    object qrItensPPB: TStringField
      FieldName = 'PPB'
      ProviderFlags = []
      OnValidate = qrItensPPBValidate
      FixedChar = True
      Size = 1
    end
    object qrItensSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qrItensOBSPPB: TStringField
      FieldName = 'OBSPPB'
      ProviderFlags = []
      Size = 255
    end
    object qrItensCONTROLARNROSERIE: TStringField
      FieldName = 'CONTROLARNROSERIE'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qrItensNOOBSERVACAO: TIntegerField
      FieldName = 'NOOBSERVACAO'
      ProviderFlags = []
    end
    object qrItensGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
      ProviderFlags = []
    end
    object qrItensGARANTIAVENDA: TIntegerField
      FieldName = 'GARANTIAVENDA'
      ProviderFlags = []
    end
    object qrItensIPIVENDA: TFloatField
      FieldName = 'IPIVENDA'
      ProviderFlags = []
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qrItensCODIGODIFICMS: TIntegerField
      FieldName = 'CODIGODIFICMS'
      ProviderFlags = []
    end
    object qrItensCODFORNECED: TStringField
      FieldName = 'CODFORNECED'
      ProviderFlags = []
    end
    object qrItensCUSTOLIQUIDO: TFloatField
      FieldName = 'CUSTOLIQUIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensCUSTOBRUTO: TFloatField
      FieldName = 'CUSTOBRUTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensPRECOMINIMO: TFloatField
      FieldName = 'PRECOMINIMO'
      OnValidate = qrItensPRECOMINIMOValidate
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensVALORIPI: TFloatField
      FieldName = 'VALORIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensVALORPIS: TFloatField
      FieldName = 'VALORPIS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensVALORCOFINS: TFloatField
      FieldName = 'VALORCOFINS'
      OnValidate = qrItensVALORCOFINSValidate
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensNOEMBALAGEMVENDA: TIntegerField
      FieldName = 'NOEMBALAGEMVENDA'
      ProviderFlags = []
    end
    object qrItensPII: TFloatField
      FieldName = 'PII'
      OnValidate = qrItensPIIValidate
    end
    object qrItensVALORII: TFloatField
      FieldName = 'VALORII'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensPPIS: TFloatField
      FieldName = 'PPIS'
      OnValidate = qrItensPPISValidate
    end
    object qrItensPCOFINS: TFloatField
      FieldName = 'PCOFINS'
      OnValidate = qrItensPCOFINSValidate
    end
    object qrItensVALORADUANEIRO: TFloatField
      FieldName = 'VALORADUANEIRO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensVALORIPIVENDA: TFloatField
      FieldName = 'VALORIPIVENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItensPMARKUP: TFloatField
      FieldName = 'PMARKUP'
    end
  end
  object qrAux: TIBCQuery
    Connection = dtmConnec.DBConnec
    SQL.Strings = (
      'select PROCENTR.*, PESSOA.NOME'
      '  from PROCENTR'
      '  inner join PESSOA on PROCENTR.NOFORNECEDOR = PESSOA.NOPESSOA'
      '  inner join CIDADE on PESSOA.NOCIDADE = CIDADE.NOCIDADE'
      ' where PROCENTR.NOEMPRESA = :NOEMPRESA'
      '   and PROCENTR.NONOTA = :NONOTA'
      '   and PROCENTR.NOFORNECEDOR = :NOFORNECEDOR')
    CachedUpdates = True
    Left = 312
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOEMPRESA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NONOTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOFORNECEDOR'
        Value = nil
      end>
  end
  object upItens: TIBCUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO ITEMLANCENTR'
      
        '  (NOEMPRESA, NOFORNECEDOR, NONOTA, ITEM, CODIGOREDUZIDO, CODIGO' +
        'IMPORTADOR, NODEPOSITO, QUANTIDADE, PRECO, FOB, IPI, ICMS, PISCO' +
        'FINS, FOBTOTAL, VALORICMS, VALORPISCOFINS, DESCONTOACRESCIMO, CU' +
        'STOMEDIO, PMINIMO, FATOR, PRECOVENDA, ICMSEFETIVO, TOTALVENDA, T' +
        'OTALVALORNF, BASECALCULOICMS, MARGEMMINIMA, CREDITOPRESUMIDO, IR' +
        'JPCREDITOPRESUMIDO, NOPEDIDO, CUSTOLIQUIDO, CUSTOBRUTO, PRECOMIN' +
        'IMO, VALORIPI, VALORPIS, VALORCOFINS, PII, VALORII, PPIS, PCOFIN' +
        'S, VALORADUANEIRO, VALORIPIVENDA, PMARKUP)'
      'VALUES'
      
        '  (:NOEMPRESA, :NOFORNECEDOR, :NONOTA, :ITEM, :CODIGOREDUZIDO, :' +
        'CODIGOIMPORTADOR, :NODEPOSITO, :QUANTIDADE, :PRECO, :FOB, :IPI, ' +
        ':ICMS, :PISCOFINS, :FOBTOTAL, :VALORICMS, :VALORPISCOFINS, :DESC' +
        'ONTOACRESCIMO, :CUSTOMEDIO, :PMINIMO, :FATOR, :PRECOVENDA, :ICMS' +
        'EFETIVO, :TOTALVENDA, :TOTALVALORNF, :BASECALCULOICMS, :MARGEMMI' +
        'NIMA, :CREDITOPRESUMIDO, :IRJPCREDITOPRESUMIDO, :NOPEDIDO, :CUST' +
        'OLIQUIDO, :CUSTOBRUTO, :PRECOMINIMO, :VALORIPI, :VALORPIS, :VALO' +
        'RCOFINS, :PII, :VALORII, :PPIS, :PCOFINS, :VALORADUANEIRO, :VALO' +
        'RIPIVENDA, :PMARKUP)')
    DeleteSQL.Strings = (
      'DELETE FROM ITEMLANCENTR'
      'WHERE'
      
        '  NOEMPRESA = :Old_NOEMPRESA AND NOFORNECEDOR = :Old_NOFORNECEDO' +
        'R AND NONOTA = :Old_NONOTA AND ITEM = :Old_ITEM')
    ModifySQL.Strings = (
      'UPDATE ITEMLANCENTR'
      'SET'
      
        '  NOEMPRESA = :NOEMPRESA, NOFORNECEDOR = :NOFORNECEDOR, NONOTA =' +
        ' :NONOTA, ITEM = :ITEM, CODIGOREDUZIDO = :CODIGOREDUZIDO, CODIGO' +
        'IMPORTADOR = :CODIGOIMPORTADOR, NODEPOSITO = :NODEPOSITO, QUANTI' +
        'DADE = :QUANTIDADE, PRECO = :PRECO, FOB = :FOB, IPI = :IPI, ICMS' +
        ' = :ICMS, PISCOFINS = :PISCOFINS, FOBTOTAL = :FOBTOTAL, VALORICM' +
        'S = :VALORICMS, VALORPISCOFINS = :VALORPISCOFINS, DESCONTOACRESC' +
        'IMO = :DESCONTOACRESCIMO, CUSTOMEDIO = :CUSTOMEDIO, PMINIMO = :P' +
        'MINIMO, FATOR = :FATOR, PRECOVENDA = :PRECOVENDA, ICMSEFETIVO = ' +
        ':ICMSEFETIVO, TOTALVENDA = :TOTALVENDA, TOTALVALORNF = :TOTALVAL' +
        'ORNF, BASECALCULOICMS = :BASECALCULOICMS, MARGEMMINIMA = :MARGEM' +
        'MINIMA, CREDITOPRESUMIDO = :CREDITOPRESUMIDO, IRJPCREDITOPRESUMI' +
        'DO = :IRJPCREDITOPRESUMIDO, NOPEDIDO = :NOPEDIDO, CUSTOLIQUIDO =' +
        ' :CUSTOLIQUIDO, CUSTOBRUTO = :CUSTOBRUTO, PRECOMINIMO = :PRECOMI' +
        'NIMO, VALORIPI = :VALORIPI, VALORPIS = :VALORPIS, VALORCOFINS = ' +
        ':VALORCOFINS, PII = :PII, VALORII = :VALORII, PPIS = :PPIS, PCOF' +
        'INS = :PCOFINS, VALORADUANEIRO = :VALORADUANEIRO, VALORIPIVENDA ' +
        '= :VALORIPIVENDA, PMARKUP = :PMARKUP'
      'WHERE'
      
        '  NOEMPRESA = :Old_NOEMPRESA AND NOFORNECEDOR = :Old_NOFORNECEDO' +
        'R AND NONOTA = :Old_NONOTA AND ITEM = :Old_ITEM')
    RefreshSQL.Strings = (
      
        'SELECT NOEMPRESA, NOFORNECEDOR, NONOTA, ITEM, CODIGOREDUZIDO, CO' +
        'DIGOIMPORTADOR, NODEPOSITO, QUANTIDADE, PRECO, FOB, IPI, ICMS, P' +
        'ISCOFINS, FOBTOTAL, VALORICMS, VALORPISCOFINS, DESCONTOACRESCIMO' +
        ', CUSTOMEDIO, PMINIMO, FATOR, PRECOVENDA, ICMSEFETIVO, TOTALVEND' +
        'A, TOTALVALORNF, BASECALCULOICMS, MARGEMMINIMA, CREDITOPRESUMIDO' +
        ', IRJPCREDITOPRESUMIDO, NOPEDIDO, CUSTOLIQUIDO, CUSTOBRUTO, PREC' +
        'OMINIMO, VALORIPI, VALORPIS, VALORCOFINS, PII, VALORII, PPIS, PC' +
        'OFINS, VALORADUANEIRO, VALORIPIVENDA, PMARKUP FROM ITEMLANCENTR'
      'WHERE'
      
        '  NOEMPRESA = :Old_NOEMPRESA AND NOFORNECEDOR = :Old_NOFORNECEDO' +
        'R AND NONOTA = :Old_NONOTA AND ITEM = :Old_ITEM')
    Left = 208
    Top = 208
  end
  object qrValidate: TIBCQuery
    Connection = dtmConnec.DBConnec
    SQL.Strings = (
      'select PROCENTR.*, PESSOA.NOME'
      '  from PROCENTR'
      '  inner join PESSOA on PROCENTR.NOFORNECEDOR = PESSOA.NOPESSOA'
      '  inner join CIDADE on PESSOA.NOCIDADE = CIDADE.NOCIDADE'
      ' where PROCENTR.NOEMPRESA = :NOEMPRESA'
      '   and PROCENTR.NONOTA = :NONOTA'
      '   and PROCENTR.NOFORNECEDOR = :NOFORNECEDOR')
    CachedUpdates = True
    Left = 368
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOEMPRESA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NONOTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOFORNECEDOR'
        Value = nil
      end>
  end
  object qrExec: TIBCQuery
    Connection = dtmConnec.DBConnec
    Transaction = dtmConnec.Transaction
    AutoCommit = False
    Left = 312
    Top = 280
  end
end
