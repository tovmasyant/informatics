unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type





  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit15Change(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  A, B, C, A1, B1, C1, A2, B2, C2, P: TPoint;
implementation

{$R *.lfm}

{ TForm1 }
function GetDistance(A , B : TPoint): Real;
begin
  GetDistance:=sqrt((B.X-A.X)*(B.X-A.X)+(B.Y-A.Y)*(B.Y-A.Y))


end;
function PT(A, B, C:TPoint): Real;
var
  P: Real;
  AB: Real;
  BC: Real;
  CA: Real;
begin
  AB:=GetDistance(A,B);
  BC:=GetDistance(B,C);
  CA:=GetDistance(C,A);
  P:=(AB+BC+CA)/2;
  PT:=sqrt(P*(P-AB)*(P-BC)*(P-CA));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  A.X := StrToInt(Edit16.Text);
  A.Y := StrToInt(Edit17.Text);

  B.X := StrToInt(Edit15.Text);
  B.Y := StrToInt(Edit18.Text);

  C.X := StrToInt(Edit6.Text);
  C.Y := StrToInt(Edit11.Text);

  Image1.Canvas.Brush.Style := bsSolid;
  Image1.Canvas.Brush.Color := clWhite;
  Image1.Canvas.Pen.Style := psSolid;
  Image1.Canvas.Pen.Color := clBlack;
  Image1.Canvas.Pen.Width := 1;
  Image1.Canvas.Rectangle(0, 0, 580, 580);
  with Image1.Canvas do
  begin
    Pen.Color := clBlue;
    Pen.Width := 3;

    MoveTo(A);
    LineTo(B);
    LineTo(C);
    LineTo(A);

    Pen.Width := 1;
    Brush.Color := RGBToColor(220, 20, 60);

    Ellipse(A.X - 5, A.Y - 5, A.X + 5, A.Y + 5);
    Ellipse(B.X - 5, B.Y - 5, B.X + 5, B.Y + 5);
    Ellipse(C.X - 5, C.Y - 5, C.X + 5, C.Y + 5);

    Brush.Style := bsClear;
    TextOut(A.X, A.Y, 'A');
    TextOut(B.X, B.Y, 'B');
    TextOut(C.X, C.Y, 'C');


  A1.X := StrToInt(Edit14.Text);
  A1.Y := StrToInt(Edit1.Text);

  B1.X := StrToInt(Edit13.Text);
  B1.Y := StrToInt(Edit2.Text);

  C1.X := StrToInt(Edit5.Text);
  C1.Y := StrToInt(Edit3.Text);


  with Image1.Canvas do
  begin
    Pen.Color := clBlue;
    Pen.Width := 3;

    MoveTo(A1);
    LineTo(B1);
    LineTo(C1);
    LineTo(A1);

    Pen.Width := 1;
    Brush.Color := RGBToColor(220, 20, 60);

    Ellipse(A1.X - 5, A1.Y - 5, A1.X + 5, A1.Y + 5);
    Ellipse(B1.X - 5, B1.Y - 5, B1.X + 5, B1.Y + 5);
    Ellipse(C1.X - 5, C1.Y - 5, C1.X + 5, C1.Y + 5);

    Brush.Style := bsClear;
    TextOut(A1.X, A1.Y, 'A1');
    TextOut(B1.X, B1.Y, 'B1');
    TextOut(C1.X, C1.Y, 'C1');



  A2.X := StrToInt(Edit7.Text);
  A2.Y := StrToInt(Edit10.Text);

  B2.X := StrToInt(Edit8.Text);
  B2.Y := StrToInt(Edit12.Text);

  C2.X := StrToInt(Edit9.Text);
  C2.Y := StrToInt(Edit4.Text);


  with Image1.Canvas do
  begin
    Pen.Color := clBlue;
    Pen.Width := 3;

    MoveTo(A2);
    LineTo(B2);
    LineTo(C2);
    LineTo(A2);

    Pen.Width := 1;
    Brush.Color := RGBToColor(220, 20, 60);

    Ellipse(A2.X - 5, A2.Y - 5, A2.X + 5, A2.Y + 5);
    Ellipse(B2.X - 5, B2.Y - 5, B2.X + 5, B2.Y + 5);
    Ellipse(C2.X - 5, C2.Y - 5, C2.X + 5, C2.Y + 5);

    Brush.Style := bsClear;
    TextOut(A2.X, A2.Y, 'A2');
    TextOut(B2.X, B2.Y, 'B2');
    TextOut(C2.X, C2.Y, 'C2');


  end;



  end;

end;


end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I: TColor;
  I1: TColor;
  I2: TColor;
  S: Real;
  S1: Real;
  S2: Real;


begin
 S:=PT(A,B,C);
 S1:=PT(A1,B1,C1);
 S2:=PT(A2,B2,C2);
  if (S>S1) and (S>S2) then
   I:=ClRed
  Else if (S<S1) and (S<S2) then
   I:=ClBlue
  Else
   I:=ClGreen;
  if (S1>S) and (S1>S2) then
   I1:=ClRed
  Else if (S1<S) and (S1<S2) then
   I1:=ClBlue
  Else
   I1:=ClGreen;
  if (S2>S) and (S2>S1) then
   I2:=ClRed
  Else if (S2<S) and (S2<S1) then
   I2:=ClBlue
  Else
   I2:=ClGreen;
  Image1.canvas.Brush.Style:=BSSolid;
  Image1.canvas.Brush.Color:=I;
  Image1.canvas.Polygon([A, B, C]);
  Image1.canvas.Brush.Color:=I1;
  Image1.canvas.Polygon([A1, B1, C1]);
  Image1.canvas.Brush.Color:=I2;
  Image1.canvas.Polygon([A2, B2, C2]);
end;

procedure TForm1.Edit15Change(Sender: TObject);
begin

end;

end.

