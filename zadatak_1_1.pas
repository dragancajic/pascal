// Napisi program koji racuna zbir 2 unesena cijela broja.

program zadatak_1_1;
var a, b : integer;
begin
	writeln('Unesite 2 cijela broja:');
	{ Brojeve unositi na posebnoj liniji, tj. nakon prvog br. pritisnuti ENTER }
	readln(a, b);
	//writeln('Zbir brojeva je: ', a+b);
	writeln('Zbir brojeva ', a, ' i ', b, ' je ', a+b, '.');
	readln();
end.
