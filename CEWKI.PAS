unit cewki;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    Image1: TImage;
    BitBtn1: TBitBtn;
    StaticText5: TStaticText;
    procedure SpeedButton1Click(Sender: TObject);
    procedure StaticText5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses about;

{$R *.DFM}

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  a , b, c, d: extended;
begin
  a := 0;
  b := 0;
  c := 0;
  d := 0;
  if length(edit1.text) <> 0 then
      d := strtofloat(edit1.text);
  if length(edit2.text) <> 0 then
      a := strtofloat(edit2.text);
  if length(edit3.text) <> 0 then
      b := strtofloat(edit3.text);
  if length(edit4.text) <> 0 then
      c := strtofloat(edit4.text) * 1000000;

       if (d = 0) and (a > 0) and (b > 0) and (c > 0) then
    edit1.text := floattostrf(sqrt(a * c / pi) / b, ffGeneral, 5, 5)
  else if (d > 0) and (a = 0) and (b > 0) and (c > 0) then
    edit2.text := floattostrf(sqr(b * d) * pi / c, ffGeneral, 5, 5)
  else if (d > 0) and (a > 0) and (b = 0) and (c > 0) then
    edit3.text := floattostrf(sqrt(a * c / pi) / d, ffGeneral, 5, 5)
  else if (d > 0) and (a > 0) and (b > 0) and (c = 0) then
    edit4.text := floattostrf(sqr(b * d) * pi / a / 1000000, ffGeneral, 5, 5)
  else if (d > 0) and (a > 0) and (b > 0) and (c > 0) then
  edit4.text := floattostrf(sqr(b * d) * pi / a / 1000000, ffGeneral, 5, 5)
  else
    ShowMessage('Musza byc wypelnione co najmniej trzy pola!');
end;

procedure TForm1.StaticText5Click(Sender: TObject);
begin
  AboutFrm := TAboutFrm.Create(Self);
  AboutFrm.ShowModal;
  AboutFrm.Free;
end;

end.
