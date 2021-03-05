// A -- Cjelobrojna aritmetika s konstantama
// B -- Aritmetika s cjelobrojnom vrijednoscu promjenljivih

PROGRAM aritmetika;

CONST
	A1 = 17;
	B1 = 8;
	BLANK_CHARACTER = ' ';
VAR
	a, b : integer;

BEGIN
	// K O N S T A N T E
	// A1 -- ispis u jednom redu
	write((A1+B1), BLANK_CHARACTER, A1-B1, BLANK_CHARACTER, A1*B1,
		BLANK_CHARACTER, A1 div B1, BLANK_CHARACTER, A1 mod B1);

	writeln; // prelazak u sljedeci red
	writeln;

	// A2 -- ispis na zasebnoj liniji
	writeln(A1 + B1);
	writeln(A1 - B1);
	writeln(A1 * B1);
	writeln(A1 div B1);
	writeln(A1 mod B1);

	writeln; // prelazak u sljedeci red
	writeln;

	// P R O M J E N LJ I V E
	writeln(' >>> Unesite cjelobrojne vrijednosti za a i b');
	write('{brojeve razdvojte pritiskom na SPACE ili ENTER}: ');
	readln(a, b); // b ne moze biti nula(0)!

	writeln; // prelazak u sljedeci red
	writeln;

	// B1 -- ispis u jednom redu
	IF b = 0 THEN
		writeln('Dijeljenje nulom nije dozvoljeno!')
	ELSE
		write((a+b), BLANK_CHARACTER, a-b, BLANK_CHARACTER, a*b,
			BLANK_CHARACTER, a div b, BLANK_CHARACTER, a mod b);
	
	writeln; // prelazak u sljedeci red
	writeln;

	// B2 -- ispis na zasebnoj liniji
	writeln('    zbir a + b = ', a + b);
	writeln(' razlika a - b = ', a - b);
	writeln('proizvod a * b = ', a * b);

	// provjera na dijeljenje nulom (b <> 0, ne smije biti b = 0)
	IF b = 0 THEN
		writeln('Dijeljenje nulom nije dozvoljeno!')
	ELSE
		BEGIN
			writeln('kolicnik a : b je ', a div b);
			writeln(' ostatak a : b je ', a mod b);
		END;
	readln;
END.
