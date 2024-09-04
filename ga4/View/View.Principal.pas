unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TView_Principal = class(TForm)
    Button6: TButton;
    Button8: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  View_Principal: TView_Principal;

implementation

uses
  Services.Analytics;

{$R *.dfm}

procedure TView_Principal.Button6Click(Sender: TObject);
begin
  TAnalytics.GetInstance.Evento('SIS_0111');
end;

procedure TView_Principal.Button8Click(Sender: TObject);
begin
  TAnalytics.GetInstance.Evento('SIS_0105');
end;

procedure TView_Principal.FormShow(Sender: TObject);
begin
  TAnalytics.GetInstance.ClienteId('tControle').UsuarioId('1234');
end;

end.
