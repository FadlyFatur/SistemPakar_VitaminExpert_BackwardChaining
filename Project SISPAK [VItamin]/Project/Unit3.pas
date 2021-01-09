unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, SMDBGrid, XPMan;

type
  TForm3 = class(TForm)
    pnl1: TPanel;
    btn2: TBitBtn;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;
    lbl1: TLabel;
    grp1: TGroupBox;
    btn_start: TBitBtn;
    lbl_tanya: TLabel;
    btnYa: TBitBtn;
    btnTidak: TBitBtn;
    Memo1: TMemo;
    XPManifest1: TXPManifest;
    procedure pnl2Click(Sender: TObject);
    procedure pnl4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn_startClick(Sender: TObject);
    procedure btnYaClick(Sender: TObject);
    procedure pnl5Click(Sender: TObject);
  private
    { Private declarations }
    procedure ShowPertanyaan;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Unit2, Unit4, DataModule, Unit1;

{$R *.dfm}

procedure TForm3.pnl2Click(Sender: TObject);
begin
Unit2.Form2.Show;
Close;
end;

procedure TForm3.pnl4Click(Sender: TObject);
begin
Unit4.Form4.Show;
Close;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
MessageDlg('VitaminExpert Version 1.0' + #13#10 + 
  'Fadly Faturrohman                (152017076)' + #13#10 +
  'M. Refi Darmawan                 (152017081)' + #13#10 + 
  'Refriyan Ardianto                  (152017107)' + #13#10#13#10 +
  'Itenas - Informatika - Sistem Pakar',  mtInformation, [mbOK], 0);
end;

procedure TForm3.btn_startClick(Sender: TObject);
begin
grp1.Enabled:=True;
Memo1.Lines.Clear;
DM1.Pertanyaan_zq.First;
ShowPertanyaan;
DM1.pRule_zq.Active := False;
DM1.pRule_zq.SQL.Text := 'select * from tabelrule';
DM1.pRule_zq.Active := True;
end;

procedure TForm3.ShowPertanyaan;
begin
  lbl_tanya.Caption := DM1.Pertanyaan_zq.FieldByName('Pertanyaan').AsString;
end;

procedure TForm3.btnYaClick(Sender: TObject);
var
s, s2, s3, hasil: string;
i : Integer;
tag : Integer;
begin
tag:= (Sender as TBitBtn).Tag;
  if tag=0 then
    s := 'Y :'
  else
    s:='T :' ;
  //-----------------------------
  s := s+DM1.Pertanyaan_zq.FieldByName('kodePertanyaan').AsString + ' - ' +
    DM1.Pertanyaan_zq.FieldByName('Pertanyaan').AsString;
  Memo1.Lines.Add(s);
  //-----------------------------

  s := 'SELECT * FROM tabelrule ';
  s2:= '';

  for i := 0 to Memo1.Lines.Count-1 do begin
    s3:=QuotedStr('%'+Trim(Copy(Memo1.Lines[i],4,5))+'%');
    if Pos('Y :', Memo1.Lines[i])>0 then begin
      s2:=s2+' AND kodepertanyaan1 LIKE '+s3;
    end
    else
      s2:=s2+' AND kodepertanyaan1 not LIKE ' +s3
  end;

  if Length(s2)>0 then begin
    Delete(s2,1,5);
    s2 :=s+' WHERE '+s2;
  end
  else
    s2:=s;

  DM1.pRule_zq.Active := False;
  DM1.pRule_zq.SQL.Text := s2;
  DM1.pRule_zq.Active := True;

   if DM1.pRule_zq.RecordCount = 1 then begin
   hasil := DM1.pRule_zqrc_namaPenyakit.AsString;
   ShowMessage('Konsultasi Selesai Anda Kekuragan : '+DM1.pRule_zqrc_namaPenyakit.AsString);
   end;

  if DM1.pRule_zq.RecordCount = 0 then begin
    Application.MessageBox('Maaf, tidak ada Hama yang terdeteksi','keterangan', MB_OK + MB_ICONWARNING);
  end;
  //--------------------------------
  DM1.Pertanyaan_zq.Next;
  ShowPertanyaan;
 // btnYa.Enabled := not (DM1.pRule_zq.RecordCount<2);
  //btnTidak.Enabled:= btnYa.Enabled;
end;



procedure TForm3.pnl5Click(Sender: TObject);
begin
  Unit1.login.Show;
  Close;
  DM1.TabelAktif(False);
end;

end.
