program strings_base;

var
  s: string;
  l: integer;
  fp: integer;
  s2: string;
  s3: string;
  s4: string;
  s5: string;
  code: integer;
  k: integer;
  r: real;
  h: integer;

begin
  Write('s=');
  s:= '123.456.78';
  //readln(s);
  writeln('s=', s);

  l:= length(s);
  writeln('length=', l);

  fp := pos('.', s);
  writeln('fp=', fp);

  s2:= copy(s, 1, fp-1);
  writeln('copy: ', s2);

  s3:= s;
  delete(s3, 1, fp-1);
  writeln('delete: ', s3);

  s4:= s;
  insert('000', s4, fp);
  writeln('insert: ', s4);

  s5:= '7';
  val(s5, k, code);
  If code<>0 then
    Writeln (s5,' Error at position ',code,' : ',s5[code])
  else
    Writeln (s5,' Value : ',k);

  s5:= '7.5';
  val(s5, r, code);
  If code<>0 then
    Writeln (s5,' Error at position ',code,' : ',s5[code])
  else
    Writeln (s5,' Value : ',r);

  s5:= '$FF';
  val(s5, h, code);
  If code<>0 then
    Writeln (s5,' Error at position ',code,' : ',s5[code])
  else
    Writeln (s5,' Value : ',h);

  Write('Press <Enter>');
  readln;
end.
