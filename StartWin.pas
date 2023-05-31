unit StartWin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TStartForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    ShowWinCB: TCheckBox;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StartForm: TStartForm;

implementation

{$R *.dfm}

uses DataUnit;

procedure TStartForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If ShowWinCB.Checked then begin
    ShowStartWin:=false;
    DataMod.SaveParam;
  end;
end;

end.
