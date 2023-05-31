unit TextMemoWin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ImgList, Menus, StdActns, ActnList;

type
  TTextMemoForm = class(TForm)
    Panel1: TPanel;
    TextMemo: TMemo;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    EditMenu: TPopupMenu;
    CopyMItm: TMenuItem;
    PasteMitm: TMenuItem;
    CutMItm: TMenuItem;
    ImageList1: TImageList;
    ActionList1: TActionList;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditCut1: TEditCut;
    Panel2: TPanel;
    CaptionLB: TLabel;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TextMemoForm: TTextMemoForm;

implementation

{$R *.dfm}

procedure TTextMemoForm.BitBtn2Click(Sender: TObject);
begin
  TextMemo.Text:='';
end;

end.
