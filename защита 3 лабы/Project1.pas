program Project1;
 type
   TPoint = record
   X : Real;
   Y : Real;
   end;


   TCircle = record
   O : TPoint;
   R : Real;
   end;
 var
   N, g : Integer;
   T : array of TPoint;
   I : TCircle;
   J : Integer;
   function GetDistance(const A, B: TPoint): Real;
   begin
     GetDistance := sqrt(sqr(A.X-B.X)+sqr(A.Y-B.Y));
   end;


begin
  WriteLn('Enter N');
  ReadLn (N);
  SetLength(T, N);
  for g := 0 to Length(T)-1 do
  begin
    WriteLn('Point');
    ReadLn(T[g].X, T[g].Y);
  end;

  WriteLn('Circle');
  ReadLn(I.O.X, I.O.Y, I.R);
  g := 0;
  While g < Length(T) do
  begin
    if (GetDistance(T[g], I.O)>I.R) then
    begin
      for J := g to Length(T)-2 do
        T[J] := T[J+1];
      g := g-1;
      SetLength(T, Length(T)-1);

    end;
    g := g+1;
  end;
  WriteLn(Length (T));
  ReadLn;
end.

