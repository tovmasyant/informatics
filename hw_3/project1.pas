program project1;

Type
IntMat = array of array of Integer;    //задаю тип матрицы

var
array : IntMat;
M, L : Integer;
i, j, xc, yc, x, y : Integer;
AddVal : Integer;
IsAddDirUp : Boolean;                //переменная, показывающая прибавлять или вычитать 1

function IncDec() : Integer;
begin
IncDec := AddVal;
if AddVal = 1 then
IsAddDirUp := true;                 //+1
if AddVal = 9 then
IsAddDirUp := false;                //-1

if IsAddDirUp then
AddVal += 1
else
AddVal -= 1;

end;

begin
Write('Enter M, L: ');         //вводим переменные длины и высоты
ReadLn(M, L);

SetLength(arr, L);

for i := 0 to L - 1 do
SetLength(arr[i], M);

xc := M;
yc := L - 1;
x := 0;
y := 0;

AddVal := 1;

while (xc + yc) > 0 do
begin
for i := 0 to xc - 1 do
begin
arr[y][x + i] := IncDec();               //вправо
end;
if yc = 0 then
break;
xc -= 1;
x += i;
y += 1;

for i := 0 to yc - 1 do
begin
arr[y + i][x] := IncDec();             //вниз
end;
if xc = 0 then
break;
yc -= 1;
x -= 1;
y += i;

for i := 0 to xc - 1 do
begin
arr[y][x - i] := IncDec();            //влево
end;
if yc = 0 then
break;
xc -= 1;
x -= i;
y -= 1;

for i := 0 to yc - 1 do
begin
arr[y - i][x] := IncDec();              //вверх
end;
if xc = 0 then
break;
yc -= 1;
x += 1;
y -= i;

end;

for i := 0 to L - 1 do
begin
for j := 0 to M - 1 do
begin
Write(arr[i][j]:3);                                 //выводим все в змейку
end;
WriteLn();
end;

ReadLn();
end.
