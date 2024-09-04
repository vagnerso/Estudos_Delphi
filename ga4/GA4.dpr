program GA4;

uses
  Vcl.Forms,
  View.Principal in 'View\View.Principal.pas' {View_Principal},
  Services.Analytics in 'Services\GA4D\Services.Analytics.pas',
  ga4d.core.interfaces in 'Services\GA4D\componente\core\ga4d.core.interfaces.pas' {$R *.res},
  ga4d.core.impl.config in 'Services\GA4D\componente\core\impl\ga4d.core.impl.config.pas',
  ga4d.core.impl.ga4d in 'Services\GA4D\componente\core\impl\ga4d.core.impl.ga4d.pas',
  ga4d.core.impl.ga4dbuild in 'Services\GA4D\componente\core\impl\ga4d.core.impl.ga4dbuild.pas',
  ga4d.core.impl.restclient in 'Services\GA4D\componente\core\impl\ga4d.core.impl.restclient.pas',
  ga4d.entity.events in 'Services\GA4D\componente\entity\ga4d.entity.events.pas',
  ga4d.entity.params in 'Services\GA4D\componente\entity\ga4d.entity.params.pas',
  ga4d.entity.payload in 'Services\GA4D\componente\entity\ga4d.entity.payload.pas',
  ga4d.utils in 'Services\GA4D\componente\utils\ga4d.utils.pas',
  GBJSON.Attributes in 'Services\GA4D\componente\gbjson\GBJSON.Attributes.pas',
  GBJSON.Base in 'Services\GA4D\componente\gbjson\GBJSON.Base.pas',
  GBJSON.Config in 'Services\GA4D\componente\gbjson\GBJSON.Config.pas',
  GBJSON.DataSet.Interfaces in 'Services\GA4D\componente\gbjson\GBJSON.DataSet.Interfaces.pas',
  GBJSON.DataSet.Serializer in 'Services\GA4D\componente\gbjson\GBJSON.DataSet.Serializer.pas',
  GBJSON.DateTime.Helper in 'Services\GA4D\componente\gbjson\GBJSON.DateTime.Helper.pas',
  GBJSON.Deserializer in 'Services\GA4D\componente\gbjson\GBJSON.Deserializer.pas',
  GBJSON.Helper in 'Services\GA4D\componente\gbjson\GBJSON.Helper.pas',
  GBJSON.Interfaces in 'Services\GA4D\componente\gbjson\GBJSON.Interfaces.pas',
  GBJSON.RTTI in 'Services\GA4D\componente\gbjson\GBJSON.RTTI.pas',
  GBJSON.Serializer in 'Services\GA4D\componente\gbjson\GBJSON.Serializer.pas',
  RESTRequest4D in 'Services\GA4D\componente\RESTRequest4D\RESTRequest4D.pas',
  RESTRequest4D.Request.Adapter.Contract in 'Services\GA4D\componente\RESTRequest4D\RESTRequest4D.Request.Adapter.Contract.pas',
  RESTRequest4D.Request.Client in 'Services\GA4D\componente\RESTRequest4D\RESTRequest4D.Request.Client.pas',
  RESTRequest4D.Request.Contract in 'Services\GA4D\componente\RESTRequest4D\RESTRequest4D.Request.Contract.pas',
  RESTRequest4D.Response.Contract in 'Services\GA4D\componente\RESTRequest4D\RESTRequest4D.Response.Contract.pas',
  RESTRequest4D.Utils in 'Services\GA4D\componente\RESTRequest4D\RESTRequest4D.Utils.pas',
  RESTRequest4D.Response.Client in 'Services\GA4D\componente\RESTRequest4D\RESTRequest4D.Response.Client.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TView_Principal, View_Principal);
  Application.Run;
end.
