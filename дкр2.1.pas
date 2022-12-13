var i, n, mysign, nsign: integer;
   ismon: boolean;
   a: array of integer;
begin
 Write('Введите размер массива: '); ReadLn(n);
 SetLength(a, n);
 WriteLn('Введите Элементы массива: ');
 for i := 0 to n - 1 do ReadLn(a[i]);
 mysign := sign(a[1] - a[0]);
 if mysign >= 0 then mysign := 1;
 ismon := true;
 for i := 2 to n - 1 do
 begin
   nsign := sign(a[i] - a[i - 1]);
   if nsign >= 0 then nsign := 1;
   if nsign <> mysign then ismon := false;
 end;
 if ismon then WriteLn('Массив монотонный') else WriteLn('Массив не монотонный'); 
end.