unit Services.Analytics;

interface
  uses
    System.SysUtils, System.Classes, ga4d.core.interfaces, ga4d.core.impl.ga4d;

type
  TAnalytics = class
    private
      FGA4D : iGA4;

      class var FInstance : TAnalytics;
      constructor CreatePrivate;

      const
        API_SECRETA = '';
        ID_METRICA = '';

    public
      constructor Create;
      class function GetInstance : TAnalytics;
      class destructor Finish;
      function ClienteId(value : string) : TAnalytics;
      function UsuarioId(value : string) : TAnalytics;
      procedure Evento(value : string);

  end;
implementation

{ TAnalytics }

//Analitcs: https://novoead.com.br/curso/1667412580316x695445143096393700
constructor TAnalytics.Create;
begin
  raise Exception.Create('Chame o m�todo GetInstance');
end;

constructor TAnalytics.CreatePrivate;
begin
  FGA4D := TGA4D.New;
  FGA4D.Config.APISecret(API_SECRETA).MeasurementId(ID_METRICA);
end;

function TAnalytics.ClienteId(value: string): TAnalytics;
begin
  Result := Self;
  FGA4D.Config.ClientId(value);
end;

procedure TAnalytics.Evento(value: string);
begin
  TThread.CreateAnonymousThread(
  procedure
  begin
    FGA4D.Build.Name(StringReplace(value, ' ', '_', [rfReplaceAll])).Engagement(trunc(now).ToString).Push;
  end)
  .Start;
end;

class destructor TAnalytics.Finish;
begin
  if (Assigned(FInstance)) then
    FInstance.DisposeOf;
end;

class function TAnalytics.GetInstance: TAnalytics;
begin
  if not(Assigned(FInstance)) then
    FInstance := TAnalytics.CreatePrivate;

  Result := FInstance;
end;

function TAnalytics.UsuarioId(value: string): TAnalytics;
begin
  Result := Self;
  FGA4D.Config.UserId(value);
end;

end.
