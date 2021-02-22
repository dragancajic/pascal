// Напиши програм који за унесене странице a и b рачуна обим и површину правоугоника.

program zadatak_1_2;
var a, b : integer;
begin
	//writeln('Unesite stranice');
	writeln('Унесите странице правоугаоника');
	
	readln(a, b);
	//writeln('Obim pravougaonika je : ', 2*(a+b));
	//writeln('Povrsina pravougaonika je ', a*b);
	writeln('За странице ', a, ' и ', b, ' обим правоугаоника је ', 2*(a+b), '.');
	writeln('За странице ', a, ' и ', b, ' површина правоугаоника је ', a*b, '.');
end.
