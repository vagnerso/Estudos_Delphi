unit fMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, System.Actions, Vcl.ActnList, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    aclMenu: TActionList;
    dtsMenu: TDataSource;
    memMenu: TFDMemTable;
    pnlMenu: TPanel;
    edtSearch: TEdit;
    DBGrid1: TDBGrid;
    actCustomer: TAction;
    actProvider: TAction;
    actProduct: TAction;
    actCategory: TAction;
    actUser: TAction;
    actSales: TAction;
    actOrders: TAction;
    actReportSales: TAction;
    actReportOrders: TAction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
