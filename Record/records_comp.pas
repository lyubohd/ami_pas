program records_comp;

type
  date = record
    day: byte;
    month: byte;
    year: integer;
  end;

var
  d1, d2: date;
  comp: integer;

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

  function date_compare(d1, d2: date): integer;
  begin
    {if d1 < d2 return 1}
    {if d1 = d2 return 0}
    {if d1 > d2 return -1}
    if d1.year < d2.year then
    begin
      date_compare := -1;
    end
    else if d1.year > d2.year then
    begin
      date_compare := 1;
    end
    else
    begin
      if d1.month < d2.month then
      begin
        date_compare := -1;
      end
      else if d1.month > d2.month then
      begin
        date_compare := 1;
      end
      else
      begin
        if d1.day < d2.day then
        begin
          date_compare := -1;
        end
        else if d1.day > d2.day then
        begin
          date_compare := 1;
        end
        else
        begin
          date_compare := 0;
        end;
      end;
    end;
  end;

begin

  date_read(d1);
  date_write(d1);
  date_writecompact(d1);

  date_read(d2);
  date_write(d2);
  date_writecompact(d2);

  comp:= date_compare(d1, d2);
  case comp of
    -1:writeln('d1 < d2');
    0:writeln('d1 = d2');
    1:writeln('d1 > d2');
  end;
  
  writeln;
  write('Press <Enter>');
  readln;

end.
