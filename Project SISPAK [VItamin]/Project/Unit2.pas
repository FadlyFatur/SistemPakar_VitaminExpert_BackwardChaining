unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TForm2 = class(TForm)
    pnl1: TPanel;
    img1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    btn_start: TBitBtn;
    btn2: TBitBtn;
    pnl2: TPanel;
    pnl_konsul: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;
    lbl3: TLabel;
    labelnama: TLabel;
    procedure pnl5Click(Sender: TObject);
    procedure btn_startClick(Sender: TObject);
    procedure pnl_konsulClick(Sender: TObject);
    procedure pnl4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Unit1, Unit3, Unit4, DataModule;

{$R *.dfm}

procedure TForm2.pnl5Click(Sender: TObject);
begin
  Unit1.login.Show;
  Close;
  DM1.TabelAktif(False);
end;

procedure TForm2.btn_startClick(Sender: TObject);
begin
Unit3.Form3.Show;
hide;
end;

procedure TForm2.pnl_konsulClick(Sender: TObject);
begin
Unit3.Form3.Show;
Hide;
end;

procedure TForm2.pnl4Click(Sender: TObject);
begin
Unit4.Form4.Show;
Hide;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
MessageDlg('VitaminExpert Version 1.0' + #13#10 + 
  'Fadly Faturrohman                (152017076)' + #13#10 +
  'M. Refi Darmawan                 (152017081)' + #13#10 + 
  'Refriyan Ardianto                  (152017107)' + #13#10#13#10 + 
  'Itenas - Informatika - Sistem Pakar',  mtInformation, [mbOK], 0);
end;

end.
