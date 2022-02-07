// Napisi program koji provjerava da li je uneseni broj djeljiv sa 5.

program zadatak_2_2;
var a : integer;
begin
	//writeln('Unesi broj');
	write('Unesite broj (pa pritisnite ENTER): ');
	readln(a);
	if a mod 5 = 0 then
		//writeln('Djeljiv')
		writeln('Broj ', a, ' je djeljiv brojem 5 (bez ostatka).')
	else
		//writeln('Nije djeljiv');
		writeln('Broj ', a, ' nije djeljiv brojem 5.');
	readln; // potrebno staviti prilikom rada u Dev-Pascal v1.9.2!
end.

{
	zadatak_2_2b, Pascal - rextester
	https://rextester.com/ZLEI7068
	https://rextester.com/ZHUR37328
}
