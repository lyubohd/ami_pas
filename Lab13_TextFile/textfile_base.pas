program textfile_base;

const
  max_i = 100;

type

  integerArr = array[1..max_i] of integer;

var
  il1: integerArr;
  num_i: integer;
  c: char;

  procedure integer_read(var d: integer);
  begin
    Write('integer=');
    readln(d);
  end;

  procedure integer_write(d: integer);
  begin
    writeln('integer=', d);
  end;

  procedure integer_writeToTextFile(var f: Text; d: integer);
  begin
    writeln(f, d);
  end;

  procedure integer_ReadFromTextFile(var f: Text; var d: integer);
  begin
    readln(f, d);
  end;

  procedure integerArr_read(var il: integerArr; n: integer);
  var
    i: integer;
  begin
    for i := 1 to n do
    begin
      Write(i, ') ');
      integer_read(il[i]);
    end;
  end;

  procedure integerArr_write(var il: integerArr; n: integer);
  var
    i: integer;
  begin
    writeln;
    writeln('Integer List');
    writeln('-------------');
    for i := 1 to n do
    begin
      Write(i, ') ');
      integer_write(il[i]);
      writeln;
    end;
  end;

  procedure integerArr_writeToFile(var il: integerArr; n: integer);
  var
    i: integer;
    f: Text;
  begin
    if n > 0 then
    begin
      Assign(f, 'dataint.txt');
      rewrite(f);
      for i := 1 to n do
      begin
        integer_writeToTextFile(f, il[i]);
      end;
      Close(f);
    end;
  end;

  procedure integerArr_readFromFile(var il: integerArr; n: integer);
  var
    i: integer;
    f: Text;
  begin
    Assign(f, 'dataint.txt');
    reset(f);
    for i := 1 to n do
    begin
      integer_readFromTextFile(f, il[i]);
    end;
    Close(f);
  end;

  procedure integerArr_readFromFileWhile(var il: integerArr; var n: integer);
  var
    f: Text;
  begin
    n := 0;
    Assign(f, 'dataint.txt');
    reset(f);
    while not EOF(f) do
    begin
      n := n + 1;
      integer_readFromTextFile(f, il[n]);
    end;
    Close(f);
  end;

  procedure menu(var n: integer);
  begin
    writeln;
    writeln('MENU Count(', n, ')');
    writeln('1) Add');
    writeln('2) Save (Text)');
    writeln('3) Load (Text)');
    writeln('4) View');
    writeln('0) Exit');
    Write('menu=');
  end;

begin

  num_i := 0;
  repeat
    menu(num_i);
    readln(c);
    case c of
      '1':
      begin //add
        num_i := num_i + 1;
        integer_read(il1[num_i]);
      end;
      '2':
      begin //save
        integerArr_writeToFile(il1, num_i);
      end;
      '3':
      begin //load
        integerArr_readFromFileWhile(il1, num_i);
      end;
      '4':
      begin //view
        integerArr_write(il1, num_i);
      end;
    end;
  until c = '0';

end.
