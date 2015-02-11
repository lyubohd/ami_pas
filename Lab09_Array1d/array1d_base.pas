program array1d_base;

const
  n = 4;

type
  array1d = array[1..n] of integer;

var
  a: array1d;

  procedure array1d_read(var a: array1d);
  var
    i: integer;
  begin
    for i := 1 to n do
    begin
      Write('a[', i, ']=');
      readln(a[i]);
    end;
  end;

  procedure array1d_writeList(a: array1d);
  var
    i: integer;
  begin
    for i := 1 to n do
    begin
      writeln('a[', i, ']=', a[i]);
    end;
  end;

  procedure array1d_writeInARow(a: array1d);
  var
    i: integer;
  begin
    for i := 1 to n do
    begin
      Write(a[i], ', ');
    end;
    writeln;
  end;

begin
  writeln;
  writeln('Read Array');
  array1d_read(a);

  writeln;
  writeln('Write Array List');
  array1d_writeList(a);

  writeln;
  writeln('Write Array In a row');
  array1d_writeInARow(a);

  writeln;
  Write('Press <Enter>');
  readln;
end.
