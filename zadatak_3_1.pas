// Napisi program koji racuna obim O trougla koji formiraju 3 tacke u koordinatnom sistemu.

program zadatak_3_1;
var
	x1, y1, x2, y2, x3, y3 : integer;
	s1, s2, s3 : real;
	O : real;
begin
{ unos koordinata tacaka -- zadavanje vrijednosti varijabli }
	//writeln('Unesite prvu tacku');
	write('Unesite x i y koordinatu 1. tacke (redom x, pa SPACE, y, pa ENTER): ');
	readln(x1, y1);
	
	//writeln('Unesite drugu tacku');
	write('Unesite x i y koordinatu 2. tacke (redom x, pa SPACE, y, pa ENTER): ');
	readln(x2, y2);
	
	//writeln('Unesite trecu tacku');
	write('Unesite x i y koordinatu 3. tacke (redom x, pa SPACE, y, pa ENTER): ');
	readln(x3, y3);
	
{ obrada unesenih podataka -- sracunavanje vrijednosti obima trougla }
	s1 := sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2)); // rastojanje 1-2 tacka
	s2 := sqrt((x2-x3)*(x2-x3) + (y2-y3)*(y2-y3)); // rastojanje 2-3 tacka
	s3 := sqrt((x3-x1)*(x3-x1) + (y3-y1)*(y3-y1)); // rastojanje 3-1 tacka
	O := s1+s2+s3; // zbir sva tri rastojanja je obim trougla
	
{ ispis podataka dobijenih obradom -- ispis obima trougla }
	//writeln('Obim je ', O);
	write('Za unesene tacke/tjemena trougla, obim trougla je: O = ', O:5:2);
	readln();
end.

{
	zadatak_3_1, Pascal - rextester
	https://rextester.com/ZHFEYY3882
}
