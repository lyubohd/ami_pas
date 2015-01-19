program strings_base;

var
  s: string;
  i: integer;
  n: integer;
begin
  n := 0;
  Write('s=');
  readln(s);
  for i := 1 to length(s) do
  begin
    if s[i] = '.' then
    begin
      n := n + 1;
    end;
  end;
  writeln('.=', n);
  Write('Press <Enter>');
  readln;
end.
