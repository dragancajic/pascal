// A1 -- Cjelobrojna aritmetika s konstantama

PROGRAM aritmetika;

CONST
	A1 = 17;
	B1 = 8;
	BLANK_CHARACTER = ' ';
//VAR

BEGIN
	// A1 -- ispis u jednom redu
	write((A1+B1), BLANK_CHARACTER, A1-B1, BLANK_CHARACTER, A1*B1,
		BLANK_CHARACTER, A1 div B1, BLANK_CHARACTER, A1 mod B1);
	
	writeln; // prelazak u sljedeci red
	writeln;

	// A1 -- ispis na zasebnoj liniji
	writeln(A1 + B1);
	writeln(A1 - B1);
	writeln(A1 * B1);
	writeln(A1 div B1);
	writeln(A1 mod B1);
	
	readln;
END.
