unit DataModule;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection;

type
  TDM1 = class(TDataModule)
    ZCon: TZConnection;
    Gejala_zq: TZQuery;
    Penyakit_zq: TZQuery;
    Pertanyaan_zq: TZQuery;
    Rule_zq: TZQuery;
    pRule_zq: TZQuery;
    gejala_ds: TDataSource;
    penyakit_ds: TDataSource;
    pertanyaan_ds: TDataSource;
    Rule_ds: TDataSource;
    prule_ds: TDataSource;
    user_zq: TZQuery;
    user_ds: TDataSource;
    pRule_zqkodeRule: TStringField;
    pRule_zqkodePertanyaan1: TStringField;
    pRule_zqkodePenyakit: TStringField;
    pRule_zqrc_namaPenyakit: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TabelAktif(b:Boolean);
  end;

var
  DM1: TDM1;

implementation

{$R *.dfm}

procedure TDM1.TabelAktif(b:Boolean);
begin
  Gejala_zq.Active := b;
  Penyakit_zq.Active := b;
  Pertanyaan_zq.Active := b;
  Rule_zq.Active :=b;
  pRule_zq.Active := b;
  user_zq.Active :=b;
end;

end.
