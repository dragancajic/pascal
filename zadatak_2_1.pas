// Napisi program koji provjerava da li je uneseni broj pozitivan ili negativan.

program zadatak_2_1;
var a : integer;
begin
	write('Unesite broj (pa pritisnite ENTER): ');
	readln(a);
	
	if a > 0 then
		writeln('Broj ', a, ' je pozitivan.')
	else if a < 0 then
		writeln('Broj ', a, ' je negativan.')
	else
		writeln('Uneseni broj je 0 (nula).');
	
	writeln();
	
	if a = 0 then
		writeln('Nula je neutralan broj, niti je pozitivan niti negativan!');
	readln();
end.

{
	zadatak_2_1, Pascal - rextester
	http://rextester.com/XNG90120
	http://rextester.com/GPM38686
}
