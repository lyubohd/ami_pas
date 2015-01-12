program lab10;

type
  date = record
    day: byte;
	m: byte;
	y: integer;
  end;
  
var
  d1: date;  

procedure date_read(var d: date);
begin
  write('day');readln(d1.day);
  write('m');readln(d1.m);
  write('y');readln(d1.y);
end;

procedure date_write(d: date);
begin
  writeln('day', d1.day);
  writeln('m', d1.m);
  writeln('y', d1.y);
end;

procedure date_write_compact(d: date);
begin
  writeln(d1.day, '-', d1.m, '-', d1.y);
end;
  
begin
  writeln('Hello Pascal');
  //date_read(d1);
  date_write(d1);
  date_write_compact(d1);
end.