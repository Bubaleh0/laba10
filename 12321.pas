var
  a, b, c, ds, x1, x2 : real;
  
procedure Solve(var n1, n2 : real);
begin
  n1 := (-b + sqrt(ds)) / (2 * a);
  n2 := (-b - sqrt(ds)) / (2 * a);
end;

function D(n1, n2, n3 : real) : real;
begin 
  D := sqr(n2) - 4 * n1 * n3;
end;

begin
  repeat
    writeln('Введите коэффициенты квадратного уравнения');
    readln(a, b, c);
    if (a = 0) and (b = 0) then
      if (c = 0) then
      begin
        writeln('Уравнение имеет бесконечное количество корней');
        exit
      end
      else
      begin
        writeln('Данное выражение - неверное тождество');
        exit
      end;
   until (a <> 0) or (b <> 0);
   ds := D(a, b, c);
   if a = 0 then writeln('Уравнение не является квадратным, его корень = ', (-c / b):6:2) else
     if ds < 0 then writeln('Вещественных корней нет') else
     begin
        Solve(x1, x2);
        if ds = 0 then writeln('Корни квадратного уравнения:', x1:6:2, ' Кратности 2') else
          writeln('Корни квадратного уравнения: ', x1:6:2, x2:6:2)
     end;
   readln
end.