var i, n, mysign, nsign: integer;
   ismon: boolean;
   a: array of integer;
const
  alfabet = ['а','б','в','г','д','е','ё','ж','з','и','й','к','л','м','н','о','п','р','с','т','у','ф','х','ц','ч','ш','щ','ъ','ы','ь','э','ю','я'];
var
  strn: string;
  sim: integer;
  w: integer;
  flagletter: boolean;
begin
  writeln('Введите строку: ');
  Readln(strn);
  strn:= strn + ' ';
  sim:= 0; 
  w:= 0;
  flagletter:= false;
  for i:= 1 to Length(strn) do
    begin
      if strn[i] in alfabet then
        begin
          inc(sim);
          flagletter:= true;
        end;
         if (strn[i] = ' ') and flagletter then
           begin
             inc(w);
             flagletter:= false;
           end;
        end;
  writeln('Количество букв в строке: ',sim);
  writeln('Количество слов в строке: ',w);
  readln;
end.