program Project1;
 type

   TCircle = record
   Y : Real;
   X : Real;
   R : Real;
   SMin : Real;
   end;
 var
   N, g, J, W : Integer;
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


 W := 0;
 for g := 0 to Length (T)-1 do
  begin
    if (FindArea(T[g])>=SMin) then
    begin
      T[W] := T[g];
      W := W+1;


    end;


  end;
 SetLength(T,W);
  for g := 0 to Length(T)-1 do
  begin
    WriteLn(T[g].X:0:6,' ', T[g].Y:0:6,' ', T[g].R:0:6);
  end;
  ReadLn;
end.

