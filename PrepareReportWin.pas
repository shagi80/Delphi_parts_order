unit PrepareReportWin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, frxClass, ActiveX, ComObj;

type
  TPrepareReportForm = class(TForm)
    MainPN: TPanel;
    HeaderGB: TGroupBox;
    Label1: TLabel;
    NameED: TEdit;
    Label2: TLabel;
    AddrMemo: TMemo;
    Label3: TLabel;
    TelEd: TEdit;
    DateED: TEdit;
    Label4: TLabel;
    BtnPn: TPanel;
    OkBtn: TBitBtn;
    BitBtn1: TBitBtn;
    ExportGB: TGroupBox;
    ShowAfterExportCB: TCheckBox;
    PdfBtn: TSpeedButton;
    ExlBtn: TSpeedButton;
    OdsBtn: TSpeedButton;
    SaveDlg: TSaveDialog;
    function PrepareData(exp:boolean):boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrepareReportForm: TPrepareReportForm;

implementation

uses DataUnit;

{$R *.dfm}

function TPrepareReportForm.PrepareData(exp:boolean):boolean;
var
  Word: OLEVariant;
begin
  NameED.Text:=CompName;
  AddrMemo.Text:=CompAddr;
  TelED.Text:=CompTel;
  DateED.Text:=FormatDateTime('dd:mm:yyyy',OrderDate);
  ExportGB.Visible:=exp;
  MainPn.Height:=HeaderGB.Height+Integer(exp)*(ExportGB.height+10)+20;
  self.Height:=BtnPn.Top+BtnPn.Height+35;
  ShowAfterExportCB.Checked:=ShowAfterExport;
  if exp then begin
    OKBtn.Caption:='Выгрузить';
    OKBtn.Hint:='Выгрузить|Выгрузить заказ в файл';
    //Определение наличия Excel и OpenOffice
    if ExportFormat=expfEXL then
      try
        Word := CreateOleObject('Excel.Application');
      except
        ExlBtn.Enabled:=false;
        ExportFormat:=expfPdf;
      end;
    if ExportFormat=expfODS then
      try
        Word := CreateOleObject('com.sun.star.ServiceManager');
      except
        OdsBtn.Enabled:=false;
        ExportFormat:=expfPdf;
      end;
    //нажатие соответствующей кнопки
    case ExportFormat of
      expfEXL : ExlBtn.Down:=true;
      expfODS : OdsBtn.Down:=true;
      expfPDF : PdfBtn.Down:=true;
    end;
  end else begin
    OKBtn.Caption:='Печать';
    OKBtn.Hint:='Печать|Распечатать заказ';
  end;
  //вывод формы
  if self.ShowModal=mrOK then begin
    //сохранение настроек
    CompName:=NameED.Text;
    CompAddr:=AddrMemo.Text;
    CompTel:=TelED.Text;
    OrderDate:=StrToDateDef(DateED.Text,now);
    ShowAfterExport:=ShowAfterExportCB.Checked;
    if ExlBtn.Down then ExportFormat:=expfEXL;
    if OdsBtn.Down then ExportFormat:=expfOds;
    if PdfBtn.Down then ExportFormat:=expfPdf;
    DataMod.SaveParam;
    //подготовка отчета
    DataMod.UDS.RangeEnd:=reCount;
    DataMod.UDS.RangeEndCount:=OrderList.Items.Count;
    DataMod.UDS.First;
    DataMod.Report.LoadFromFile(MainPath+OrderRepFile);
    DataMod.Report.OnGetValue:=DataMod.OrderReportGetValue;
    DataMod.Report.PrepareReport(true);
    if exp then begin
      //
      case ExportFormat of
        expfEXL : begin
          SaveDlg.DefaultExt:='*.xls';
          SaveDlg.Filter:='Файлы XLS|*.xls';
          if SaveDlg.Execute then begin
            DataMod.frxXLSExport1.OpenExcelAfterExport:=SHOWAFTEREXPORT;
            DataMod.frxXLSExport1.FileName:=SaveDlg.FileName;
            DataMod.Report.Export(DataMod.frxXLSExport1);
          end;
        end;
        expfODS : begin
          SaveDlg.DefaultExt:='*.ods';
          SaveDlg.Filter:='Файлы ODS|*.ods';
          if SaveDlg.Execute then begin
            DataMod.frxODSExport1.OpenAfterExport:=SHOWAFTEREXPORT;
            DataMod.frxODSExport1.FileName:=SaveDlg.FileName;
            DataMod.Report.Export(DataMod.frxODSExport1);
          end;
        end;
        expfPDF : begin
          SaveDlg.DefaultExt:='*.pdf';
          SaveDlg.Filter:='Файлы PDF|*.pdf';
          if SaveDlg.Execute then begin
            DataMod.frxPDFExport1.OpenAfterExport:=SHOWAFTEREXPORT;
            DataMod.frxPDFExport1.FileName:=SaveDlg.FileName;
            DataMod.Report.Export(DataMod.frxPDFExport1);
          end;
        end;
      end;
    end else DataMod.Report.Print;
    result:=true;
  end else result:=false;
end;

end.
