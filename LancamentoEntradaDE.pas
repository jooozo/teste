unit LancamentoEntradaDE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IBCCustomDataEntry, Vcl.Menus, DBAccess,
  IBC, Data.DB, MemDS, System.Actions, Vcl.ActnList, AdvScrollBox,
  AdvGlassButton, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, DbAGrids, Datasnap.DBClient;

type
  TLancamentoEntradaDEForm = class(TIBCCustomDataEntryForm)
    TableNOEMPRESA: TIntegerField;
    TableNONOTA: TIntegerField;
    TableNOFORNECEDOR: TIntegerField;
    TableNODEPOSITO: TIntegerField;
    TableDATAENTRADA: TDateTimeField;
    TablePROCESSO: TIntegerField;
    TableDOLARDI: TFloatField;
    TableNOME: TStringField;
    PanelTop: TPanel;
    NoNotaLabel: TLabel;
    NomeLabel: TLabel;
    SelPessoaButton: TSpeedButton;
    RegistroLabel: TLabel;
    SelDataRegistroButton: TSpeedButton;
    NoNotaEdit: TDBEdit;
    NoFornecedorEdit: TDBEdit;
    NomeFornecedorEdit: TDBEdit;
    RegistroEdit: TDBEdit;
    ProcessoEdit: TDBEdit;
    Label1: TLabel;
    rgTipo: TDBRadioGroup;
    DepPadraoEdit: TDBEdit;
    SelDepButton: TSpeedButton;
    NomeDepositoEdit: TEdit;
    Label20: TLabel;
    DolarEdit: TDBEdit;
    Label2: TLabel;
    ItensGrid: TDbAltGrid;
    Label3: TLabel;
    PedidoButton: TSpeedButton;
    dsItens: TDataSource;
    qrItens: TIBCQuery;
    qrAux: TIBCQuery;
    TableESTADO: TStringField;
    TableCONTRIBUINTE: TStringField;
    TableTIPO: TStringField;
    NovoButton: TBitBtn;
    AlterarButton: TBitBtn;
    ExcluirButton: TBitBtn;
    pntProdutos: TPanel;
    qrItensNOEMPRESA: TIntegerField;
    qrItensNOFORNECEDOR: TIntegerField;
    qrItensNONOTA: TIntegerField;
    qrItensITEM: TIntegerField;
    qrItensCODIGOREDUZIDO: TStringField;
    qrItensCODIGOIMPORTADOR: TStringField;
    qrItensNODEPOSITO: TIntegerField;
    qrItensQUANTIDADE: TIntegerField;
    qrItensFOB: TFloatField;
    qrItensIPI: TFloatField;
    qrItensICMS: TFloatField;
    qrItensPISCOFINS: TFloatField;
    qrItensFOBTOTAL: TFloatField;
    qrItensVALORICMS: TFloatField;
    qrItensVALORPISCOFINS: TFloatField;
    qrItensDESCONTOACRESCIMO: TFloatField;
    qrItensCUSTOMEDIO: TFloatField;
    qrItensPMINIMO: TFloatField;
    qrItensFATOR: TFloatField;
    qrItensPRECOVENDA: TFloatField;
    qrItensICMSEFETIVO: TFloatField;
    qrItensTOTALVENDA: TFloatField;
    qrItensTOTALVALORNF: TFloatField;
    qrItensBASECALCULOICMS: TFloatField;
    qrItensMARGEMMINIMA: TFloatField;
    qrItensCREDITOPRESUMIDO: TFloatField;
    qrItensIRJPCREDITOPRESUMIDO: TFloatField;
    qrItensNOPEDIDO: TIntegerField;
    qrItensNOME: TStringField;
    qrItensPARTNUMBER: TStringField;
    qrItensCODIGONCM: TStringField;
    qrItensORIGEM: TStringField;
    edtItem: TDBEdit;
    Label113: TLabel;
    CodigoProdutoEdit: TDBEdit;
    Label6: TLabel;
    SelProdutoButton: TSpeedButton;
    NomeProdutoEdit: TDBEdit;
    Label4: TLabel;
    NCMEdit: TDBEdit;
    Label5: TLabel;
    OrigemEdit: TDBEdit;
    Label7: TLabel;
    DepositoEdit: TDBEdit;
    Label8: TLabel;
    QuantidadeEdit: TDBEdit;
    Label9: TLabel;
    FOBEdit: TDBEdit;
    Label11: TLabel;
    IpiEdit: TDBEdit;
    Label12: TLabel;
    ICMSEdit: TDBEdit;
    Label13: TLabel;
    ICMSEfetEdit: TDBEdit;
    Label14: TLabel;
    PisEdit: TDBEdit;
    Label15: TLabel;
    FobTotEdit: TDBEdit;
    Label16: TLabel;
    VlrICMSEdit: TDBEdit;
    Label17: TLabel;
    VlrPisCofinsEdit: TDBEdit;
    Label18: TLabel;
    DescAcrescEdit: TDBEdit;
    Label19: TLabel;
    CMEdit: TDBEdit;
    Label21: TLabel;
    PrecoMinEdit: TDBEdit;
    Label22: TLabel;
    FatorEdit: TDBEdit;
    Label23: TLabel;
    PVendaEdit: TDBEdit;
    Label24: TLabel;
    MargemMinEdit: TDBEdit;
    Label25: TLabel;
    upItens: TIBCUpdateSQL;
    qrValidate: TIBCQuery;
    qrItensCLASSIFICACAOICMS: TStringField;
    qrItensCLASSIFICACAOPISCOFINS: TStringField;
    qrItensNOCATEGORIA: TIntegerField;
    qrItensCLASSIFICACAOIPI: TStringField;
    qrItensPPB: TStringField;
    qrItensSUFRAMA: TStringField;
    qrItensOBSPPB: TStringField;
    qrItensCONTROLARNROSERIE: TStringField;
    qrItensNOOBSERVACAO: TIntegerField;
    qrItensGARANTIA: TIntegerField;
    qrItensGARANTIAVENDA: TIntegerField;
    qrItensIPIVENDA: TFloatField;
    qrItensBLOQUEADO: TStringField;
    qrItensCODIGODIFICMS: TIntegerField;
    qrItensCODFORNECED: TStringField;
    qrItensCUSTOLIQUIDO: TFloatField;
    CustoLiquidoEdit: TDBEdit;
    Label10: TLabel;
    CustoBrutoEdit: TDBEdit;
    Label34: TLabel;
    qrItensCUSTOBRUTO: TFloatField;
    qrItensPRECOMINIMO: TFloatField;
    PMinEdit: TDBEdit;
    Label35: TLabel;
    qrItensVALORIPI: TFloatField;
    qrItensVALORPIS: TFloatField;
    qrItensVALORCOFINS: TFloatField;
    ValorIPIEdit: TDBEdit;
    Label37: TLabel;
    ValorPisEdit: TDBEdit;
    Label38: TLabel;
    ValorCofinsEdit: TDBEdit;
    Label39: TLabel;
    BaseCalculoEdit: TDBEdit;
    Label40: TLabel;
    CredPresumidoEdit: TDBEdit;
    Label26: TLabel;
    IRPJCredPresEdit: TDBEdit;
    Label27: TLabel;
    qrItensNOEMBALAGEMVENDA: TIntegerField;
    qrExec: TIBCQuery;
    TableAJUSTEENTRADA: TStringField;
    TableAJUSTESAIDA: TStringField;
    CodigoImpEdit: TDBEdit;
    Label28: TLabel;
    TableNOPEDIDO: TIntegerField;
    PedidoEdit: TDBEdit;
    TotalVendaEdit: TDBEdit;
    Label36: TLabel;
    qrItensPII: TFloatField;
    qrItensVALORII: TFloatField;
    qrItensPPIS: TFloatField;
    qrItensPCOFINS: TFloatField;
    FreteDIEdit: TDBEdit;
    Label29: TLabel;
    CofinsEdit: TDBEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    pIIEdit: TDBEdit;
    ValorIIEdit: TDBEdit;
    TableFOBTOTAL: TFloatField;
    FobTotalEdit: TDBEdit;
    Label41: TLabel;
    TableVALORADUANEIRO: TFloatField;
    qrItensVALORADUANEIRO: TFloatField;
    ValorAduaneiroEdit: TDBEdit;
    Label30: TLabel;
    qrItensVALORIPIVENDA: TFloatField;
    DBEdit1: TDBEdit;
    Label42: TLabel;
    qrItensPMARKUP: TFloatField;
    procedure SelDataRegistroButtonClick(Sender: TObject);
    procedure SelDepButtonClick(Sender: TObject);
    procedure TableNOFORNECEDORValidate(Sender: TField);
    procedure SelPessoaButtonClick(Sender: TObject);
    procedure NoFornecedorEditKeyPress(Sender: TObject; var Key: Char);
    procedure PedidoButtonClick(Sender: TObject);
    procedure TableNewRecord(DataSet: TDataSet);
    procedure TableNODEPOSITOValidate(Sender: TField);
    procedure TableAfterScroll(DataSet: TDataSet);
    procedure qrItensCODIGOREDUZIDOSetText(Sender: TField; const Text: string);
    procedure qrItensCODIGOREDUZIDOValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure dsItensStateChange(Sender: TObject);
    procedure NovoButtonClick(Sender: TObject);
    procedure SelProdutoButtonClick(Sender: TObject);
    procedure CodigoProdutoEditKeyPress(Sender: TObject; var Key: Char);
    procedure qrItensNewRecord(DataSet: TDataSet);
    procedure qrItensQUANTIDADEChange(Sender: TField);
    procedure qrItensFOBChange(Sender: TField);
    procedure qrItensDESCONTOACRESCIMOChange(Sender: TField);
    procedure qrItensPMINIMOValidate(Sender: TField);
    procedure qrItensICMSValidate(Sender: TField);
    procedure qrItensPRECOMINIMOValidate(Sender: TField);
    procedure qrItensCREDITOPRESUMIDOValidate(Sender: TField);
    procedure qrItensPPBValidate(Sender: TField);
    procedure qrItensVALORCOFINSValidate(Sender: TField);
    procedure PostActionExecute(Sender: TObject);
    procedure AlterarButtonClick(Sender: TObject);
    procedure ExcluirButtonClick(Sender: TObject);
    procedure IRPJCredPresEditExit(Sender: TObject);
    procedure qrItensBeforeDelete(DataSet: TDataSet);
    procedure PedidoEditKeyPress(Sender: TObject; var Key: Char);
    procedure DepPadraoEditKeyPress(Sender: TObject; var Key: Char);
    procedure qrItensPIIValidate(Sender: TField);
    procedure qrItensPPISValidate(Sender: TField);
    procedure qrItensPCOFINSValidate(Sender: TField);
  private
    ContItem,  NoItem, EmbalagemCompra: Integer;
    FRecalculandoItem: Boolean;
    procedure RecalcularValoresItem;
    procedure AtualizarCustos(const pCodigoReduzido: string; pNoEmbalagem, pNoDeposito: Integer; pCustoLiquido, pCustoMedio, pCustoReal, pFator, pPrecoMinimo, pPrecoVenda, pBase, pValorCred, pValorRessarc: Currency; pQtde: Integer);
    procedure InserirAjuste(const pCodigoReduzido: string; pNoEmbalagem, pNoDeposito: Integer; pCustoLiquido, pCustoMedio, pCustoReal: Currency; pQuantidade: Integer; var pAjusteSaida, pAjusteEntrada: string);
    procedure AtualizarCompras(const pCodigoReduzido: string; pQuantidade: Currency);
    { Private declarations }
  public
    PCUSTOFIXOMARGEM,
    PCOMISSAOMAX,
    PTAXALOGISTICA,
    PIRCREDPRESUMIDO,
    PFRETE,
    pCustoFixoComissao,
    Custos,
    PISCOFINS: Currency;
    DebitaICMS: string;
    Inserindo, MultiplaExclusaoItens: Boolean;
    { Public declarations }
  end;

var
  LancamentoEntradaDEForm: TLancamentoEntradaDEForm;

implementation

uses Calendario, DepositoDS, SelPessoas, FornecedoresDS, ComprasDS, DMConnec, uger_rotinas, uutil_geral, uutil_venda, SelProdForn, ProdutosDS, SelProdutos;

{$R *.dfm}

procedure TLancamentoEntradaDEForm.AlterarButtonClick(Sender: TObject);
begin
  inherited;
  if qrItens.State = dsBrowse then
    begin
      qrItens.Edit;
      CodigoImpEdit.SetFocus;
    end
  else
    qrItens.Cancel;
end;

procedure TLancamentoEntradaDEForm.AtualizarCompras(const pCodigoReduzido: string; pQuantidade: Currency);
begin
  if TableNOPEDIDO.AsInteger > 0 then
  begin
    qrExec.Close;
    qrExec.SQL.Clear;
    qrExec.SQL.Add('update ITEMCOMP set QTDEENTREGA = :QTDEENTREGA ');
    qrExec.SQL.Add(' where NOEMPRESA = :NOEMPRESA');
    qrExec.SQL.Add('   and NOPEDIDO = :NOPEDIDO');
    qrExec.SQL.Add('   and CODIGOREDUZIDO = :CODIGOREDUZIDO');
    qrExec.ParamByName('NOEMPRESA').AsInteger     := TableNOEMPRESA.AsInteger;
    qrExec.ParamByName('NOPEDIDO').AsInteger      := TableNOPEDIDO.AsInteger;
    qrExec.ParamByName('CODIGOREDUZIDO').AsString := pCodigoReduzido;
    qrExec.ParamByName('QTDEENTREGA').AsCurrency  := pQuantidade;
    qrExec.ExecSQL;
  end;
end;

procedure TLancamentoEntradaDEForm.AtualizarCustos(
  const pCodigoReduzido: string;
  pNoEmbalagem, pNoDeposito: Integer;
  pCustoLiquido, pCustoMedio, pCustoReal, pFator, pPrecoMinimo, pPrecoVenda,
  pBase, pValorCred, pValorRessarc: Currency;
  pQtde: Integer);
var
  lExists: Boolean;
begin
  // 1. Atualiza tabela MERCADOR
  qrExec.Close;
  qrExec.SQL.Clear;
  qrExec.SQL.Add('UPDATE MERCADOR SET');
  qrExec.SQL.Add('  CUSTOREAL = :CUSTOREAL,');
  qrExec.SQL.Add('  CUSTOMEDIO = :CUSTOMEDIO,');
  qrExec.SQL.Add('  UCREPOSICAO = :UCREPOSICAO,');
  qrExec.SQL.Add('  MCREPOSICAO = :MCREPOSICAO,');
  qrExec.SQL.Add('  CUSTOGER = :CUSTOGER,');
  qrExec.SQL.Add('  CUSTOMEDIOGER = :CUSTOMEDIOGER,');
  qrExec.SQL.Add('  BASESTRETIDO = :BASESTRETIDO,');
  qrExec.SQL.Add('  VLRSTCRED = :VLRSTCRED,');
  qrExec.SQL.Add('  VLRRESSARCIMENTO = :VLRRESSARCIMENTO,');
  qrExec.SQL.Add('  ULTVALORFOB = :ULTVALORFOB,');
  qrExec.SQL.Add('  ULTFATORINTERNACAO = :ULTFATORINTERNACAO');
  qrExec.SQL.Add('WHERE NOEMPRESA = :NOEMPRESA');
  qrExec.SQL.Add('  AND CODIGOREDUZIDO = :CODIGOREDUZIDO');
  qrExec.ParamByName('NOEMPRESA').AsInteger        := TableNOEMPRESA.AsInteger;
  qrExec.ParamByName('CODIGOREDUZIDO').AsString    := pCodigoReduzido;
  qrExec.ParamByName('CUSTOREAL').AsCurrency       := pCustoReal * 100000000;
  qrExec.ParamByName('CUSTOMEDIO').AsCurrency      := pCustoMedio * 100000000;
  qrExec.ParamByName('UCREPOSICAO').AsCurrency     := pCustoLiquido * 100000000;
  qrExec.ParamByName('MCREPOSICAO').AsCurrency     := pCustoMedio * 100000000;
  qrExec.ParamByName('CUSTOGER').AsCurrency        := pCustoLiquido * 100000000;
  qrExec.ParamByName('CUSTOMEDIOGER').AsCurrency   := pCustoMedio * 100000000;
  qrExec.ParamByName('BASESTRETIDO').AsCurrency    := pBase;
  qrExec.ParamByName('VLRSTCRED').AsCurrency       := pValorCred * 100000000;
  qrExec.ParamByName('VLRRESSARCIMENTO').AsCurrency := pValorRessarc * 100000000;
  qrExec.ParamByName('ULTVALORFOB').AsCurrency     := pFator;
  qrExec.ParamByName('ULTFATORINTERNACAO').AsCurrency := pFator;
  qrExec.ExecSQL;

  // 2. Atualiza ou insere em TABPRECOIT (UPDATE OR INSERT - Firebird 2.1+)
  qrExec.Close;
  qrExec.SQL.Clear;
  qrExec.SQL.Add('UPDATE OR INSERT INTO TABPRECOIT');
  qrExec.SQL.Add('  (NOEMPRESA, NOMETABELA, CODIGOREDUZIDO, NOEMBALAGEM, DATAINICIAL, PRECOMINIMO)');
  qrExec.SQL.Add('VALUES');
  qrExec.SQL.Add('  (:NOEMPRESA, ''DPP'', :CODIGOREDUZIDO, :NOEMBALAGEM, :DATAINICIAL, :PRECOMINIMO)');
  qrExec.SQL.Add('MATCHING (NOEMPRESA, NOMETABELA, CODIGOREDUZIDO, NOEMBALAGEM)');
  qrExec.ParamByName('NOEMPRESA').AsInteger       := TableNOEMPRESA.AsInteger;
  qrExec.ParamByName('CODIGOREDUZIDO').AsString   := pCodigoReduzido;
  qrExec.ParamByName('NOEMBALAGEM').AsInteger     := pNoEmbalagem;
  qrExec.ParamByName('DATAINICIAL').AsDateTime    := Date;
  qrExec.ParamByName('PRECOMINIMO').AsCurrency    := pPrecoMinimo;
  qrExec.ExecSQL;

  // 3. Atualiza tabela PRODUTO
  qrExec.Close;
  qrExec.SQL.Clear;
  qrExec.SQL.Add('UPDATE PRODUTO SET');
  qrExec.SQL.Add('  PMARKUPMINIMO = :PM,');
  qrExec.SQL.Add('  PMARKUPMINIMO_BR = :PM,');
  qrExec.SQL.Add('  PMARKUPMINIMO_BRN = :PM,');
  qrExec.SQL.Add('  PMARKUPVENDA = :PMV,');
  qrExec.SQL.Add('  PMARKUPVENDA_BR = :PMV,');
  qrExec.SQL.Add('  PMARKUPVENDA_BRN = :PMV,');
  qrExec.SQL.Add('  PMARKUPSITE = :PMS,');
  qrExec.SQL.Add('  PMARKUPSITE_BR = :PMS');
  qrExec.SQL.Add('WHERE CODIGOREDUZIDO = :CODIGO');
  qrExec.ParamByName('CODIGO').AsString := pCodigoReduzido;
  if pCustoMedio <> 0 then
  begin
    qrExec.ParamByName('PM').AsCurrency  := ((pPrecoMinimo / pCustoMedio) - 1) * 100;
    qrExec.ParamByName('PMV').AsCurrency := ((pPrecoVenda / pCustoMedio) - 1) * 100;
    qrExec.ParamByName('PMS').AsCurrency := ((pPrecoVenda / pCustoMedio) - 1) * 100 + 1;
  end
  else
  begin
    qrExec.ParamByName('PM').AsCurrency  := 0;
    qrExec.ParamByName('PMV').AsCurrency := 0;
    qrExec.ParamByName('PMS').AsCurrency := 0;
  end;
  qrExec.ExecSQL;

  // 4. Atualiza ou insere em MERCDEPOSITO (UPDATE OR INSERT - Firebird 2.1+)
  qrExec.Close;
  qrExec.SQL.Clear;
  qrExec.SQL.Add('UPDATE OR INSERT INTO MERCDEPOSITO');
  qrExec.SQL.Add('  (NOEMPRESA, CODIGOREDUZIDO, NODEPOSITO, CUSTOGER, CUSTOMEDIOGER,');
  qrExec.SQL.Add('   VENDIDO, DANIFICADO, QUANTIDADE, SEPARANDO, VENDAFUTURA,');
  qrExec.SQL.Add('   ENCOMENDADO, QTDPRECIFICAR, NUMSERIENAOLIBERADO)');
  qrExec.SQL.Add('VALUES');
  qrExec.SQL.Add('  (:NOEMPRESA, :CODIGOREDUZIDO, :NODEPOSITO, :CUSTOGER, :CUSTOMEDIOGER,');
  qrExec.SQL.Add('   0, 0, 0, 0, 0, 0, 0, 0)');
  qrExec.SQL.Add('MATCHING (NOEMPRESA, CODIGOREDUZIDO, NODEPOSITO)');
  qrExec.ParamByName('NOEMPRESA').AsInteger      := TableNOEMPRESA.AsInteger;
  qrExec.ParamByName('CODIGOREDUZIDO').AsString  := pCodigoReduzido;
  qrExec.ParamByName('NODEPOSITO').AsInteger     := pNoDeposito;
  qrExec.ParamByName('CUSTOGER').AsCurrency      := pCustoLiquido * 100000000;
  qrExec.ParamByName('CUSTOMEDIOGER').AsCurrency := pCustoMedio * 100000000;
  qrExec.ExecSQL;
end;

procedure TLancamentoEntradaDEForm.CodigoProdutoEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = ^J then begin
    with TSelProdutosForm.Create(Self) do begin
      ShowModal;
      if ModalResult = mrOk then
        qrItensCODIGOREDUZIDO.AsAnsiString := qrSelecaoCODIGOREDUZIDO.AsAnsiString;
    end;
    Key := #0;
  end;
end;

procedure TLancamentoEntradaDEForm.DepPadraoEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = ^J then
    SelDepButtonClick(Self);
end;

procedure TLancamentoEntradaDEForm.dsItensStateChange(Sender: TObject);
begin
  inherited;
  if qrItens.State = dsBrowse then
  begin
    AlterarButton.Caption := '&Alterar';
    pntProdutos.Height    := 0;
  end
  else if qrItens.State in dsEditModes then
  begin
    AlterarButton.Caption := '&Cancelar';
    pntProdutos.Height    := 179;
  end;
  if qrItens.State in dsEditModes then
  begin
    AlterarButton.Enabled := True;
    ExcluirButton.Enabled := False;
  end
  else if qrItens.Fields[0].IsNull then
  begin
    AlterarButton.Enabled := False;
    ExcluirButton.Enabled := False;
  end
  else
  begin
    AlterarButton.Enabled := True;
    ExcluirButton.Enabled := True;
  end;
end;

procedure TLancamentoEntradaDEForm.ExcluirButtonClick(Sender: TObject);
begin
  inherited;
  qrItens.Delete
end;

procedure TLancamentoEntradaDEForm.FormCreate(Sender: TObject);
begin
  inherited;
  qrAux.Close;
  qrAux.SQL.Text := 'select DATAINICIAL, PCUSTOFIXOCOMISSAO, PCUSTOFIXOMARGEM, '+
                    '       PCOMISSAOMAX, PTAXALOGISTICA, PFINANBNDES, '+
                    '       PFINANVENDAPRAZO, PFINANCOMISSAO, IR_CREDPRESUMIDO, PFRETE '+
                    '  from CONFIGURDATA '+
                    ' where NOEMPRESA = :NOEMPRESA and DATAINICIAL <= :DATA '+
                    ' order by DATAINICIAL desc';
  qrAux.ParamByName('DATA').AsDateTime     := dtmConnec.DateLoaded;
  qrAux.ParamByName('NOEMPRESA').AsInteger := dtmConnec.Empresa.Codigo;
  qrAux.Open;
  PCUSTOFIXOMARGEM    := qrAux.FieldByName('PCUSTOFIXOMARGEM').AsCurrency;
  PCustoFixoComissao  := qrAux.FieldByName('PCUSTOFIXOCOMISSAO').AsCurrency;
  PTAXALOGISTICA      := qrAux.FieldByName('PTAXALOGISTICA').AsCurrency;
  PIRCREDPRESUMIDO    := qrAux.FieldByName('IR_CREDPRESUMIDO').AsCurrency;
  PFRETE              := qrAux.FieldByName('PFRETE').AsCurrency;

  qrAux.Close;
  qrAux.SQL.Text := 'select (PCUSTOFIXO + PDESPVARIAVEL + PDESPFINAN + PFRETE + PCSLL + PIRPJ + '+
                    '        PINADIMPLENCIA + PCOMISSAO), DEBITAICMS, PPISCOFINS '+
                    'from FPVGERAL where NOEMPRESA = :NOEMPRESA ';
  qrAux.ParamByName('NOEMPRESA').AsInteger := dtmConnec.Empresa.Codigo;
  qrAux.Open;
  Custos     := qrAux.Fields[0].AsCurrency;
  DebitaICMS := qrAux.Fields[1].AsString;
  PISCOFINS  := qrAux.Fields[2].AsCurrency;
  MultiplaExclusaoItens := False;
end;

procedure TLancamentoEntradaDEForm.InserirAjuste(
  const pCodigoReduzido: string;
  pNoEmbalagem, pNoDeposito: Integer;
  pCustoLiquido, pCustoMedio, pCustoReal: Currency;
  pQuantidade: Integer;
  var pAjusteSaida, pAjusteEntrada: string);  // Parâmetros OUT para retornar os documentos
var
  lJustificativa: string;
  lNoAjuste: Integer;
begin
  // Gera os documentos de ajuste apenas uma vez por nota
  // A verificação é feita pelo parâmetro pAjusteSaida vazio
  if pAjusteSaida = '' then
  begin
    // Gera número do ajuste
    qrAux.Close;
    qrAux.SQL.Text := 'SELECT GEN_ID(NOAJUSTE, 1) FROM RDB$DATABASE';
    qrAux.Open;
    lNoAjuste := qrAux.Fields[0].AsInteger;

    // Define os documentos de ajuste (retornados por parâmetro)
    pAjusteSaida   := 'AUT' + FormatFloat('0000000', lNoAjuste);
    pAjusteEntrada := pAjusteSaida + ' TRANSF';

    // Monta justificativa
    lJustificativa := 'ENTRADA ' + TableNONOTA.AsString;
    if TablePROCESSO.AsString <> '' then
      lJustificativa := lJustificativa + ' PROCESSO ' + TablePROCESSO.AsString;

    // Insere ajuste de SAÍDA (do depósito 100)
    qrExec.Close;
    qrExec.SQL.Clear;
    qrExec.SQL.Add('INSERT INTO AJUSTE');
    qrExec.SQL.Add('  (NOEMPRESA, NODOCUMENTO, TIPO, DATA, AJUSTECUSTO,');
    qrExec.SQL.Add('   JUSTIFICATIVA, AUTOMATICO, NODEPOSITO, NODEPOSITODEST)');
    qrExec.SQL.Add('VALUES');
    qrExec.SQL.Add('  (:NOEMPRESA, :NODOCUMENTO, :TIPO, :DATA, :AJUSTECUSTO,');
    qrExec.SQL.Add('   :JUSTIFICATIVA, ''T'', :NODEPOSITO, :NODEPOSITODEST)');
    qrExec.ParamByName('NOEMPRESA').AsInteger      := TableNOEMPRESA.AsInteger;
    qrExec.ParamByName('NODOCUMENTO').AsString     := pAjusteSaida;
    qrExec.ParamByName('TIPO').AsString            := 'S';
    qrExec.ParamByName('DATA').AsDateTime          := TableDATAENTRADA.AsDateTime;
    qrExec.ParamByName('AJUSTECUSTO').AsString     := 'F';
    qrExec.ParamByName('JUSTIFICATIVA').AsString   := lJustificativa;
    qrExec.ParamByName('NODEPOSITO').AsInteger     := 100;
    qrExec.ParamByName('NODEPOSITODEST').AsInteger := TableNODEPOSITO.AsInteger;
    qrExec.ExecSQL;

    // Insere ajuste de ENTRADA (para o depósito destino)
    qrExec.Close;
    qrExec.SQL.Clear;
    qrExec.SQL.Add('INSERT INTO AJUSTE');
    qrExec.SQL.Add('  (NOEMPRESA, NODOCUMENTO, TIPO, DATA, AJUSTECUSTO,');
    qrExec.SQL.Add('   JUSTIFICATIVA, AUTOMATICO, NODEPOSITO, NODEPOSITODEST)');
    qrExec.SQL.Add('VALUES');
    qrExec.SQL.Add('  (:NOEMPRESA, :NODOCUMENTO, :TIPO, :DATA, :AJUSTECUSTO,');
    qrExec.SQL.Add('   :JUSTIFICATIVA, ''T'', :NODEPOSITO, :NODEPOSITODEST)');
    qrExec.ParamByName('NOEMPRESA').AsInteger      := TableNOEMPRESA.AsInteger;
    qrExec.ParamByName('NODOCUMENTO').AsString     := pAjusteEntrada;
    qrExec.ParamByName('TIPO').AsString            := 'E';
    qrExec.ParamByName('DATA').AsDateTime          := TableDATAENTRADA.AsDateTime;
    qrExec.ParamByName('AJUSTECUSTO').AsString     := 'F';
    qrExec.ParamByName('JUSTIFICATIVA').AsString   := lJustificativa;
    qrExec.ParamByName('NODEPOSITO').AsInteger     := TableNODEPOSITO.AsInteger;
    qrExec.ParamByName('NODEPOSITODEST').AsInteger := 100;
    qrExec.ExecSQL;
  end;

  // Insere ou atualiza item do ajuste de SAÍDA
  qrExec.Close;
  qrExec.SQL.Clear;
  qrExec.SQL.Add('UPDATE OR INSERT INTO ITEMAJU');
  qrExec.SQL.Add('  (NOEMPRESA, NODOCUMENTO, CODIGOREDUZIDO, QUANTIDADE, CUSTOMEDIO,');
  qrExec.SQL.Add('   CUSTOREAL, UCREPOSICAO, MCREPOSICAO, CUSTOGER, CUSTOMEDIOGER, NOEMBALAGEM)');
  qrExec.SQL.Add('VALUES');
  qrExec.SQL.Add('  (:NOEMPRESA, :NODOCUMENTO, :CODIGOREDUZIDO, :QUANTIDADE, :CUSTOMEDIO,');
  qrExec.SQL.Add('   :CUSTOREAL, :UCREPOSICAO, :MCREPOSICAO, :CUSTOGER, :CUSTOMEDIOGER, :NOEMBALAGEM)');
  qrExec.SQL.Add('MATCHING (NOEMPRESA, NODOCUMENTO, CODIGOREDUZIDO)');
  qrExec.ParamByName('NOEMPRESA').AsInteger        := TableNOEMPRESA.AsInteger;
  qrExec.ParamByName('NODOCUMENTO').AsString       := pAjusteSaida;
  qrExec.ParamByName('CODIGOREDUZIDO').AsString    := pCodigoReduzido;
  qrExec.ParamByName('QUANTIDADE').AsCurrency         := pQuantidade;
  qrExec.ParamByName('CUSTOMEDIO').AsCurrency         := pCustoMedio * 100000000;
  qrExec.ParamByName('CUSTOREAL').AsCurrency          := pCustoReal * 100000000;
  qrExec.ParamByName('UCREPOSICAO').AsCurrency        := pCustoLiquido * 100000000;
  qrExec.ParamByName('MCREPOSICAO').AsCurrency        := pCustoMedio * 100000000;
  qrExec.ParamByName('CUSTOGER').AsCurrency           := pCustoLiquido * 100000000;
  qrExec.ParamByName('CUSTOMEDIOGER').AsCurrency      := pCustoMedio * 100000000;
  qrExec.ParamByName('NOEMBALAGEM').AsInteger      := pNoEmbalagem;
  qrExec.ExecSQL;

  // Insere ou atualiza item do ajuste de ENTRADA
  qrExec.Close;
  qrExec.SQL.Clear;
  qrExec.SQL.Add('UPDATE OR INSERT INTO ITEMAJU');
  qrExec.SQL.Add('  (NOEMPRESA, NODOCUMENTO, CODIGOREDUZIDO, QUANTIDADE, CUSTOMEDIO,');
  qrExec.SQL.Add('   CUSTOREAL, UCREPOSICAO, MCREPOSICAO, CUSTOGER, CUSTOMEDIOGER, NOEMBALAGEM)');
  qrExec.SQL.Add('VALUES');
  qrExec.SQL.Add('  (:NOEMPRESA, :NODOCUMENTO, :CODIGOREDUZIDO, :QUANTIDADE, :CUSTOMEDIO,');
  qrExec.SQL.Add('   :CUSTOREAL, :UCREPOSICAO, :MCREPOSICAO, :CUSTOGER, :CUSTOMEDIOGER, :NOEMBALAGEM)');
  qrExec.SQL.Add('MATCHING (NOEMPRESA, NODOCUMENTO, CODIGOREDUZIDO)');
  qrExec.ParamByName('NOEMPRESA').AsInteger        := TableNOEMPRESA.AsInteger;
  qrExec.ParamByName('NODOCUMENTO').AsString       := pAjusteEntrada;
  qrExec.ParamByName('CODIGOREDUZIDO').AsString    := pCodigoReduzido;
  qrExec.ParamByName('QUANTIDADE').AsCurrency         := pQuantidade;
  qrExec.ParamByName('CUSTOMEDIO').AsCurrency         := pCustoMedio * 100000000;
  qrExec.ParamByName('CUSTOREAL').AsCurrency          := pCustoReal * 100000000;
  qrExec.ParamByName('UCREPOSICAO').AsCurrency        := pCustoLiquido * 100000000;
  qrExec.ParamByName('MCREPOSICAO').AsCurrency        := pCustoMedio * 100000000;
  qrExec.ParamByName('CUSTOGER').AsCurrency           := pCustoLiquido * 100000000;
  qrExec.ParamByName('CUSTOMEDIOGER').AsCurrency      := pCustoMedio * 100000000;
  qrExec.ParamByName('NOEMBALAGEM').AsInteger      := pNoEmbalagem;
  qrExec.ExecSQL;
end;

procedure TLancamentoEntradaDEForm.IRPJCredPresEditExit(Sender: TObject);
begin
  inherited;
  NovoButton.SetFocus;
end;

procedure TLancamentoEntradaDEForm.NoFornecedorEditKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = ^J then begin
    with TSelPessoasForm.Create(Self) do begin
      TipoSelecao := '';
      ShowModal;
      if ModalResult = mrOk then
        TableNOFORNECEDOR.AsInteger := qrSelecaoNOPESSOA.AsInteger;
      Destroy;
      NoFornecedorEdit.Setfocus;
    end;
    Key := #0;
  end;
end;

procedure TLancamentoEntradaDEForm.NovoButtonClick(Sender: TObject);
begin
  inherited;
  if qrItens.State <> dsBrowse then
  begin
     if (qrItensCODIGOREDUZIDO.Value > '') and (qrItensQUANTIDADE.Value > 0) and (qrItensFOB.Value > 0) then
    begin
      qrItens.Post;
      Inc(ContItem);
    end
    else
      qrItens.Cancel;
  end;
  qrItens.Insert;
  CodigoImpEdit.SetFocus;
end;

procedure TLancamentoEntradaDEForm.PedidoButtonClick(Sender: TObject);
var
  K: Variant;
  lQuery: TIBCQuery;
begin
  inherited;
  with TComprasDSForm.Create(Self) do
  try
    WherePrefix[0] := WherePrefix[0] + Format('(COMPRA.NOEMPRESA = %s and COMPRA.NOFORNECEDOR = %s and COMPRA.SITUACAO = ''P'')',
                                              [TableNOEMPRESA.AsString, TableNOFORNECEDOR.AsString]);
    if ShowSelection(K) then
    begin
      if K[0] > 0 then
      begin
        Query.Close;
        Query.SQL.Text := Format('select NOPEDIDO, NOMOEDA from COMPRA where NOEMPRESA = %s and NOPEDIDO = %s',[IntToStr(K[0]), IntToStr(K[1])]);
        Query.Open;
        if not Query.Fields[0].IsNull then
        begin
          if not (Table.State in dsEditModes) then Table.Edit;
          PedidoEdit.SetFocus;
          TableNOPEDIDO.Value := Query.FieldByName('NOPEDIDO').AsInteger;
          if Query.FieldByName('NOMOEDA').AsInteger = 0 then
            TableTIPO.Value := 'N'
          else
            TableTIPO.Value := 'I';
          if qrItens.RecordCount > 0 then
          begin
            MultiplaExclusaoItens := True;
            try
              qrItens.First;
              while not qrItens.Eof do
                qrItens.Delete;
            finally
              MultiplaExclusaoItens := False;
            end;
          end;
          lQuery := TIBCQuery.Create(Self);
          lQuery.Connection := dtmConnec.DBConnec;
          try
            lQuery.Close;
            lQuery.SQL.Text := 'select ITEMCOMP.ITEM, ITEMCOMP.CODIGOREDUZIDO, ITEMCOMP.QUANTIDADE, ITEMCOMP.VALORUNITARIO, ITEMCOMP.PICMS, '+
                               '       PRODUTO.CLASSIFICACAOIPI, PRODUTO.NOEMBALAGEMCOMPRA, ITEMCOMP.VLRCUSTOUNTENTR  '+
                               '  from ITEMCOMP '+
                               ' inner join PRODUTO on PRODUTO.CODIGOREDUZIDO = ITEMCOMP.CODIGOREDUZIDO '+
                               ' where ITEMCOMP.NOEMPRESA = :NOEMPRESA '+
                               '   and ITEMCOMP.NOPEDIDO = :NOPEDIDO ';
            lQuery.ParamByName('NOEMPRESA').AsInteger := TableNOEMPRESA.AsInteger;
            lQuery.ParamByName('NOPEDIDO').AsInteger := TableNOPEDIDO.AsInteger;
            lQuery.Open;
            lQuery.First;
            while not lQuery.Eof do
            begin
              qrItens.Append;
              qrItensITEM.AsInteger := lQuery.FieldByName('ITEM').AsInteger;
              qrItensCODIGOREDUZIDO.AsString := lQuery.FieldByName('CODIGOREDUZIDO').AsString;
              qrItensQUANTIDADE.AsCurrency := lQuery.FieldByName('QUANTIDADE').AsCurrency;
              qrItensNODEPOSITO.AsInteger := TableNODEPOSITO.AsInteger;
              qrItensFOB.AsCurrency := lQuery.FieldByName('VALORUNITARIO').AsCurrency;
              qrItensICMS.AsCurrency := lQuery.FieldByName('PICMS').AsCurrency;
              qrItensCLASSIFICACAOIPI.AsString := lQuery.FieldByName('CLASSIFICACAOIPI').AsString;
              if lQuery.FieldByName('VLRCUSTOUNTENTR').AsCurrency > 0 then
                qrItensCUSTOLIQUIDO.AsCurrency := lQuery.FieldByName('VLRCUSTOUNTENTR').AsCurrency;
              qrItensCUSTOBRUTO.AsCurrency := lQuery.FieldByName('VALORUNITARIO').AsCurrency;
              qrItens.Post;
              lQuery.Next;
            end;
          finally
            lQuery.Free;
          end;
        end;
      end;
    end;
  finally
    Query.Close;
    Free;
  end;
end;

procedure TLancamentoEntradaDEForm.PedidoEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = ^J then
    PedidoButtonClick(Self);
end;

procedure TLancamentoEntradaDEForm.PostActionExecute(Sender: TObject);
var
  vCodigoReduzido: string;
  vNoEmbalagem: Integer;
  vNoDeposito: Integer;
  vCustoLiquido: Currency;
  vCustoMedio: Currency;
  vCustoReal: Currency;
  vFator: Currency;
  vPrecoMinimo: Currency;
  vPrecoVenda: Currency;
  vBase: Currency;
  vValorCred: Currency;
  vValorRessarc: Currency;
  vQuantidade: Integer;
  vBookmark: TBookmark;
  vAjusteSaida, vAjusteEntrada: string;
begin
  if TableNONOTA.IsNull then
  begin
    NoNotaEdit.SetFocus;
    raise Exception.Create('NF deve ser informada!');
  end;

  if TableTIPO.Value = 'I' then
  begin
    if TablePROCESSO.IsNull then
    begin
      ProcessoEdit.SetFocus;
      raise Exception.Create('Processo deve ser informado!');
    end;
    if TableDOLARDI.IsNull then
    begin
      DolarEdit.SetFocus;
      raise Exception.Create('Dolar DI deve ser informado!');
    end;
  end;

  if not ((Table.State in dsEditModes) or Table.UpdatesPending or
          (qrItens.State in dsEditModes) or qrItens.UpdatesPending) then
    Exit;

  if Application.MessageBox('Confirma a GRAVAÇÃO?',
                            'Confirme', MB_YESNO + MB_ICONQUESTION) <> IDYES then
    Exit;

  if qrItens.State in dsEditModes then
    qrItens.Post;

  if Table.State in dsEditModes then
    Table.Post;

  // Inicializa variáveis de controle
  vAjusteSaida   := '';
  vAjusteEntrada := '';

  if not dtmConnec.DBConnec.InTransaction then
    dtmConnec.DBConnec.StartTransaction;

  try
    qrItens.DisableControls;
    try
      vBookmark := qrItens.GetBookmark;
      try
        qrItens.First;
        while not qrItens.Eof do
        begin
          vCodigoReduzido := qrItensCODIGOREDUZIDO.AsString;
          vNoEmbalagem    := qrItensNOEMBALAGEMVENDA.AsInteger;
          vNoDeposito     := qrItensNODEPOSITO.AsInteger;
          vCustoLiquido   := qrItensCUSTOLIQUIDO.AsCurrency;
          vCustoMedio     := qrItensCUSTOMEDIO.AsCurrency;
          vCustoReal      := qrItensCUSTOBRUTO.AsCurrency;
          vFator          := qrItensFATOR.AsCurrency;
          vPrecoMinimo    := qrItensPRECOMINIMO.AsCurrency;
          vPrecoVenda     := qrItensPRECOVENDA.AsCurrency;
          vBase           := qrItensBASECALCULOICMS.AsCurrency;
          vValorCred      := qrItensCREDITOPRESUMIDO.AsCurrency;
          vValorRessarc   := 0;
          vQuantidade     := qrItensQUANTIDADE.AsInteger;

          // Atualiza custos
          AtualizarCustos(
            vCodigoReduzido, vNoEmbalagem, vNoDeposito,
            vCustoLiquido, vCustoMedio, vCustoReal, vFator,
            vPrecoMinimo, vPrecoVenda, vBase, vValorCred, vValorRessarc,
            vQuantidade
          );

          // Insere ajuste (versão refatorada que não modifica Table)
          InserirAjuste(
            vCodigoReduzido, vNoEmbalagem, vNoDeposito,
            vCustoLiquido, vCustoMedio, vCustoReal, vQuantidade,
            vAjusteSaida, vAjusteEntrada  // Parâmetros VAR
          );

          AtualizarCompras(vCodigoReduzido, vQuantidade);

          qrItens.Next;
        end;
      finally
        if qrItens.BookmarkValid(vBookmark) then
          qrItens.GotoBookmark(vBookmark);
        qrItens.FreeBookmark(vBookmark);
      end;
    finally
      qrItens.EnableControls;
    end;

    if vAjusteSaida <> '' then
    begin
      if not (Table.State in dsEditModes) then
        Table.Edit;
      TableAJUSTESAIDA.AsString   := vAjusteSaida;
      TableAJUSTEENTRADA.AsString := vAjusteEntrada;
      Table.Post;
    end;
    Table.ApplyUpdates;
    qrItens.ApplyUpdates;

    dtmConnec.DBConnec.Commit;

    Table.CommitUpdates;
    qrItens.CommitUpdates;

    Table.Insert;
    NoNotaEdit.SetFocus;
  except
    on E: Exception do
    begin
      if dtmConnec.DBConnec.InTransaction then
      begin
        try
          dtmConnec.DBConnec.Rollback;
        except
          // Ignora erros no rollback
        end;
      end;
      Table.CancelUpdates;
      if qrItens.Active then
        qrItens.CancelUpdates;

      Application.MessageBox(
        PChar('Erro ao gravar: ' + E.Message),
        'Erro',
        MB_OK + MB_ICONERROR
      );
    end;
  end;
end;

procedure TLancamentoEntradaDEForm.qrItensBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not TableAJUSTEENTRADA.IsNull then
  begin
    if (not MultiplaExclusaoItens) and (Application.MessageBox('Ajustes do Item serão Excluidos!', 'Confirme',
       MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) <> IdYes) then
      Abort;  // Cancela a exclusão

    with dtmConnec do
    begin
      if not DBConnec.InTransaction then
        DBConnec.StartTransaction;
      try
        qrAux.Close;
        qrAux.SQL.Text := Format('delete from ITEMAJU where NOEMPRESA = %s and NODOCUMENTO = ''%s'' and CODIGOREDUZIDO = ''%s''',
                                 [TableNOEMPRESA.AsString, TableAJUSTEENTRADA.AsString, qrItensCODIGOREDUZIDO.AsString]);
        qrAux.ExecSQL;

        qrAux.Close;
        qrAux.SQL.Text := Format('delete from ITEMAJU where NOEMPRESA = %s and NODOCUMENTO = ''%s'' and CODIGOREDUZIDO = ''%s''',
                                 [TableNOEMPRESA.AsString, TableAJUSTESAIDA.AsString, qrItensCODIGOREDUZIDO.AsString]);
        qrAux.ExecSQL;

        AtualizarCompras(qrItensCODIGOREDUZIDO.AsString, 0);

        DBConnec.CommitRetaining;
      except
        on E: Exception do
        begin
          DBConnec.RollbackRetaining;
          raise;
        end;
      end;
    end;
  end;
end;

procedure TLancamentoEntradaDEForm.qrItensCODIGOREDUZIDOSetText(Sender: TField; const Text: string);
var
  S, Digito: String;
  Ifen : Boolean;
begin
  inherited;
  if Text = '' then Exit;
  S := Text;
  Ifen := Pos('-', S) > 0;
  if Ifen then
    Digito := Copy(S, Pos('-', S) + 1, 1);
  EmbalagemCompra := 0;
  Query.Close;
  if not (uger_rotinas.getConfigur(dtmConnec.DBConnec, 'AUTOCODIGO', 'F', False) = 'T') then begin
    Query.SQL.Text := 'select CODIGOREDUZIDO from PRODUTO where CODIGOREDUZIDO = :CODIGOREDUZIDO';
    Query.ParamByName('CODIGOREDUZIDO').AsAnsiString := Text;
    Query.Open;
    if Query.Fields[0].IsNull then
      begin
        Query.Close;
        Query.SQL.Text := 'select CODIGOREDUZIDO from FORNPROD where '+
                          ' NOFORNECEDOR = :NOFORNECEDOR and upper(FORNPROD.CODFORNECED) = :CODFORNECED ';
        Query.ParamByName('NOFORNECEDOR').AsInteger := TableNOFORNECEDOR.Value;
        Query.ParamByName('CODFORNECED').AsAnsiString   := uppercase(Text);
        Query.Open;
        if not Query.Fields[0].IsNull then begin
          S := Query.Fields[0].AsAnsiString;
          ifen := False;
        end
        else
          begin
            Query.Close;
            Query.SQL.Text := 'select CODIGOREDUZIDO, NOEMBALAGEM from PRODUTOEMB where CODIGOBARRAS = :CODIGOBARRAS';
            Query.ParamByName('CODIGOBARRAS').AsAnsiString := Text;
            Query.Open;
            if not Query.Fields[0].IsNull then begin
              S := Query.Fields[0].AsAnsiString;
              EmbalagemCompra := Query.Fields[1].AsInteger;
            end
            else begin
              Query.Close;
              Query.SQL.Text := 'select CODIGOREDUZIDO from PRODUTO where CODIGOESTRUTURADO = :CODIGOESTRUTURADO';
              Query.ParamByName('CODIGOESTRUTURADO').AsAnsiString := Text;
              Query.Open;
              if not Query.Fields[0].IsNull then
                 S := Query.Fields[0].AsAnsiString
              else begin
                Query.Close;
                Query.SQL.Text := 'select CODIGOREDUZIDO from FORNPROD where upper(CODFORNECED) = :CODFORNECED';
                Query.ParamByName('CODFORNECED').AsAnsiString := uppercase(Text);
                Query.Open;
                if Query.RecordCount = 1 then
                  S := Query.Fields[0].AsAnsiString
                else begin
                  if Query.RecordCount > 1 then begin
                    with TSelProdFornForm.Create(Self) do
                      try
                        K := CodigoProdutoEdit.Text;
                        ShowModal;
                        if ModalResult = mrOk then
                          S := qrProdutosCODIGOREDUZIDO.Value;
                      finally
                        Free;
                      end;
                  end
                  else
                     raise Exception.Create('Produto não cadastrado');
                end;
              end;
            end;
          end;
      end
        else begin
          Query.Close;
          Query.SQL.Text := 'select CODIGOREDUZIDO from PRODUTO where CODIGOREDUZIDO = :CODIGOREDUZIDO';
          Query.ParamByName('CODIGOREDUZIDO').AsAnsiString := Text;
          Query.Open;
          if not Query.Fields[0].IsNull then
            S := Query.Fields[0].AsAnsiString
          else begin
            Query.Close;
            Query.SQL.Text := 'select CODIGOREDUZIDO, NOEMBALAGEM from PRODUTOEMB where CODIGOBARRAS = :CODIGOBARRAS';
            Query.ParamByName('CODIGOBARRAS').AsAnsiString := Text;
            Query.Open;
            if not Query.Fields[0].IsNull then
              begin
                S := Query.Fields[0].AsAnsiString;
              end
            else begin
              Query.Close;
              Query.SQL.Text := 'select CODIGOREDUZIDO from PRODUTO where CODIGOESTRUTURADO = :CODIGOESTRUTURADO';
              Query.ParamByName('CODIGOESTRUTURADO').AsAnsiString := Text;
              Query.Open;
              if not Query.Fields[0].IsNull then
                 S := Query.Fields[0].AsAnsiString
              else begin
                Query.Close;
                Query.SQL.Text := 'select CODIGOREDUZIDO from FORNPROD where CODFORNECED = :CODFORNECED';
                Query.ParamByName('CODFORNECED').AsAnsiString := Text;
                Query.Open;
                if Query.RecordCount = 1 then
                  S := Query.Fields[0].AsAnsiString
                else begin
                  with TSelProdFornForm.Create(Self) do
                  try
                    K := CodigoProdutoEdit.Text;
                    ShowModal;
                    if ModalResult = mrOk then
                      S := qrProdutosCODIGOREDUZIDO.Value;
                  finally
                    Free;
                  end;
                end;
              end;
            end;
          end;
        end;
  end
  else begin
    Query.Close;
    Query.SQL.Text := 'select CODIGOREDUZIDO from FORNPROD where '+
                      ' NOFORNECEDOR = :NOFORNECEDOR and upper(FORNPROD.CODFORNECED) = :CODFORNECED ';
    Query.ParamByName('NOFORNECEDOR').AsInteger := TableNOFORNECEDOR.Value;
    Query.ParamByName('CODFORNECED').AsAnsiString   := uppercase(Text);
    Query.Open;
    if not Query.Fields[0].IsNull then
    begin
      S := Query.Fields[0].AsAnsiString;
      ifen := False;
    end
    else
    begin
      Query.Close;
      Query.SQL.Text := 'select CODIGOREDUZIDO from PRODUTO where CODIGOREDUZIDO = :CODIGOREDUZIDO';
      Query.ParamByName('CODIGOREDUZIDO').AsAnsiString := Text;
      Query.Open;
      if not Query.Fields[0].IsNull then
        S := Query.Fields[0].AsAnsiString
      else begin
        Query.Close;
        Query.SQL.Text := 'select CODIGOREDUZIDO, NOEMBALAGEM from PRODUTOEMB where CODIGOBARRAS = :CODIGOBARRAS';
        Query.ParamByName('CODIGOBARRAS').AsAnsiString := Text;
        Query.Open;
        if not Query.Fields[0].IsNull then begin
          S := Query.Fields[0].AsAnsiString;
          EmbalagemCompra := Query.Fields[1].AsInteger;
        end
        else begin
          Query.Close;
          Query.SQL.Text := 'select CODIGOREDUZIDO from PRODUTO where CODIGOESTRUTURADO = :CODIGOESTRUTURADO';
          Query.ParamByName('CODIGOESTRUTURADO').AsAnsiString := Text;
          Query.Open;
          if not Query.Fields[0].IsNull then
             S := Query.Fields[0].AsAnsiString
          else begin
            Query.Close;
            Query.SQL.Text := 'select CODIGOREDUZIDO from FORNPROD where upper(CODFORNECED) = :CODFORNECED';
            Query.ParamByName('CODFORNECED').AsAnsiString := uppercase(Text);
            Query.Open;
            if Query.RecordCount = 1 then
              S := Query.Fields[0].AsAnsiString
            else begin
              if Query.RecordCount > 1 then begin
                with TSelProdFornForm.Create(Self) do
                  try
                    K := CodigoProdutoEdit.Text;
                    ShowModal;
                    if ModalResult = mrOk then
                      S := qrProdutosCODIGOREDUZIDO.Value;
                  finally
                    Free;
                  end;
              end
              else
              if not Ifen then
              begin
                Query.Close;
                Query.SQL.Text := 'select CODIGOREDUZIDO from FORNPROD where upper(CODFORNECED) = :CODFORNECED';
                Query.ParamByName('CODFORNECED').AsAnsiString := uppercase(Text);
                Query.Open;
                if Query.RecordCount = 1 then
                  S := Query.Fields[0].AsAnsiString
                else
                  if Query.RecordCount > 1 then begin
                    with TselProdFornForm.Create(Self) do
                      Try
                        K := CodigoProdutoEdit.Text;
                        ShowModal;
                        if ModalResult = mrOk then
                          S := qrProdutosCODIGOREDUZIDO.Value;
                      finally
                        Free;
                      end;
                  end
                  else
                     S := uutil_geral.FormataAutoCodigo(dtmConnec.DBConnec, Text, False);
              end;
            end;
          end;
        end;
      end;
    end;
  end;
  if Ifen then
  begin
    S := uutil_geral.FormataAutoCodigo(dtmConnec.DBConnec, Copy(Text, 1, Pos('-', S) - 1), True);
    Delete(S, Pos('-', S) + 1, 1);
    Insert(Digito, S, Pos('-', S) + 1);
  end;
  Sender.Value := S;
end;

procedure TLancamentoEntradaDEForm.qrItensCODIGOREDUZIDOValidate(Sender: TField);
var
  idx: Integer;
  CfopProduto, CFOP: String;
  PICMS,
  PTributado,
  PNaoTributado,
  PIsento,
  POutros,
  PMargemSubst,
  PSubst,
  Frete: Double;
  Situacao: Integer;
  Obs: string;
  TribEfetiva: Double;
  RSimples, RConsumidor: String;
begin
  inherited;
  if (qrItensCODIGOREDUZIDO.IsNull) or (qrItensCODIGOREDUZIDO.Value = '') then Exit;

  qrValidate.Close;
  qrValidate.SQL.Text := 'select PRODUTO.CODIGOREDUZIDO, PRODUTO.IPI, PRODUTO.CLASSIFICACAOICMS, PRODUTO.CLASSIFICACAOPISCOFINS, PRODUTO.NOME, '+
                         ' PRODUTO.NOCATEGORIA, PRODUTO.NOEMBALAGEMVENDA, PRODUTO.CFOPVENDA, PRODUTO.CFOPDEV, PRODUTO.CLASSIFICACAOIPI, PRODUTO.PPB, '+
                         ' PRODUTO.SUFRAMA, PRODUTO.OBSPPB, PRODUTO.CONTROLARNROSERIE, PRODUTO.NOOBSERVACAO, PRODUTO.GARANTIA, PRODUTO.GARANTIAVENDA, '+
                         ' PRODUTO.IPIVENDA, PRODUTO.BLOQUEADO, PRODUTO.CODIGODIFICMS, PRODUTO.ORIGEM, FORNPROD.CODFORNECED, PRODUTO.IMPOSTOIMPORTACAO, '+
                         ' PRODUTO.IPI, PRODUTO.PMARKUPVENDA '+
                         ' from PRODUTO '+
                         'left join FORNPROD on FORNPROD.CODIGOREDUZIDO = PRODUTO.CODIGOREDUZIDO and FORNPROD.NOFORNECEDOR = :NOFORNECEDOR '+
                         ' where PRODUTO.CODIGOREDUZIDO = :CODIGOREDUZIDO ';
  qrValidate.ParamByName('CODIGOREDUZIDO').AsString := qrItensCODIGOREDUZIDO.AsString;
  qrValidate.ParamByName('NOFORNECEDOR').AsInteger := TableNOFORNECEDOR.AsInteger;
  qrValidate.Open;
  if ((not qrValidate.Fields[0].IsNull) and (qrValidate.FieldByName('BLOQUEADO').AsAnsiString = 'F')) then
  begin
    if not (qrItens.State in dsEditModes) then qrItens.Edit;
    Inserindo := True;
    qrItensNOME.Value := qrValidate.FieldByname('NOME').AsString;
    qrItensIPIVENDA.Value := qrValidate.FieldByname('IPIVENDA').AsCurrency;
    qrItensCLASSIFICACAOICMS.Value := qrValidate.FieldByName('CLASSIFICACAOICMS').AsString;
    qrItensORIGEM.Value := qrValidate.FieldByName('ORIGEM').AsString;
    qrItensCODIGODIFICMS.Value := qrValidate.FieldByName('CODIGODIFICMS').AsInteger;
    qrItensNOEMBALAGEMVENDA.AsInteger := qrValidate.FieldByName('NOEMBALAGEMVENDA').AsInteger;
    qrItensPMARKUP.AsCurrency := qrValidate.FieldByName('PMARKUPVENDA').AsCurrency;
    qrItensPII.AsCurrency := qrValidate.FieldByName('IMPOSTOIMPORTACAO').AsCurrency;
    qrItensIPI.AsCurrency := qrValidate.FieldByName('IPI').AsCurrency;
    qrItensPPIS.AsCurrency := 2.5;
    qrItensPCOFINS.AsCurrency := 9.65;

    if qrValidate.FieldByName('CODFORNECED').Value > ' ' then
      qrItensCODIGOIMPORTADOR.Value :=   qrValidate.FieldByName('CODFORNECED').Value;
    if qrValidate.FieldByName('OBSPPB').AsAnsiString > ' ' then
      qrItensOBSPPB.Value := qrValidate.FieldByName('OBSPPB').AsAnsiString
    else
    begin
      qrAux.Close;
      qrAux.Sql.Text := 'select TEXTO from OBSERVACAO where NOOBSERVACAO = :NOOBSERVACAO';
      qrAux.ParamByName('NOOBSERVACAO').AsInteger := qrValidate.FieldByName('NOOBSERVACAO').AsInteger;
      qrAux.Open;
      qrItensOBSPPB.Value := qrAux.FieldByName('TEXTO').AsString;
    end;
    qrItensSUFRAMA.Value := qrValidate.FieldByName('SUFRAMA').AsString;
    qrItensORIGEM.Value := qrValidate.FieldByName('ORIGEM').AsString;
    if ((qrValidate.FieldByName('PPB').AsString = 'T') or (qrValidate.FieldByName('SUFRAMA').AsAnsiString = 'T')) then
      qrItensPPB.Value := 'T'
    else
      qrItensPPB.Value := 'F';
    qrItensIPI.AsCurrency := qrValidate.FieldByname('IPI').AsCurrency;

    if not uutil_venda.TBuscaICMS.BuscaICMS2(DtmConnec.DbConnec, iif(TableTipo.Value = 'I', dtmConnec.Empresa.Estado, TableESTADO.AsString), dtmConnec.Empresa.Estado,
           qrItensCLASSIFICACAOICMS.Value, TableCONTRIBUINTE.Value, 'F', 'F',
           qrItensORIGEM.Value, 1, PICMS,
           PTributado, PNaoTributado, PIsento, POutros, PMargemSubst, PSubst, TribEfetiva, Situacao, Frete, Obs, RSimples, RConsumidor) then
           raise Exception.Create('Não foi possível determinar os parâmetros para o cálculo do ICMS!');

//    qrItensALIQICMFRETE.Value  := Frete;
//    qrItensTRIBUTADO.Value     := PTributado;
//    qrItensNAOTRIBUTADO.Value  := PNaoTributado;
//    qrItensISENTO.Value        := PIsento;
//    qrItensOUTROS.Value        := POutros;
//    qrItensSITTRIBU.Value      := Situacao;
    qrItensICMS.Value          := PICMS;
    qrItensICMSEFETIVO.Value   := TribEfetiva;
//    qrItensMARGEMSUBST.Value   := PMargemSubst;
//    qrItensALIQSUBST.Value     := PSubst;
    qrItensCLASSIFICACAOIPI.Value  := qrValidate.FieldByName('CLASSIFICACAOIPI').AsString;
    qrItensPISCOFINS.Value := PISCOFINS;
    qrItensVALORPISCOFINS.Value := 0;
    qrItensVALORICMS.Value := 0;
    qrItensFOBTOTAL.Value := 0;
    qrItensDESCONTOACRESCIMO.Value := 0;
    qrItensFATOR.Value := 0;
    qrItensTOTALVENDA.Value := 0;
    qrItensPMINIMO.Value := 0;
    qrItensCUSTOMEDIO.Value := 0;
    qrItensBASECALCULOICMS.Value := 0;
    Query.Close;
    Query.SQL.Text := 'select (CUSTOMEDIOGER/100000000) CUSTOMEDIOGER '+
                      '  from MERCDEPOSITO where NOEMPRESA = :NOEMPRESA '+
                      '   and NODEPOSITO = :NODEPOSITO '+
                      '   and CODIGOREDUZIDO = :CODIGOREDUZIDO';
    Query.ParamByName('NOEMPRESA').AsInteger := dtmConnec.Empresa.Codigo;
    Query.ParamByName('NODEPOSITO').AsInteger := qrItensNODEPOSITO.Value;
    Query.ParamByName('CODIGOREDUZIDO').AsString := qrItensCODIGOREDUZIDO.Value;
    Query.Open;
    qrItensCUSTOMEDIO.Value := Query.FieldByName('CUSTOMEDIOGER').AsCurrency;
    qrItensCUSTOLIQUIDO.AsCurrency := Query.FieldByName('CUSTOMEDIOGER').AsCurrency;
    qrItensQUANTIDADE.Value := 1;
    Inserindo := False;
  end
  else
    raise Exception.Create('Produto bloqueado ou não cadastrado!');
end;

procedure TLancamentoEntradaDEForm.qrItensCREDITOPRESUMIDOValidate(
  Sender: TField);
begin
  inherited;
  if not FRecalculandoItem then
    RecalcularValoresItem;
end;

procedure TLancamentoEntradaDEForm.qrItensDESCONTOACRESCIMOChange(
  Sender: TField);
begin
  inherited;
  if not FRecalculandoItem then
    RecalcularValoresItem;
end;

procedure TLancamentoEntradaDEForm.qrItensFOBChange(Sender: TField);
begin
  inherited;
  if not FRecalculandoItem then
    RecalcularValoresItem;
end;

procedure TLancamentoEntradaDEForm.qrItensICMSValidate(Sender: TField);
begin
  inherited;
  if not FRecalculandoItem then
    RecalcularValoresItem;
end;

procedure TLancamentoEntradaDEForm.qrItensNewRecord(DataSet: TDataSet);
begin
  inherited;
  Inc(NoItem);
  qrItensNOEMPRESA.Value    := TableNOEMPRESA.Value;
  qrItensITEM.Value         := NoItem;
  qrItensNODEPOSITO.Value   := TableNODEPOSITO.Value;
  qrItensNOFORNECEDOR.Value := TableNOFORNECEDOR.Value;
  qrItensNONOTA.Value       := TableNONOTA.Value;
  qrItensNOPEDIDO.Value     := TableNOPEDIDO.Value;
end;

procedure TLancamentoEntradaDEForm.qrItensPCOFINSValidate(Sender: TField);
begin
  inherited;
  if not FRecalculandoItem then
    RecalcularValoresItem;
end;

procedure TLancamentoEntradaDEForm.qrItensPIIValidate(Sender: TField);
begin
  inherited;
  if not FRecalculandoItem then
    RecalcularValoresItem;
end;

procedure TLancamentoEntradaDEForm.qrItensPMINIMOValidate(Sender: TField);
begin
  inherited;
  if not FRecalculandoItem then
    RecalcularValoresItem;
end;

procedure TLancamentoEntradaDEForm.qrItensPPBValidate(Sender: TField);
begin
  inherited;
  if not FRecalculandoItem then
    RecalcularValoresItem;
end;

procedure TLancamentoEntradaDEForm.qrItensPPISValidate(Sender: TField);
begin
  inherited;
  if not FRecalculandoItem then
    RecalcularValoresItem;
end;

procedure TLancamentoEntradaDEForm.qrItensPRECOMINIMOValidate(Sender: TField);
begin
  inherited;
  if not FRecalculandoItem then
    RecalcularValoresItem;
end;

procedure TLancamentoEntradaDEForm.qrItensQUANTIDADEChange(Sender: TField);
begin
  inherited;
  if not FRecalculandoItem then
    RecalcularValoresItem;
end;

procedure TLancamentoEntradaDEForm.qrItensVALORCOFINSValidate(Sender: TField);
begin
  inherited;
  if not FRecalculandoItem then
    RecalcularValoresItem;
end;

//procedure TLancamentoEntradaDEForm.RecalcularValoresItem;
//  function PercentToFrac(const V: Currency): Currency;
//  begin
//    if V > 1 then
//      Result := V / 100
//    else
//      Result := V;
//  end;
//
//var
//  // Custos
//  CustoLiquidoUnit : Currency;
//  CustoSemImpostos : Currency;
//  CustoUnitarioTotal: Currency;
//  CustoTotal       : Currency;
//
//  // Valores para cálculo
//  DolarDI          : Currency;
//  FOBUnitario      : Currency;
//  FOBTotal         : Currency;
//
//  // Valores do cabeçalho para rateio
//  TotalFOBNota     : Currency;
//  DespesasAduaneiras: Currency;
//
//  // Rateios e base de cálculo
//  RateioDespesas   : Currency;
//  ValorAduaneiro   : Currency;
//
//  // Alíquotas
//  AliqII           : Currency;
//  AliqIPI          : Currency;
//  AliqIPIVenda     : Currency;
//  AliqPIS          : Currency;
//  AliqCOFINS       : Currency;
//  AliqICMS         : Currency;
//  AliqICMSEfetivo  : Currency;
//  AliqPisCofins    : Currency;
//
//  // Impostos da DI
//  ValorII          : Currency;
//  BaseIPI_DI       : Currency;
//  ValorIPI_DI      : Currency;
//  ValorPIS_DI      : Currency;
//  ValorCOFINS_DI   : Currency;
//
//  // Consolidação (idéia do otimizado)
//  TotalImpostosDI  : Currency;
//
//  // Impostos creditáveis
//  ImpostosCreditaveis: Currency;
//
//  // Valores de venda
//  PrecoVendaUnit   : Currency;
//  PrecoVendaTotal  : Currency;
//  BaseICMSVenda    : Currency;
//  ValorIPIVenda    : Currency;
//  ValorICMSVenda   : Currency;
//  ValorPISCOFINSVenda: Currency;
//
//  // Margem
//  MargemBruta      : Currency;
//
//  // Preços mínimos
//  PrecoMinimoPSD   : Currency;
//  PrecoMinimoDPP   : Currency;
//
//begin
//  if FRecalculandoItem then Exit;
//  if Inserindo then Exit;
//  if qrItens.IsEmpty then Exit;
//  if not qrItens.Active then Exit;
//  if qrItensQUANTIDADE.AsCurrency <= 0 then Exit;
//
//  FRecalculandoItem := True;
//  try
//    // ===== VALORES BÁSICOS =====
//    FOBUnitario := qrItensFOB.AsCurrency;
//    FOBTotal := qrItensQUANTIDADE.AsCurrency * FOBUnitario;
//    qrItensFOBTOTAL.AsCurrency := FOBTotal;
//
//    DolarDI := TableDOLARDI.AsCurrency;
//    if DolarDI <= 0 then DolarDI := 1;
//
//    // Carregar alíquotas
//    AliqII := PercentToFrac(qrItensPII.AsCurrency);
//    AliqPIS := PercentToFrac(qrItensPPIS.AsCurrency);
//    AliqCOFINS := PercentToFrac(qrItensPCOFINS.AsCurrency);
//    AliqPisCofins := PercentToFrac(qrItensPISCOFINS.AsCurrency);
//    AliqIPI := PercentToFrac(qrItensIPI.AsCurrency);
//    AliqIPIVenda := PercentToFrac(qrItensIPIVENDA.AsCurrency);
//    AliqICMS := PercentToFrac(qrItensICMS.AsCurrency);
//
//    AliqICMSEfetivo := PercentToFrac(qrItensICMSEFETIVO.AsCurrency);
//    if AliqICMSEfetivo = 0 then
//    begin
//      // Se ICMS = 4%, ICMSEfetivo = 1.4%, senão 2.5%
//      if AliqICMS = 0.04 then
//        AliqICMSEfetivo := 0.014
//      else
//        AliqICMSEfetivo := 0.025;
//    end;
//
//    // ========================= NACIONAL =========================
//    if TableTIPO.AsString = 'N' then
//    begin
//      CustoLiquidoUnit := qrItensCUSTOLIQUIDO.AsCurrency;
//
//      CustoSemImpostos := CustoLiquidoUnit;
//      qrItensCUSTOMEDIO.AsCurrency := CustoSemImpostos;
//
//      PrecoMinimoPSD := CustoSemImpostos * 2;
//      PrecoMinimoDPP := CustoSemImpostos * 1.5;
//      qrItensPRECOMINIMO.AsCurrency := PrecoMinimoPSD;
//      qrItensPMINIMO.AsCurrency := PrecoMinimoDPP;
//
//      if qrItensPRECOVENDA.AsCurrency > 0 then
//        PrecoVendaUnit := qrItensPRECOVENDA.AsCurrency
//      else
//        PrecoVendaUnit := PrecoMinimoDPP;
//
//      PrecoVendaTotal := qrItensQUANTIDADE.AsCurrency * PrecoVendaUnit;
//      qrItensTOTALVENDA.AsCurrency := PrecoVendaTotal;
//      qrItensTOTALVALORNF.AsCurrency := PrecoVendaTotal;
//
//      BaseICMSVenda := PrecoVendaTotal;
//      ValorIPIVenda := BaseICMSVenda * AliqIPI;
//      ValorICMSVenda := BaseICMSVenda * AliqICMS;
//      ValorPISCOFINSVenda := BaseICMSVenda * AliqPisCofins;
//
//      qrItensVALORIPI.AsCurrency := ValorIPIVenda;
//      qrItensVALORICMS.AsCurrency := ValorICMSVenda;
//      qrItensVALORPISCOFINS.AsCurrency := ValorPISCOFINSVenda;
//      qrItensBASECALCULOICMS.AsCurrency := BaseICMSVenda;
//
//      CustoTotal := qrItensQUANTIDADE.AsCurrency * CustoSemImpostos;
//      MargemBruta := PrecoVendaTotal - CustoTotal - ValorIPIVenda - ValorICMSVenda - ValorPISCOFINSVenda;
//      qrItensMARGEMMINIMA.AsCurrency := MargemBruta;
//    end
//    // ========================= IMPORTADO =========================
//    else
//    begin
//      // ===== 1. VALOR ADUANEIRO =====
//      TotalFOBNota := TableFOBTOTAL.AsCurrency;
//      if TotalFOBNota = 0 then TotalFOBNota := 1;
//
//      DespesasAduaneiras := TableVALORADUANEIRO.AsCurrency;
//
//      // Converter FOB para reais
//      FOBTotal := qrItensQUANTIDADE.AsCurrency * FOBUnitario * DolarDI;
//
//      // Rateios proporcionais
//      RateioDespesas := (DespesasAduaneiras * FOBTotal) / TotalFOBNota;
//
//      // Valor Aduaneiro
//      ValorAduaneiro := FOBTotal + RateioDespesas;
//      qrItensVALORADUANEIRO.AsCurrency := ValorAduaneiro;
//
//      // ===== 2. IMPOSTOS DA DI =====
//
//      // II (sobre Valor Aduaneiro)
//      ValorII := ValorAduaneiro * AliqII;
//      qrItensVALORII.AsCurrency := ValorII;
//
//      // Base IPI = VA + II
//      BaseIPI_DI := ValorAduaneiro + ValorII;
//
//      // IPI DI
//      ValorIPI_DI := BaseIPI_DI * AliqIPI;
//      qrItensVALORIPI.AsCurrency := ValorIPI_DI;
//
//      // PIS DI (Base = Valor Aduaneiro)
//      ValorPIS_DI := ValorAduaneiro * AliqPIS;
//      qrItensVALORPIS.AsCurrency := ValorPIS_DI;
//
//      // COFINS DI (Base = Valor Aduaneiro)
//      ValorCOFINS_DI := ValorAduaneiro * AliqCOFINS;
//      qrItensVALORCOFINS.AsCurrency := ValorCOFINS_DI;
//
//      // Consolidação dos impostos da DI
//      TotalImpostosDI := ValorIPI_DI + ValorPIS_DI + ValorCOFINS_DI;
//
//      // ===== 3. CUSTO TOTAL =====
//      CustoTotal := ValorAduaneiro + ValorII + TotalImpostosDI;
//
//      CustoUnitarioTotal := CustoTotal / qrItensQUANTIDADE.AsCurrency;
//      qrItensCUSTOBRUTO.AsCurrency := CustoUnitarioTotal;
//
//      // ===== 4. IMPOSTOS CREDITÁVEIS =====
//      ImpostosCreditaveis := (ValorPIS_DI + ValorCOFINS_DI + ValorIPI_DI) / qrItensQUANTIDADE.AsCurrency;
//
//      // Custo sem impostos creditáveis
//      CustoSemImpostos := CustoUnitarioTotal - ImpostosCreditaveis;
//      qrItensCUSTOMEDIO.AsCurrency := CustoSemImpostos;
//      qrItensCUSTOLIQUIDO.AsCurrency := CustoSemImpostos;
//
//      // ===== 5. PREÇOS DE REFERÊNCIA =====
//      PrecoMinimoPSD := CustoSemImpostos * 2;
//      PrecoMinimoDPP := CustoSemImpostos * 1.5;
//      qrItensPRECOMINIMO.AsCurrency := PrecoMinimoPSD;
//      qrItensPMINIMO.AsCurrency := PrecoMinimoDPP;
//
//      // ===== 6. PREÇO DE VENDA =====
//      if qrItensPRECOVENDA.AsCurrency > 0 then
//        PrecoVendaUnit := qrItensPRECOVENDA.AsCurrency
//      else
//      begin
//        PrecoVendaUnit := CustoSemImpostos * 1.478;
//        qrItensPRECOVENDA.AsCurrency := PrecoVendaUnit;
//      end;
//
//      PrecoVendaTotal := qrItensQUANTIDADE.AsCurrency * PrecoVendaUnit;
//      qrItensTOTALVENDA.AsCurrency := PrecoVendaTotal;
//      qrItensTOTALVALORNF.AsCurrency := PrecoVendaTotal;
//
//      // ===== 7. IMPOSTOS SOBRE A VENDA =====
//
//      // Base ICMS = Preço sem IPI (por fora)
//      BaseICMSVenda := PrecoVendaUnit / (1 + AliqIPIVenda);
//      qrItensBASECALCULOICMS.AsCurrency := BaseICMSVenda * qrItensQUANTIDADE.AsCurrency;
//
//      // ICMS sobre a venda
//      ValorICMSVenda := BaseICMSVenda * AliqICMS * qrItensQUANTIDADE.AsCurrency;
//      qrItensVALORICMS.AsCurrency := ValorICMSVenda;
//
//      // PIS/COFINS sobre a venda
//      ValorPISCOFINSVenda := BaseICMSVenda * AliqPisCofins * qrItensQUANTIDADE.AsCurrency;
//      qrItensVALORPISCOFINS.AsCurrency := ValorPISCOFINSVenda;
//
//      // IPI sobre a venda
//      ValorIPIVenda := BaseICMSVenda * AliqIPIVenda * qrItensQUANTIDADE.AsCurrency;
//      qrItensVALORIPIVENDA.AsCurrency := ValorIPIVenda;
//
//      // ===== 8. MARGEM BRUTA =====
//      MargemBruta := PrecoVendaTotal
//                     - (CustoSemImpostos * qrItensQUANTIDADE.AsCurrency)
//                     - ValorIPIVenda
//                     - ValorICMSVenda
//                     - ValorPISCOFINSVenda;
//      qrItensMARGEMMINIMA.AsCurrency := MargemBruta;
//
//      // ===== 9. CRÉDITO PRESUMIDO =====
//      // Crédito Presumido = (ICMS - ICMSEfetivo) × Base Total
//      qrItensCREDITOPRESUMIDO.AsCurrency := (AliqICMS - AliqICMSEfetivo) * (BaseICMSVenda * qrItensQUANTIDADE.AsCurrency);
//
//      // IRPJ = CredPres × 34%
//      qrItensIRJPCREDITOPRESUMIDO.AsCurrency := qrItensCREDITOPRESUMIDO.AsCurrency * 0.34;
//
//      // ===== 10. INDICADORES =====
//
//      // Percentual de margem
//      if PrecoVendaTotal > 0 then
//        qrItensPMINIMO.AsCurrency := (MargemBruta / PrecoVendaTotal) * 100
//      else
//        qrItensPMINIMO.AsCurrency := 0;
//
//      // Fator de markup
//      if CustoSemImpostos > 0 then
//        qrItensFATOR.AsCurrency := PrecoVendaUnit / CustoSemImpostos
//      else
//        qrItensFATOR.AsCurrency := 0;
//    end;
//  finally
//    FRecalculandoItem := False;
//  end;
//end;

procedure TLancamentoEntradaDEForm.RecalcularValoresItem;
{
  BASE: Planilha "Simulação Fator Importação NUC Asus (William)"
  Fórmulas corretas para Preço Mínimo e % Mínimo
}
  function PercentToFrac(const V: Currency): Currency;
  begin
    if V > 1 then
      Result := V / 100
    else
      Result := V;
  end;

var
  // Custos
  CustoLiquidoUnit : Currency;
  CustoSemImpostos : Currency;
  CustoUnitarioTotal: Currency;
  CustoTotal       : Currency;

  // Valores para cálculo
  DolarDI          : Currency;
  FOBUnitario      : Currency;
  FOBTotal         : Currency;

  // Valores do cabeçalho para rateio
  TotalFOBNota     : Currency;
  DespesasAduaneiras: Currency;

  // Rateios e base de cálculo
  RateioDespesas   : Currency;
  ValorAduaneiro   : Currency;

  // Alíquotas
  AliqII           : Currency;
  AliqIPI          : Currency;
  AliqIPIVenda     : Currency;
  AliqPIS          : Currency;
  AliqCOFINS       : Currency;
  AliqICMS         : Currency;
  AliqICMSEfetivo  : Currency;
  AliqPisCofins    : Currency;

  // Impostos da DI
  ValorII          : Currency;
  BaseIPI_DI       : Currency;
  ValorIPI_DI      : Currency;
  ValorPIS_DI      : Currency;
  ValorCOFINS_DI   : Currency;
  TotalImpostosDI  : Currency;

  // Impostos creditáveis
  ImpostosCreditaveis: Currency;

  // Valores de venda
  PrecoVendaUnit   : Currency;
  PrecoVendaTotal  : Currency;
  BaseICMSVendaTotal: Currency;
  ValorNF          : Currency;
  ValorIPIVenda    : Currency;
  ValorICMSVenda   : Currency;
  ValorPISCOFINSVenda: Currency;

  // Margem
  MargemBruta      : Currency;
  PercentualMargem : Currency;

  // Preços mínimos (segundo planilha)
  BE, BF, BG, BH, BI, BJ, BK, BL, Markup: Currency;
  PrecoMinimoPSD   : Currency;
  PrecoMinimoDPP   : Currency;
  PrecoMinimoReferencia: Currency;

begin
  if FRecalculandoItem then Exit;
  if Inserindo then Exit;
  if qrItens.IsEmpty then Exit;
  if not qrItens.Active then Exit;
  if qrItensQUANTIDADE.AsCurrency <= 0 then Exit;

  FRecalculandoItem := True;
  try
    // ===== VALORES BÁSICOS =====
    FOBUnitario := qrItensFOB.AsCurrency;
    FOBTotal := qrItensQUANTIDADE.AsCurrency * FOBUnitario;
    qrItensFOBTOTAL.AsCurrency := FOBTotal;

    DolarDI := TableDOLARDI.AsCurrency;
    if DolarDI <= 0 then DolarDI := 1;

    // Carregar alíquotas
    AliqII := PercentToFrac(qrItensPII.AsCurrency);
    AliqPIS := PercentToFrac(qrItensPPIS.AsCurrency);
    AliqCOFINS := PercentToFrac(qrItensPCOFINS.AsCurrency);
    AliqPisCofins := PercentToFrac(qrItensPISCOFINS.AsCurrency);
    AliqIPI := PercentToFrac(qrItensIPI.AsCurrency);
    AliqIPIVenda := PercentToFrac(qrItensIPIVENDA.AsCurrency);
    AliqICMS := PercentToFrac(qrItensICMS.AsCurrency);

    AliqICMSEfetivo := PercentToFrac(qrItensICMSEFETIVO.AsCurrency);
    if AliqICMSEfetivo = 0 then
    begin
      if AliqICMS = 0.04 then
        AliqICMSEfetivo := 0.014
      else
        AliqICMSEfetivo := 0.025;
    end;

    // ========================= NACIONAL =========================
    if TableTIPO.AsString = 'N' then
    begin
      CustoLiquidoUnit := qrItensCUSTOLIQUIDO.AsCurrency;
      CustoSemImpostos := CustoLiquidoUnit;
      qrItensCUSTOMEDIO.AsCurrency := CustoSemImpostos;

      PrecoMinimoPSD := CustoSemImpostos * 2;
      PrecoMinimoDPP := CustoSemImpostos * 1.5;
      PrecoMinimoReferencia := qrItensPRECOMINIMO.AsCurrency;
      if PrecoMinimoReferencia <= 0 then
      begin
        PrecoMinimoReferencia := PrecoMinimoPSD;
        qrItensPRECOMINIMO.AsCurrency := PrecoMinimoReferencia;
      end;
      qrItensPMINIMO.AsCurrency := PrecoMinimoDPP;

      if qrItensPRECOVENDA.AsCurrency > 0 then
        PrecoVendaUnit := qrItensPRECOVENDA.AsCurrency
      else if PrecoMinimoReferencia > 0 then
        PrecoVendaUnit := PrecoMinimoReferencia
      else
        PrecoVendaUnit := PrecoMinimoDPP;

      if (PrecoMinimoReferencia > 0) and (PrecoVendaUnit < PrecoMinimoReferencia) then
      begin
        PrecoVendaUnit := PrecoMinimoReferencia;
        qrItensPRECOVENDA.AsCurrency := PrecoVendaUnit;
        Application.MessageBox('Valor unitário abaixo do preço mínimo. Ajustado automaticamente.', 'Aviso',
          MB_OK + MB_ICONWARNING);
      end;

      PrecoVendaTotal := qrItensQUANTIDADE.AsCurrency * PrecoVendaUnit;
      qrItensTOTALVENDA.AsCurrency := PrecoVendaTotal;
      qrItensTOTALVALORNF.AsCurrency := PrecoVendaTotal;

      BaseICMSVendaTotal := PrecoVendaTotal;
      ValorIPIVenda := BaseICMSVendaTotal * AliqIPI;
      ValorICMSVenda := BaseICMSVendaTotal * AliqICMS;
      ValorPISCOFINSVenda := BaseICMSVendaTotal * AliqPisCofins;

      qrItensVALORIPI.AsCurrency := ValorIPIVenda;
      qrItensVALORICMS.AsCurrency := ValorICMSVenda;
      qrItensVALORPISCOFINS.AsCurrency := ValorPISCOFINSVenda;
      qrItensBASECALCULOICMS.AsCurrency := BaseICMSVendaTotal;

      CustoTotal := qrItensQUANTIDADE.AsCurrency * CustoSemImpostos;
      MargemBruta := PrecoVendaTotal - CustoTotal - ValorIPIVenda - ValorICMSVenda - ValorPISCOFINSVenda;
      qrItensMARGEMMINIMA.AsCurrency := MargemBruta;
    end
    // ========================= IMPORTADO =========================
    else
    begin
      // ===== 1. VALOR ADUANEIRO =====
      TotalFOBNota := TableFOBTOTAL.AsCurrency;
      if TotalFOBNota = 0 then TotalFOBNota := 1;

      DespesasAduaneiras := TableVALORADUANEIRO.AsCurrency;

      // Converter FOB para reais
      FOBTotal := qrItensQUANTIDADE.AsCurrency * FOBUnitario * DolarDI;

      // Rateios proporcionais
      RateioDespesas := (DespesasAduaneiras * FOBTotal) / TotalFOBNota;

      // Valor Aduaneiro
      ValorAduaneiro := FOBTotal + RateioDespesas;
      qrItensVALORADUANEIRO.AsCurrency := ValorAduaneiro;

      // ===== 2. IMPOSTOS DA DI =====

      // II (sobre Valor Aduaneiro)
      ValorII := ValorAduaneiro * AliqII;
      qrItensVALORII.AsCurrency := ValorII;

      // Base IPI = VA + II
      BaseIPI_DI := ValorAduaneiro + ValorII;

      // IPI DI
      ValorIPI_DI := BaseIPI_DI * AliqIPI;
      qrItensVALORIPI.AsCurrency := ValorIPI_DI;

      // PIS DI (Base = Valor Aduaneiro)
      ValorPIS_DI := ValorAduaneiro * AliqPIS;
      qrItensVALORPIS.AsCurrency := ValorPIS_DI;

      // COFINS DI (Base = Valor Aduaneiro)
      ValorCOFINS_DI := ValorAduaneiro * AliqCOFINS;
      qrItensVALORCOFINS.AsCurrency := ValorCOFINS_DI;

      // Consolidação dos impostos da DI
      TotalImpostosDI := ValorIPI_DI + ValorPIS_DI + ValorCOFINS_DI;

      // ===== 3. CUSTO TOTAL =====
      CustoTotal := ValorAduaneiro + ValorII + TotalImpostosDI;

      CustoUnitarioTotal := CustoTotal / qrItensQUANTIDADE.AsCurrency;
      qrItensCUSTOBRUTO.AsCurrency := CustoUnitarioTotal;

      // ===== 4. IMPOSTOS CREDITÁVEIS =====
      ImpostosCreditaveis := (ValorPIS_DI + ValorCOFINS_DI + ValorIPI_DI) / qrItensQUANTIDADE.AsCurrency;

      // Custo sem impostos creditáveis
      CustoSemImpostos := CustoUnitarioTotal - ImpostosCreditaveis;
      qrItensCUSTOMEDIO.AsCurrency := CustoSemImpostos;
      qrItensCUSTOLIQUIDO.AsCurrency := CustoSemImpostos;

      // ===== 5. CÁLCULO DO PREÇO MÍNIMO (SEGUNDO PLANILHA) =====

      // Passo 1: IPI convertido para base "por dentro"
      BE := ((100-(100/(1+AliqIPIVenda)))/100);

      // Passo 2: Markup bruto
      BF := ((100/(1-(AliqPisCofins + AliqICMSEfetivo + BE)))-100)/100;

      // Passo 3: Preço base com markup
      BG := 100 * (1 + BF);

      // Passo 4: Base sem IPI
      BH := BG / (1 + AliqIPIVenda);

      // Passo 5: Impostos individuais
      BI := BH * AliqICMSEfetivo;   // ICMS
      BJ := BH * AliqPisCofins;     // PIS/COFINS
      BK := BG - BH;                // IPI

      // Passo 6: Margem líquida
      BL := BG - 100 - BI - BJ - BK;

      // Passo 7: Markup ajustado final
      Markup := ((BG/((100+BL)/100))-100)/100;

      // Passo 8: Preço Mínimo
      PrecoMinimoPSD := CustoSemImpostos * (1 + Markup);
      PrecoMinimoDPP := CustoSemImpostos * 1.5;

      PrecoMinimoReferencia := qrItensPRECOMINIMO.AsCurrency;
      if PrecoMinimoReferencia <= 0 then
      begin
        PrecoMinimoReferencia := PrecoMinimoPSD;
        qrItensPRECOMINIMO.AsCurrency := PrecoMinimoReferencia;
      end;
      qrItensPMINIMO.AsCurrency := PrecoMinimoDPP;

      // ===== 6. PREÇO DE VENDA =====
      Markup := PercentToFrac(qrItensPMARKUP.AsCurrency);
      if qrItensPRECOVENDA.AsCurrency > 0 then
      begin
        // Usuário digitou preço manualmente
        PrecoVendaUnit := qrItensPRECOVENDA.AsCurrency;
      end
      else if PrecoMinimoReferencia > 0 then
      begin
        PrecoVendaUnit := PrecoMinimoReferencia;
        qrItensPRECOVENDA.AsCurrency := PrecoVendaUnit;
      end
      else
      begin
        PrecoVendaUnit := PrecoMinimoPSD;
        qrItensPRECOVENDA.AsCurrency := PrecoVendaUnit;
      end;

      if (PrecoMinimoReferencia > 0) and (PrecoVendaUnit < PrecoMinimoReferencia) then
      begin
        PrecoVendaUnit := PrecoMinimoReferencia;
        qrItensPRECOVENDA.AsCurrency := PrecoVendaUnit;
        Application.MessageBox('Valor unitário abaixo do preço mínimo. Ajustado automaticamente.', 'Aviso',
          MB_OK + MB_ICONWARNING);
      end;

      PrecoVendaTotal := qrItensQUANTIDADE.AsCurrency * PrecoVendaUnit;
      qrItensTOTALVENDA.AsCurrency := PrecoVendaTotal;
      qrItensTOTALVALORNF.AsCurrency := PrecoVendaTotal;

      // ===== 7. IMPOSTOS SOBRE A VENDA =====

      ValorNF := PrecoVendaTotal;
      ValorIPIVenda := (ValorNF / (1 + AliqIPIVenda)) * AliqIPIVenda;
      BaseICMSVendaTotal := ValorNF - ValorIPIVenda;
      qrItensBASECALCULOICMS.AsCurrency := BaseICMSVendaTotal;

      // ICMS sobre a venda (usa alíquota cheia para nota fiscal)
      ValorICMSVenda := BaseICMSVendaTotal * AliqICMS;
      qrItensVALORICMS.AsCurrency := ValorICMSVenda;

      // PIS/COFINS sobre a venda
      ValorPISCOFINSVenda := BaseICMSVendaTotal * AliqPisCofins;
      qrItensVALORPISCOFINS.AsCurrency := ValorPISCOFINSVenda;

      // IPI sobre a venda
      // Valor IPI baseado no Valor NF (planilha - coluna Y)
      // ValorIPIVenda já calculado acima para manter a precedência da planilha
      qrItensVALORIPIVENDA.AsCurrency := ValorIPIVenda;

      // ===== 8. MARGEM BRUTA (SEGUNDO PLANILHA) =====
      // IMPORTANTE: Margem usa ICMS EFETIVO, não ICMS cheio!
      // Margem = Base ICMS - Custo Líquido - ICMS Efetivo - PIS/COFINS - IPI Venda
      MargemBruta := BaseICMSVendaTotal
                     - (CustoSemImpostos * qrItensQUANTIDADE.AsCurrency)
                     - (BaseICMSVendaTotal * AliqICMSEfetivo)  // <-- USA ICMS EFETIVO!
                     - ValorPISCOFINSVenda
                     - ValorIPIVenda;
      qrItensMARGEMMINIMA.AsCurrency := MargemBruta;

      // ===== 9. % MÍNIMO (MARGEM PERCENTUAL) =====
      if PrecoVendaTotal > 0 then
        PercentualMargem := (MargemBruta / PrecoVendaTotal) * 100
      else
        PercentualMargem := 0;

      qrItensPMINIMO.AsCurrency := PercentualMargem;

      // ===== 10. CRÉDITO PRESUMIDO =====
      qrItensCREDITOPRESUMIDO.AsCurrency := (AliqICMS - AliqICMSEfetivo) * BaseICMSVendaTotal;
      qrItensIRJPCREDITOPRESUMIDO.AsCurrency := qrItensCREDITOPRESUMIDO.AsCurrency * 0.34;

      // ===== 11. FATOR =====
      if CustoSemImpostos > 0 then
        qrItensFATOR.AsCurrency := PrecoVendaUnit / CustoSemImpostos
      else
        qrItensFATOR.AsCurrency := 0;
    end;
  finally
    FRecalculandoItem := False;
  end;
end;

procedure TLancamentoEntradaDEForm.SelDataRegistroButtonClick(Sender: TObject);
var
  P: TPoint;
begin
  inherited;
  with TCalendarioForm.Create(Self) do
    try
      P.X := 0;
      P.Y := RegistroEdit.ClientHeight;
      P := RegistroEdit.ClientToScreen(P);
      Top := P.Y;
      Left := P.X;
      if TableDATAENTRADA.Value > 0 then
         Calendario.CalendarDate := TableDATAENTRADA.Value
      else
         Calendario.CalendarDate := Date;
      if ShowModal = mrOk then begin
        if not (Table.State in dsEditModes) then Table.Edit;
        TableDATAENTRADA.AsString := DateToStr(Calendario.CalendarDate);
      end;
    finally
      Free;
    end;
end;

procedure TLancamentoEntradaDEForm.SelDepButtonClick(Sender: TObject);
var
  K: Variant;
begin
  inherited;
  if not Table.Active then Exit;
  with TDepositoDSForm.Create(Self) do
  try
    if ShowSelection(K) then
      begin
        if Table.State = dsBrowse then Table.Edit;
        TableNODEPOSITO.AsInteger := K;
      end;
  finally
    Free;
  end;
end;

procedure TLancamentoEntradaDEForm.SelPessoaButtonClick(Sender: TObject);
var
  K: Variant;
begin
  inherited;
  with TFornecedoresDSForm.Create(Self) do
  try
     if ShowSelection(K) then begin
       if not (Table.State in dsEditModes) then Table.Edit;
       TableNOFORNECEDOR.Value := K;
       NoFornecedorEdit.Setfocus;
     end;
  finally
    Free;
  end;
end;

procedure TLancamentoEntradaDEForm.SelProdutoButtonClick(Sender: TObject);
var
  K: Variant;
begin
  inherited;
  with TProdutosDSForm.Create(Self) do
  try
    WherePrefix[IndexOfGrid(MainGrid)] := '(TIPO = ''M'' OR TIPO = ''B'')';
    if ShowSelection(K) then
    begin
      if not (qrItens.State in dsEditModes) then qrItens.Edit;
        qrItensCODIGOREDUZIDO.Value := K;
    end;
  finally
    Query.Close;
  end;
end;

procedure TLancamentoEntradaDEForm.TableAfterScroll(DataSet: TDataSet);
begin
  inherited;
  Query.Close;
  Query.SQL.Text := 'select NOME from DEPOSITO where NOEMPRESA = :NOEMPRESA and NODEPOSITO = :NODEPOSITO ';
  Query.ParamByName('NOEMPRESA').AsInteger  := dtmConnec.Empresa.Codigo;
  Query.ParamByName('NODEPOSITO').AsInteger := TableNODEPOSITO.Value;
  Query.Open;
  NomeDepositoEdit.Text := Query.Fields[0].AsAnsiString;

  qrItens.Close;
  qrItens.ParamByName('NOEMPRESA').AsInteger := dtmConnec.Empresa.Codigo;
  qrItens.ParamByName('NONOTA').AsInteger := TableNONOTA.AsInteger;
  qrItens.ParamByName('NOFORNECEDOR').AsInteger := TableNOFORNECEDOR.AsInteger;
  qrItens.Open;
end;

procedure TLancamentoEntradaDEForm.TableNewRecord(DataSet: TDataSet);
begin
  inherited;
  TableNOEMPRESA.AsInteger := dtmConnec.Empresa.Codigo;
  TableTIPO.AsString := 'I';
  TableDATAENTRADA.Value := dtmConnec.DateLoaded;
end;

procedure TLancamentoEntradaDEForm.TableNODEPOSITOValidate(Sender: TField);
begin
  inherited;
  if TableNODEPOSITO.IsNull then
     NomeDepositoEdit.Text := ''
  else
  begin
    Query.Close;
    Query.SQL.Text := 'select NOME from DEPOSITO where NOEMPRESA = :NOEMPRESA and NODEPOSITO = :NODEPOSITO ';
    Query.ParamByName('NOEMPRESA').AsInteger  := dtmConnec.Empresa.Codigo;
    Query.ParamByName('NODEPOSITO').AsInteger := TableNODEPOSITO.Value;
    Query.Open;
    if Query.Fields[0].IsNull then
      raise exception.create('Depósito não cadastrado');
    NomeDepositoEdit.Text := Query.Fields[0].AsAnsiString;
  end;
end;

procedure TLancamentoEntradaDEForm.TableNOFORNECEDORValidate(Sender: TField);
begin
  inherited;
  if TableNOFORNECEDOR.Value > 0 then
  begin
    Query.Close;
    Query.SQL.Text := 'SELECT PESSOA.NOME, '+
                      '    CIDADE.ESTADO, '+
                      '    CASE '+
                      '        WHEN PESSOA.ISENTO = ''F'' THEN ''F'' '+
                      '        WHEN PESSOA.ISENTO = ''T'' THEN '+
                      '            CASE '+
                      '                WHEN PESSOAJU.REGIMETRIBUTACAO = ''M'' '+
                      '                     AND COALESCE(PESSOA.CONSUMIDORFINAL, ''F'') = ''F'' '+
                      '                THEN ''T'' '+
                      '                ELSE ''F'' '+
                      '            END '+
                      '        ELSE ''T'' '+
                      '    END AS CONTRIBUINTE '+
                      'FROM PESSOA '+
                      'JOIN CIDADE ON PESSOA.NOCIDADE = CIDADE.NOCIDADE '+
                      'LEFT JOIN PESSOAJU ON PESSOAJU.NOPESSOA = PESSOA.NOPESSOA '+
                      'where PESSOA.NOPESSOA = :NOPESSOA ';
    Query.ParamByName('NOPESSOA').AsInteger := TableNOFORNECEDOR.Value;
    Query.Open;
    if not Query.Fields[0].IsNull then
    begin
      if not (Table.State in dsEditModes) then Table.Edit;
      TableNOME.Value := Query.FieldByName('NOME').AsString;
      TableESTADO.Value := Query.FieldByName('ESTADO').AsString;
      TableCONTRIBUINTE.Value := Query.FieldByName('CONTRIBUINTE').AsString;
    end
    else
    begin
      NoFornecedorEdit.Setfocus;
      raise Exception.Create('Fornecedor não cadastrado!');
    end;
  end
  else
  begin
    TableNOME.Value := '';
    TableESTADO.Value   := 'SC';
    TableCONTRIBUINTE.Value := 'F';
  end;
end;

end.
