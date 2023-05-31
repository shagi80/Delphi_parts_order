
unit FManUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

const
  fmOpen=0;
  fmSave=1;

type
  TFManForm = class(TForm)
    Panel1: TPanel;
    LB: TListBox;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure LBClick(Sender: TObject);
    procedure LBKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TFileRec = record
    name, imgfile, datafile : string[255];
  end;

var
  FManForm: TFManForm;
  CurDir        : string;
  Exct : boolean;
  Res  : TFileRec;
  Mode : byte;

implementation

{$R *.dfm}

var
  FileList:TList;
  F : file of TFileRec;

procedure TFManForm.BitBtn2Click(Sender: TObject);
var
  itm  : ^TFileRec;
  i    : integer;
  Exst : boolean;
  str  : string;
begin
  if (Mode=fmSave) and (Length(Edit1.Text)>0) then
    begin
      Exst:=false;
      for I := 0 to FileList.Count - 1 do
        if TFileRec(FileList[i]^).name=Edit1.Text then Exst:=true;
      if Exst then
        begin
          str:='Запись с именем "'+Edit1.Text+'" уже существует. Перезаписать?';
          if (MessageDlg(str,mtWarning,[mbYes,mbNo],0)=mrYes) then
            begin
              i:=0;
              while Edit1.Text<>TFileRec(FileList[i]^).name do inc(i);
              Res:=TFileRec(FileList[i]^);
              Exct:=true;
              self.Close;
            end;
        end
      else
        begin
          new(itm);
          itm^.name:=Edit1.Text;
          itm^.imgfile:=Edit1.Text+'Img';
          itm^.datafile:=Edit1.Text+'Data';
          FileList.Add(itm);
          LB.Items.Add(Itm^.name);

          str:=CurDir+'\FileList.fls';
          assignfile(f,str);
          rewrite(f);
          for I := 0 to FileList.Count - 1 do
            write(f,TFileRec(FileList[i]^));
          closefile(f);

          Res:=Itm^;
          Exct:=true;
          self.Close;
        end;
  end;
  if (Mode=fmOpen)and(Length(Edit1.Text)>0)then
    begin
      i:=0;
      while Edit1.Text<>TFileRec(FileList[i]^).name do inc(i);
      Res:=TFileRec(FileList[i]^);
      Exct:=true;
      self.Close;
    end;
  if Length(Edit1.Text)=0 then MessageDlg('Нужно что-нибудь выбрать!',mtError,[mbOk],0);
end;

procedure TFManForm.FormCreate(Sender: TObject);
begin
  FileList:=TList.Create;
  CurDir:=GetCurrentDir;
end;

procedure TFManForm.FormShow(Sender: TObject);
var
  itm  : ^TFileRec;
  i: integer;
  str:string;
begin
  Exct:=false;
  FileList.Clear;
  LB.Items.Clear;

  str:=CurDir+'\FileList.fls';
  assignfile(f,str);
  reset(f);
  while (not EoF(f)) do
    begin
      new(itm);
      read(f,itm^);
      FileList.Add(itm);
      LB.Items.Add(Itm^.name);
    end;
  closefile(f);

  if Mode=fmSave then
    begin
      Edit1.Text:='Noname';
      Edit1.Enabled:=true;
      self.Caption:='Сохранение файлов';
    end;
  if Mode=fmOpen then
    begin
      Edit1.Text:='';
      Edit1.Enabled:=false;
      self.Caption:='Открытие файлов';
    end;
end;

procedure TFManForm.LBClick(Sender: TObject);
begin
  Edit1.Text:=LB.Items[LB.ItemIndex];
end;

procedure TFManForm.LBKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  i : Integer;
begin
  if (Key=46) and (LB.ItemIndex>-1) then
    begin
      i:=0;
      while LB.Items[i]<>TFileRec(FileList[i]^).name do inc(i);
      FileList.Delete(i);
      LB.Items.Delete(i);
      LB.Update;
      assignfile(f,CurDir+'\FileList.fls');
      rewrite(f);
      for I := 0 to FileList.Count - 1 do
           write(f,TFileRec(FileList[i]^));
      closefile(f);
    end;
end;

end.
