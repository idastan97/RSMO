unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Memo2: TMemo;
    Image2: TImage;
    Timer1: TTimer;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.BitBtn1Click(Sender: TObject);
var
  log, pass:string;
  i:integer;
begin
  log:=Edit1.Text;
  pass:=Edit2.Text;
  If log='' then showmessage('Enter the login!')
  else
  begin
    If pass='' then showmessage('Enter the password!')
    else
    begin
      i:=-1;
      repeat
        i:=i+1;
        If memo1.Lines[i]=log then
        begin
          Showmessage('This login is busy!');
          break;
        end;
        If memo1.Lines[i]='' then
        begin
          memo1.Lines.Add(log);
          memo2.lines.Add(pass);
          memo1.lines.SaveToFile('l.txt');
          memo2.Lines.SaveToFile('p.txt');
          Showmessage('New user was succesfully registered!');
          Edit1.Text:='';
          Edit2.Text:='';
          Timer1.Enabled:=true;
          Form4.close;
          break;
        end;
      until i=-2;
    end;
  end;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
  Edit1.text:='';
  Edit2.text:='';
  Timer1.Enabled:=true;
  Form4.Close;
end;

procedure TForm4.Timer1Timer(Sender: TObject);
begin
  If Form4.showing then
  begin
    memo1.Lines.LoadFromFile('l.txt');
    memo2.lines.LoadFromFile('p.txt');
    Timer1.Enabled:=false;
  end;
end;

end.
 