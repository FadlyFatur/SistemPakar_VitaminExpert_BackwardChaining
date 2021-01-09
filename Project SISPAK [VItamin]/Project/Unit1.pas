unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  Tlogin = class(TForm)
    pnl1: TPanel;
    btn_msk: TBitBtn;
    img1: TImage;
    btn_daftar: TBitBtn;
    usertf: TEdit;
    passtf: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    procedure btn_mskClick(Sender: TObject);
    procedure btn_daftarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  login: Tlogin;

implementation

uses
  Unit2, Unit6, DataModule, Unit5;

{$R *.dfm}


procedure Tlogin.btn_mskClick(Sender: TObject);
 var
 i : Integer;
 a,b,c : string;

begin
 DM1.TabelAktif(True);
 if (usertf.Text = '') or (passtf.Text = '') then
  Application.MessageBox('User/Password tidak boleh kosong', 'INFORMASI', mb_OK)

 else begin
  for i := 1 to DM1.user_zq.RecordCount do begin
    a := string(DM1.user_zq['user']);
    b := string(DM1.user_zq['pass']);
    c := string(DM1.user_zq['jenis']);

    if usertf.Text = a then begin
      if passtf.Text = b then begin
        if c = 'a' then begin
        unit5.Form5.Show;
        Hide;
        end
        else begin
        Unit2.Form2.Show;
        Unit2.Form2.labelnama.Caption := DM1.user_zq.FieldByName('nama').AsString;
        Hide;
        end;
        Break;
      end
      else begin
      Application.MessageBox('Maaf, Password Salah', 'Keterangan',MB_OK+MB_ICONWARNING);
      Break;
      end;
    end;

  DM1.user_zq.Next;
  end;
  end;

  usertf.Text:='';
  passtf.Text:='';
end;

procedure Tlogin.btn_daftarClick(Sender: TObject);
begin
Unit6.Form6.ShowModal;
end;

end.
