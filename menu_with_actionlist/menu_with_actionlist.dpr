program menu_with_actionlist;

uses
  Vcl.Forms,
  fMain in 'forms\fMain.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
