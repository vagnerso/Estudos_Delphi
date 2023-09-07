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
  TfrmMenu = class(TForm)
    Panel1: TPanel;
    aclMenu: TActionList;
    dtsMenu: TDataSource;
    memMenu: TFDMemTable;
    pnlMenu: TPanel;
    edtSearch: TEdit;
    grdMenu: TDBGrid;
    actCustomer: TAction;
    actProvider: TAction;
    actProduct: TAction;
    actCategory: TAction;
    actUser: TAction;
    actSales: TAction;
    actOrders: TAction;
    actReportSales: TAction;
    actReportOrders: TAction;
    memMenuIndexAction: TIntegerField;
    memMenuCaptionAction: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
    procedure actCustomerExecute(Sender: TObject);
    procedure actProviderExecute(Sender: TObject);
    procedure actProductExecute(Sender: TObject);
    procedure actCategoryExecute(Sender: TObject);
    procedure actUserExecute(Sender: TObject);
    procedure actSalesExecute(Sender: TObject);
    procedure actOrdersExecute(Sender: TObject);
    procedure actReportSalesExecute(Sender: TObject);
    procedure actReportOrdersExecute(Sender: TObject);
    procedure grdMenuDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdMenuCellClick(Column: TColumn);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure MenuSearch;
    procedure PopulaPesquisaMenu(memoryTable: TFDMemTable;
      actionList: TActionList);
    function removeAccents(const s: string): string;
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

{ TForm1 }

procedure TfrmMenu.actCategoryExecute(Sender: TObject);
begin
  showmessage('Você escolheu o cadastro de categorias');
end;

procedure TfrmMenu.actCustomerExecute(Sender: TObject);
begin
  showmessage('Você escolheu o cadastro de clientes');
end;

procedure TfrmMenu.actOrdersExecute(Sender: TObject);
begin
  showmessage('Você escolheu o cadastro de pedidos');
end;

procedure TfrmMenu.actProductExecute(Sender: TObject);
begin
  showmessage('Você escolheu o cadastro de produtos');
end;

procedure TfrmMenu.actProviderExecute(Sender: TObject);
begin
  showmessage('Você escolheu o cadastro de fornecedores');
end;

procedure TfrmMenu.actReportOrdersExecute(Sender: TObject);
begin
  showmessage('Você escolheu o relatório de pedidos');
end;

procedure TfrmMenu.actReportSalesExecute(Sender: TObject);
begin
  showmessage('Você escolheu o relatório de vendas');
end;

procedure TfrmMenu.actSalesExecute(Sender: TObject);
begin
  showmessage('Você escolheu o cadastro de vendas');
end;

procedure TfrmMenu.actUserExecute(Sender: TObject);
begin
  showmessage('Você escolheu o cadastro de usuários');
end;

procedure TfrmMenu.grdMenuCellClick(Column: TColumn);
begin
  MenuSearch;
end;

procedure TfrmMenu.grdMenuDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if gdSelected in State then
  begin
    grdMenu.Canvas.Brush.Color := clBlack;
  end;

  grdMenu.DefaultDrawDataCell(Rect, Column.Field, State);

end;

procedure TfrmMenu.edtSearchChange(Sender: TObject);
begin
  memMenu.Filtered := False;
  memMenu.Filter := ' Upper(CaptionAction) like ' +
                    QuotedStr('%' + Trim(AnsiUpperCase(edtSearch.Text)) + '%') + ' ';
  memMenu.Filtered := True;
end;

procedure TfrmMenu.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_up) then
  begin
    dtsMenu.DataSet.Prior;
  end;

  if (key = vk_down) then
  begin
    dtsMenu.DataSet.Next;
  end;

end;

procedure TfrmMenu.FormCreate(Sender: TObject);
begin
  PopulaPesquisaMenu(memMenu, aclMenu);
end;

procedure TfrmMenu.MenuSearch;
begin

  if not (memMenu.IsEmpty) then
  begin
    aclMenu.Actions[memMenu.FieldByName('IndexAction').AsInteger].Execute;
  end;

end;

procedure TfrmMenu.PopulaPesquisaMenu(memoryTable: TFDMemTable; actionList: TActionList);
var
  lIndex: integer;
  lAction: TAction;
  lCaption: string;
begin
  lCaption := '';
  memoryTable.Close;
  memoryTable.Open;
  for lIndex := 0 to Pred(actionList.ActionCount) do
  begin

    lAction := TAction(actionList.Actions[lIndex]);
    if (lAction.Visible) and (lAction.Enabled) then
    begin
      memoryTable.Append;
      lCaption := removeAccents(lAction.Caption);
      lCaption := lAction.Caption;
      lCaption := StringReplace(lCaption, '&', '', [rfReplaceAll]);
      memoryTable.FieldByName('CaptionAction').AsString := lCaption;
      memoryTable.FieldByName('IndexAction').AsInteger := lIndex;
      memoryTable.Post;
    end;

  end;
  memoryTable.First;
end;

function TfrmMenu.removeAccents(const s: string): string;
var
  i: Integer;
const
  ACCENTED_CHARACTERS: array [1 .. 50] of string = ('á', 'à', 'ä', 'â', 'ã', 'å', 'Á', 'À', 'Ä', 'Â', 'Ã', 'Å', 'é',
    'è', 'ë', 'ê', 'É', 'È', 'Ë', 'Ê', 'í', 'ì', 'ï', 'î', 'Í', 'Ì', 'Ï', 'Î', 'ó', 'ò', 'ö', 'ô', 'õ', 'Ó', 'Ò', 'Ö',
    'Ô', 'Õ', 'ú', 'ù', 'ü', 'û', 'Ú', 'Ù', 'Ü', 'Û', 'ç', 'Ç', 'ñ', 'Ñ');

const
  UNACCENTED_CHARACTERS: array [1 .. 50] of string = ('a', 'a', 'a', 'a', 'a', 'a', 'A', 'A', 'A', 'A', 'A', 'A', 'e',
    'e', 'e', 'e', 'E', 'E', 'E', 'E', 'i', 'i', 'i', 'i', 'I', 'I', 'I', 'I', 'o', 'o', 'o', 'o', 'o', 'O', 'O', 'O',
    'O', 'O', 'u', 'u', 'u', 'u', 'U', 'U', 'U', 'U', 'c', 'C', 'n', 'N');
begin

  Result := s;
  for i := Low(ACCENTED_CHARACTERS) to High(UNACCENTED_CHARACTERS) do
  begin
    Result := StringReplace(Result, ACCENTED_CHARACTERS[i], UNACCENTED_CHARACTERS[i], [rfReplaceAll]);
  end;

end;

end.
