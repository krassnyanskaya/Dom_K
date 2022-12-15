var  n, mysign, nsign: integer;
   ismon: boolean;
   a: array of integer;
begin
 Write('Введите размер массива: ');
 println(n);
 SetLength(a, n);
 println('Введите Элементы массива: ');
 for var i := 0 to n - 1 do printLn(a[i]);
 mysign := sign(a[1] - a[0]);
 if mysign >= 0 then mysign := 1;
 ismon := true;
 for var i := 2 to n - 1 do
 begin
   nsign := sign(a[i] - a[i - 1]);
   if nsign >= 0 then nsign := 1;
   if nsign <> mysign then ismon := false;
 end;
 if ismon then println('Массив монотонный') else println('Массив не монотонный'); 
end.