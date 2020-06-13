program project1;

type
data = record
ip: string[20];
n: integer;
end;

var
datafile: file of data;
fin, fout: textfile;
datatemp, newdata: data;
fname, tempip, sout: string;
flag: boolean;
i: integer;

begin
writeln('Enter file name');
readln(fname);
assign(fin, fname);reset(fin);
assign(datafile, 'temp');
rewrite(datafile);
while not eof(fin) do
begin
readln(fin, tempip);
delete(tempip, pos(' ',tempip),20);
flag := true;
for i:=1 to filesize(datafile) do
begin
read(datafile, datatemp);
if datatemp.ip = tempip then
begin
datatemp.n +=1;
seek(datafile,i-1);
write(datafile,datatemp);
seek(datafile,i);
flag :=False;
writeln('add: ',tempip);
end;
end;
if flag then
begin
newdata.ip := tempip;
newdata.n := 1;
write(datafile, newdata);
writeln('new: ',tempip);
end;
reset(datafile);
end;
assign(fout, 'output.txt');
rewrite(fout);
while not eof(datafile) do
begin
read(datafile, datatemp);
str(datatemp.n,sout);
sout := datatemp.ip + ' : ' + sout;
writeln(fout, sout);
end;
closefile(datafile);
closefile(fout);
closefile(fin);
writeln('Output file is output.txt');
readln;
end.

