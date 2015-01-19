program records_base;

type
  date = record
    day: byte;
    month: byte;
    year: integer;
  end;

var
  d1, d2: date;

  procedure date_read(var d: date);
  begin
    Write('day=');
    readln(d.day);
    Write('month=');
    readln(d.month);
    Write('year=');
    readln(d.year);
  end;

  procedure date_write(d: date);
  begin
    writeln('day=', d.day);
    writeln('month=', d.month);
    writeln('year=', d.year);
  end;

  procedure date_writecompact(d: date);
  begin
    writeln('date=', d.day, '-', d.month, '-', d.year);
  end;

begin

  date_read(d1);
  date_write(d1);
  date_writecompact(d1);

  date_read(d2);
  date_write(d2);
  date_writecompact(d2);

  writeln;
  write('Press <Enter>');
  readln;

end.
