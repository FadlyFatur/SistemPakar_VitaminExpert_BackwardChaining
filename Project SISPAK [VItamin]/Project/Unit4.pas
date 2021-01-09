unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, SMDBGrid, Buttons, ExtCtrls;

type
  TForm4 = class(TForm)
    pnl1: TPanel;
    btn2: TBitBtn;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Memo2: TMemo;
    img: TImage;
    procedure pnl2Click(Sender: TObject);
    procedure pnl3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure pnl5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  Unit2, Unit3, Unit1, DataModule;

{$R *.dfm}

procedure TForm4.pnl2Click(Sender: TObject);
begin
unit2.Form2.Show;
Close;
end;

procedure TForm4.pnl3Click(Sender: TObject);
begin
Unit3.Form3.Show;
Close;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
MessageDlg('VitaminExpert Version 1.0' + #13#10 + 
  'Fadly Faturrohman                (152017076)' + #13#10 +
  'M. Refi Darmawan                 (152017081)' + #13#10 + 
  'Refriyan Ardianto                  (152017107)' + #13#10#13#10 + 
  'Itenas - Informatika - Sistem Pakar',  mtInformation, [mbOK], 0);
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
 Memo1.Lines.Clear;
 Memo1.Lines.LoadFromFile('memo\A.txt');
 Memo2.Lines.LoadFromFile('memo\VitA.txt');
 img.Picture.LoadFromFile('Persatuan\A.jpg');
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
 Memo1.Lines.Clear;
 Memo1.Lines.LoadFromFile('memo\B1.txt');
 Memo2.Lines.LoadFromFile('memo\VitB1.txt');
 img.Picture.LoadFromFile('Persatuan\B1.jpg');
end;

procedure TForm4.BitBtn3Click(Sender: TObject);
begin
 Memo1.Lines.Clear;
 Memo1.Lines.LoadFromFile('memo\B2.txt');
 Memo2.Lines.LoadFromFile('memo\VitB2.txt');
 img.Picture.LoadFromFile('Persatuan\B2.jpg');
end;

procedure TForm4.BitBtn4Click(Sender: TObject);
begin
 Memo1.Lines.Clear;
 Memo1.Lines.LoadFromFile('memo\B3.txt');
 Memo2.Lines.LoadFromFile('memo\VitB3.txt');
 img.Picture.LoadFromFile('Persatuan\B3.jpg');
end;

procedure TForm4.BitBtn5Click(Sender: TObject);
begin
 Memo1.Lines.Clear;
 Memo1.Lines.LoadFromFile('memo\B5.txt');
 Memo2.Lines.LoadFromFile('memo\VitB5.txt');
 img.Picture.LoadFromFile('Persatuan\B5.jpg');
end;

procedure TForm4.BitBtn6Click(Sender: TObject);
begin
 Memo1.Lines.Clear;
 Memo1.Lines.LoadFromFile('memo\B6.txt');
 Memo2.Lines.LoadFromFile('memo\VitB6.txt');
 img.Picture.LoadFromFile('Persatuan\B6.jpg');
end;

procedure TForm4.BitBtn7Click(Sender: TObject);
begin
 Memo1.Lines.Clear;
 Memo1.Lines.LoadFromFile('memo\B12.txt');
 Memo2.Lines.LoadFromFile('memo\VitB12.txt');
 img.Picture.LoadFromFile('Persatuan\B12.jpg');
end;

procedure TForm4.BitBtn8Click(Sender: TObject);
begin
 Memo1.Lines.Clear;
 Memo1.Lines.LoadFromFile('memo\C.txt');
 Memo2.Lines.LoadFromFile('memo\VitC.txt');
 img.Picture.LoadFromFile('Persatuan\C.jpg');
end;

procedure TForm4.BitBtn9Click(Sender: TObject);
begin
 Memo1.Lines.Clear;
 Memo1.Lines.LoadFromFile('memo\D.txt');
 Memo2.Lines.LoadFromFile('memo\VitD.txt');
 img.Picture.LoadFromFile('Persatuan\D.jpg');
end;

procedure TForm4.BitBtn10Click(Sender: TObject);
begin
 Memo1.Lines.Clear;
 Memo1.Lines.LoadFromFile('memo\E.txt');
 Memo2.Lines.LoadFromFile('memo\VitE.txt');
 img.Picture.LoadFromFile('Persatuan\E.jpg');
end;

procedure TForm4.BitBtn11Click(Sender: TObject);
begin
 Memo1.Lines.Clear;
 Memo1.Lines.LoadFromFile('memo\K.txt');
 Memo2.Lines.LoadFromFile('memo\VitK.txt');
 img.Picture.LoadFromFile('Persatuan\K.jpg');
end;

procedure TForm4.pnl5Click(Sender: TObject);
begin
  Unit1.login.Show;
  Close;
  DM1.TabelAktif(False);
end;

end.
