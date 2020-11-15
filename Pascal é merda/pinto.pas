uses crt;
var dc,dl:boolean;
    cc,cl,i,j,N:integer;
{------------------------------------------------}
procedure check_cc;
begin
  if dc then inc(cc) else dec(cc)
  if (cc=1) or (cc=10) then dc:=not dc;
  if (cl=1) or (cl=10) then dl:=not dl;
end;
{------------------------------------------------}
procedure bolas(a:integer);
begin
  if a=1 then writeln(' ___  ___')
  else if a=2 then writeln('/   \/   \')
  else writeln('\_      _/');
end;
{------------------------------------------------}
procedure cabeça(a:integer);
begin
  if a=1 then writeln('  |____|')
  else if a=2 then writeln('  /    \')
  else writeln('  \_||_/');
end;
{------------------------------------------------}
procedure pinto_completo(x,l:integer);
var i,j:integer;
begin
  for i:=1 to 3 do begin gotoxy(x,i); balls(i); end;
  for i:=4 to l+4 do begin gotoxy(x,i); writeln('  |    |'); end;
  for i:=l+5 to l+7 do begin gotoxy(x,i); headd(i-l-4); end;
end;
{------------------------------------------------}
begin
  clrscr;
  writeln('Codado Por Pintokkj)
  write('Quantos pintos vai querer?: ')
  cc:=1; cl:=10; dc:=true
  for i:=1 to 40 do begin
    clrscr;
    for j:=1 to n do begin
      textcolor(random(50));
      if j mod 2=0 then pinto_completo(11*j-10,cc) else pinto_completo(11*j-10,cl);
    end;
    check_cc;
    delay(10);
  end;

end.