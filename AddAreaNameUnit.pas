unit AddAreaNameUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls;

type
  TAddAreaNameForm = class(TForm)
    Panel2: TPanel;
    GP1: TGridPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton12: TSpeedButton;
    GridPanel1: TGridPanel;
    SpeedButton8: TSpeedButton;
    SpeedButton14: TSpeedButton;
    GridPanel2: TGridPanel;
    Panel1: TPanel;
    Lb: TLabel;
    Panel3: TPanel;
    SpeedButton13: TSpeedButton;
    SpeedButton16: TSpeedButton;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddAreaNameForm : TAddAreaNameForm;

implementation

{$R *.dfm}

procedure TAddAreaNameForm.FormCreate(Sender: TObject);
var
  i : byte;
begin
  for i:=0 to GP1.ColumnCollection.Count-1 do
    begin
      GP1.ColumnCollection.Items[i].Value:=GP1.Width div GP1.ColumnCollection.Count;
    end;
  for i:=0 to GP1.RowCollection.Count-1 do
    begin
      GP1.RowCollection.Items[i].Value:=GP1.Height div GP1.RowCollection.Count;
    end;
end;

procedure TAddAreaNameForm.FormShow(Sender: TObject);
begin
  Lb.Caption:='0';
  self.Tag:=0;
end;

procedure TAddAreaNameForm.SpeedButton13Click(Sender: TObject);
begin
  self.Close;
end;

procedure TAddAreaNameForm.SpeedButton14Click(Sender: TObject);
var
  str : string;
begin
  str:=Lb.Caption;
  if Length(str)>1 then str:=copy(str,1,(Length(str)-1))else str:='0';
  Lb.Caption:=str;
end;

procedure TAddAreaNameForm.SpeedButton16Click(Sender: TObject);
begin
  self.Tag:=StrToInt(Lb.Caption);
  Self.Close;
end;

procedure TAddAreaNameForm.SpeedButton6Click(Sender: TObject);
begin
  if Lb.Caption<>'0' then Lb.Caption:=Lb.Caption+(sender as TSpeedButton).Caption
    else Lb.Caption:=(sender as TSpeedButton).Caption;
end;

procedure TAddAreaNameForm.SpeedButton8Click(Sender: TObject);
begin
  Lb.Caption:='0';
end;

end.
