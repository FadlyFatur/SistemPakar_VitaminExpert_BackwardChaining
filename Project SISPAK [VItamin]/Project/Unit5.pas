unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SMDBCtrl, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, ExtCtrls;

type
  TForm5 = class(TForm)
    pnl1: TPanel;
    btn2: TBitBtn;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;
    pnl6: TPanel;
    SMDBGrid1: TSMDBGrid;
    SMDBNavigator1: TSMDBNavigator;
    SMDBGrid2: TSMDBGrid;
    SMDBNavigator2: TSMDBNavigator;
    SMDBGrid3: TSMDBGrid;
    SMDBNavigator3: TSMDBNavigator;
    SMDBGrid4: TSMDBGrid;
    SMDBNavigator4: TSMDBNavigator;
    procedure pnl2Click(Sender: TObject);
    procedure pnl3Click(Sender: TObject);
    procedure pnl4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure pnl5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  Unit2,Unit3,Unit4, DataModule, Unit1;

{$R *.dfm}

procedure TForm5.pnl2Click(Sender: TObject);
begin
Unit2.Form2.Show;
close;
end;

procedure TForm5.pnl3Click(Sender: TObject);
begin
Unit3.Form3.Show;
close;
end;

procedure TForm5.pnl4Click(Sender: TObject);
begin
Unit4.Form4.Show;
Close;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
MessageDlg('VitaminExpert Version 1.0' + #13#10 + 
  'Fadly Faturrohman                (152017076)' + #13#10 +
  'M. Refi Darmawan                 (152017081)' + #13#10 + 
  'Refriyan Ardianto                  (152017107)' + #13#10#13#10 + 
  'Itenas - Informatika - Sistem Pakar',  mtInformation, [mbOK], 0);
end;

procedure TForm5.pnl5Click(Sender: TObject);
begin
  Unit1.login.Show;
  Close;
  DM1.TabelAktif(False);
end;

end.
