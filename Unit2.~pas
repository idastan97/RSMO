unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, jpeg, XPMan, ShellApi;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Memo1: TMemo;
    Label1: TLabel;
    Memo2: TMemo;
    Button1: TButton;
    Button2: TButton;
    XPManifest1: TXPManifest;
    BitBtn1: TBitBtn;
    Timer1: TTimer;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit4, Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Timer1.Enabled:=true;
  Form3.show;
  Form2.Hide;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  k:integer;
begin
  Memo1.Lines.LoadFromFile('l2.txt');
  k:=strtoint(Memo1.Lines[0]);
  If k=0 then Form4.show else showmessage('You cannot add new user!');
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
var
  k:integer;
begin
  If Form2.Showing then
  begin
    Memo2.Lines.LoadFromFile('l.txt');
    Memo1.Lines.LoadFromFile('l2.txt');
    k:=strtoint(Memo1.Lines[0]);
    Label1.Caption:='Welcome, '+memo2.Lines[k];
    Timer1.Enabled:=false;
  end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
ShellExecute(Handle, 'open', 'database.accdb', nil, nil, SW_SHOWNORMAL)
end;

end.
