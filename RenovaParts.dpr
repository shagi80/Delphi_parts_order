program RenovaParts;

uses
  Forms,
  Unit1 in 'Unit1.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'RenovaParts';
  Application.HelpFile := 'C:\Users\ShaginyanSergey\Documents\Borland Studio Projects\������� ����������\����� ��\help.chm';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
