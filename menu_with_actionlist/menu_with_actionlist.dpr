program menu_with_actionlist;

uses
  Vcl.Forms,
  fMain in 'forms\fMain.pas' {frmMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
end.
