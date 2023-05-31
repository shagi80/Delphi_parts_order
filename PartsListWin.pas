unit PartsListWin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dbf, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons, DataUnit;

type
  TPartsListForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    ModelListLB: TLabel;
    NoteLB: TLabel;
    Label3: TLabel;
    grid: TDBGrid;
    BitBtn1: TBitBtn;
    AddToBskBtn: TBitBtn;
    DS: TDataSource;
    DecPrtQty: TSpeedButton;
    prtQtyLb: TLabel;
    IncPrtQty: TSpeedButton;
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure AddToBskBtnClick(Sender: TObject);
    procedure DecPrtQtyClick(Sender: TObject);
    procedure IncPrtQtyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PartsListForm : TPartsListForm;

implementation

uses BskWin;

{$R *.dfm}

procedure TPartsListForm.AddToBskBtnClick(Sender: TObject);
var
  itm:TOrderItem;
begin
  itm.code:= DataMod.DBF.FieldByName('CODE').AsString;
  itm.name:= DataMod.DBF.FieldByName('NAME').AsString;
  itm.note:= DataMod.DBF.FieldByName('NOTE').AsString;
  itm.price:=DataMod.DBF.FieldByName('PRICE').AsFloat;
  itm.models:=DataMod.GetModelList;
  itm.qty:= StrToInt(PrtQtyLb.Caption);
  //BskForm.AddToBsk(itm);
  PostMessage(application.MainForm.Handle,WM_UPDATEBSKPN,0,0);
end;

procedure TPartsListForm.DecPrtQtyClick(Sender: TObject);
var
  i : integer;
begin
  i:=StrToInt(PrtQtyLb.Caption);
  if (i>1) then begin
    dec(i);
    PrtQtyLb.Caption:=IntTostr(i);
    AddToBskBtn.Enabled:=(i>0);
    DecPrtQty.Enabled:=(i>0);
    if IncPrtQty.Enabled=false then IncPrtQty.Enabled:=true;
  end;
end;

procedure TPartsListForm.DSDataChange(Sender: TObject; Field: TField);
begin
  ModelListlb.Caption:=DataMod.GetModelList;
  NoteLB.Caption:=DataMod.DBF.FieldByName('NOTE').AsString;
  PrtQtyLb.Caption:='1';
end;

procedure TPartsListForm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  grid.Columns[1].Width:=grid.ClientWidth-grid.Columns[0].Width-grid.Columns[2].Width-20;
end;

procedure TPartsListForm.FormShow(Sender: TObject);
begin
  PrtQtyLb.Caption:='1';
end;

procedure TPartsListForm.IncPrtQtyClick(Sender: TObject);
var
  i : integer;
begin
  i:=StrToInt(PrtQtyLb.Caption);
  if (i<MaxPrtQty) then begin
    inc(i);
    PrtQtyLb.Caption:=IntTostr(i);
    AddToBskBtn.Enabled:=(i<MaxPrtQty);
    IncPrtQty.Enabled:=(i<MaxPrtQty);
    if DecPrtQty.Enabled=false then DecPrtQty.Enabled:=true;
  end;
end;

end.
