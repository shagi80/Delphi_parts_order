unit DataUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, ComCtrls, ToolWin, ImgList, Buttons, Menus,
  ExtDlgs, DB, dbf, Grids, DBGrids, frxExportODF, frxExportXLS, frxClass,
  frxExportPDF, IniFiles, frxDBSet, DBClient;

const
  BasePath = 'Base\';
  PartsListFile='partslist.dbf';
  orderfile = 'order.ord';
  ParamFile = 'paramfile.ini';
  OrderRepFile = 'orderreport.fr3';
  ShemeRepFile = 'shemedraw.fr3';
  MaxPrtQty = 100;
  WM_UPDATEBSKPN = WM_USER+1;
  expfEXL = 0;
  expfODS = 1;
  expfPDF = 2;
  Version = '1.1.3';
  ReliseDate = '14.05.2018 г.';

type
  //Тип данных для записи областей на схеме
  TArea=record
    Top, Left, Bottom, Right,Ind : integer;
  end;

  TDataMod = class(TDataModule)
    DBF: TDbf;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainPath  : string = '';
  AreaList      : TList;
  FileList      : TList;
  CurShemeInd   : integer = -1;
  Image1        : TImage;
  DataMod       : TDataMod;
  ShowStartWin  : boolean=true;
  FirstResize   : boolean=true;
  ModelList     : array [0..6] of string = ('WS30','WS35','WS40','WS50',
    'WS60','WS70','WS80');


implementation

{$R *.dfm}

end.
