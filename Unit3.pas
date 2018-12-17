unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo2: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Memo3: TMemo;
    Timer1: TTimer;
    Image2: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
  var
  cpass, log, pass:string;
  k,i:integer;
begin
  memo3.Lines.LoadFromFile('p.txt');
  k:=StrToInt(memo2.Lines[0]);
  cpass:=Edit1.text;
  log:=Edit2.text;
  pass:=Edit3.text;
  If cpass=memo3.Lines[k] then
  begin
    If log='' then showmessage('Enter the login!')
    else
    begin
      if pass='' then showmessage('Enter the password!')
      else
      begin
        i:=0;
        repeat
        If memo1.lines[i]=log then
        begin
          if i=k then
          begin
            Memo3.Lines[k]:=pass;
            Memo3.Lines.savetofile('p.txt');
            Showmessage('Changes were successfully saved!');
            Edit1.text:='';
            Edit3.text:='';
            Timer1.Enabled:=true;
            Form2.show;
            Form3.Close;
            break;
          end
          else
          begin
            ShowMessage('This login is busy!');
            break;
          end;
        end
        else i:=i+1;
        If memo1.Lines[i]='' then
        begin
          Memo1.Lines[k]:=log;
          memo1.Lines.SaveToFile('l.txt');
          Memo3.Lines[k]:=pass;
          Memo3.Lines.savetofile('p.txt');
          Showmessage('Changes were successfully saved!');
          Edit1.Text:='';
          Edit3.Text:='';
          Timer1.Enabled:=true;
          Form2.show;
          Form3.Close;
          break;
        end;
        until memo1.Lines[i]='';
      end;
    end;
  end
  else
  showmessage('Incorrect current password!');
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
  Edit1.text:='';
  Edit3.text:='';
  Timer1.Enabled:=true;
  Form2.show;
  Form3.close;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
var
  k:integer;
begin
  If Form3.showing then
  begin
    memo1.Lines.LoadFromFile('l.txt');
    Memo2.Lines.LoadFromFile('l2.txt');
    k:=StrToInt(memo2.Lines[0]);
    Edit2.Text:=memo1.Lines[k];
    Timer1.Enabled:=false;
  end;
end;

end.
