unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TForm6 = class(TForm)
    pnl1: TPanel;
    edtNama: TEdit;
    edtEmail: TEdit;
    edtUser: TEdit;
    edtPass: TEdit;
    edtPass2: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    btn1: TButton;
    btn2: TButton;
    lblNama: TLabel;
    lblEmail: TLabel;
    lblUser: TLabel;
    lblPass: TLabel;
    lblPass2: TLabel;
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses
  Unit1, DataModule;

{$R *.dfm}

procedure TForm6.btn3Click(Sender: TObject);
begin
Unit1.login.Show;
close;
end;

procedure TForm6.btn2Click(Sender: TObject);
var i:Integer;
    a:string;
begin
 if edtNama.Text = '' then begin
   lblNama.Visible := True;
 end
 else if edtEmail.Text = '' then begin
   lblEmail.Visible := True;
 end
 else if edtUser.Text = '' then begin
   lblUser.Visible := True;
 end
 else if edtPass.Text='' then begin
   lblPass.Visible := True;
 end
 else if edtPass2.Text='' then begin
   if edtPass2.Text <> edtPass.Text then
      lblPass2.Caption :='Password tidak sama'
   else
      lblPass2.Caption:='Tidak boleh kosong'
   end

 else begin
   DM1.user_zq.Active := True;
   with DM1.user_zq do begin
      DM1.user_zq.Close;
      DM1.user_zq.SQL.Text :=('select * from user where user = "'+edtUser.Text+'"');
      DM1.user_zq.Open;
      DM1.user_zq.Active;

      if DM1.user_zq.RecordCount=0 then begin
        DM1.user_zq.Close;
        DM1.user_zq.SQL.Text := 'INSERT INTO user (nama, Email, user, pass, jenis) VALUES ("'+edtNama.Text+'","'+edtEmail.Text+'","'+edtUser.Text+'","'+edtPass.Text+'","u")';
        DM1.user_zq.ExecSQL;
        DM1.user_zq.SQL.Text := 'SELECT * FROM user';
        DM1.user_zq.Open;
        ShowMessage('Data Berhasil Disubmit');
        Unit1.login.Show;
      end
      else
        ShowMessage('User sudah terdaftar');
   end;

  DM1.user_zq.SQL.Clear;
  DM1.user_zq.SQL.Add('select * from user');
  DM1.user_zq.Active;

   lblNama.Visible:=False;
   lblEmail.Visible:=False;
   lblUser.Visible:=False;
   lblPass.Visible:=False;
   lblPass2.Visible:=False;
   edtUser.Text:='';
   edtNama.Text:='';
   edtPass.Text:='';
   edtPass2.Text:='';
   edtEmail.Text:='';
   Close;
 end;
end;


procedure TForm6.btn1Click(Sender: TObject);
begin
  edtUser.Text:='';
  edtNama.Text:='';
  edtPass.Text:='';
  edtPass2.Text:='';
  edtEmail.Text:='';
end;

end.
