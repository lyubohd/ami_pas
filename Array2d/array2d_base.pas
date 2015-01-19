program array2d_base;

const
  n = 3;
  m = 3;

type
  arr2d = array[1..n, 1..m] of integer;

var
  a: arr2d;

  procedure arr2d_read(var a: arr2d);
  var
    i, j: integer;
  begin
    for i := 1 to n do
    begin
      for j := 1 to m do
      begin
        Write('a[', i, '][', j, ']=');
        readln(a[i, j]);
      end;
    end;
  end;

  procedure arr2d_writeAsList(a: arr2d);
  var
    i, j: integer;
  begin
    for i := 1 to n do
    begin
      for j := 1 to m do
      begin
        writeln('a[', i, '][', j, ']=', a[i, j]);
      end;
    end;
  end;

  procedure arr2d_writeAsTable(a: arr2d);
  var
    i, j: integer;
  begin
    for i := 1 to n do
    begin
      for j := 1 to m do
      begin
        Write(a[i, j]: 3);
      end;
      writeln;
    end;
  end;

begin
  arr2d_read(a);
  writeln;
  write('Press <Enter>');
  readln;

  writeln;
  writeln('writeAsList');
  arr2d_writeAsList(a);
  writeln;
  write('Press <Enter>');
  readln;

  writeln;
  writeln('writeAsTable');
  arr2d_writeAsTable(a);
  writeln;
  write('Press <Enter>');
  readln;


end.
