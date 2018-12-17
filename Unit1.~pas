unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    Memo2: TMemo;
    Memo3: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Memo1.Lines.LoadFromFile('l.txt');
  Memo2.Lines.LoadFromFile('p.txt');
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  log, pass:string;
  i:integer;
begin
  log:=Edit1.Text;
  pass:=Edit2.Text;
  i:=0;
  repeat
    If log=memo1.Lines[i] then
    begin
      If pass=memo2.Lines[i] then
      begin
        memo3.lines[0]:=IntToStr(i);
        memo3.lines.Savetofile('l2.txt');
        Form1.Hide;
        Form2.showmodal;
        break;
      end
      else
      begin
        ShowMessage('Incorrect login or password!');
        break;
      end;
    end
    else i:=i+1;
    If Memo1.Lines[i]='' then ShowMessage('Incorrect login or password!');
  until memo1.Lines[i]='';
end;

end.
