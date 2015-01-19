program textfile;

const
  max_i = 100;

type

  integerArr = array[1..max_i] of integer;

  integer_bin_file = file of integer;

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

  procedure integerArr_writeToBinFile(var il: integerArr; n: integer);
  var
    i: integer;
    f: integer_bin_file;
  begin
    if n > 0 then
    begin
      Assign(f, 'dataint.dat');
      rewrite(f);
      for i := 1 to n do
      begin
        Write(f, il[i]);
      end;
      Close(f);
    end;
  end;

  procedure integerArr_readFromBinFileWhile(var il: integerArr; var n: integer);
  var
    f: integer_bin_file;
  begin
    n := 0;
    Assign(f, 'dataint.dat');
    reset(f);
    while not EOF(f) do
    begin
      n := n + 1;
      Read(f, il[n]);
    end;
    Close(f);
  end;

  procedure menu(var n: integer);
  begin
    writeln;
    writeln('MENU Count(', n, ')');
    writeln('1) Add');
    writeln('4) View');
    writeln('5) Save (Bin)');
    writeln('6) Load (Bin)');
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
      '4':
      begin //view
        integerArr_write(il1, num_i);
      end;
      '5':
      begin //bin save
        integerArr_writeToBinFile(il1, num_i);
      end;
      '6':
      begin //bin load
        integerArr_readFromBinFileWhile(il1, num_i);
      end;
    end;
  until c = '0';

end.
