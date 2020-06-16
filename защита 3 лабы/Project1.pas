program Project1;
 type

   TCircle = record
   Y : Real;
   X : Real;
   R : Real;
   SMin : Real;
   end;
 var
   N, g, J : Integer;
   T : array of TCircle;
   SMin : Real;
   function FindArea(const O : TCircle): Real;
   begin
     FindArea := pi*O.R*O.R;
   end;


begin
  WriteLn('Enter N');
  ReadLn (N);
  SetLength(T, N);
  for g := 0 to Length(T)-1 do
  begin
    WriteLn('Circle');
    ReadLn(T[g].X, T[g].Y, T[g].R);
  end;

  WriteLn ('SMin');
  ReadLn (SMin);


  g := 0;
  While g < Length(T) do
  begin
    if (FindArea(T[g])<SMin) then
    begin
      for J := g to Length(T)-2 do
        T[J] := T[J+1];
      g := g-1;
      SetLength(T, Length(T)-1);

    end;
    g := g+1;
  end;
  for g := 0 to Length(T)-1 do
  begin
    WriteLn(T[g].X:0:6,' ', T[g].Y:0:6,' ', T[g].R:0:6);
  end;
  ReadLn;
end.

