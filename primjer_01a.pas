// Primjer 01. U nizu od n clanova nadji i ispisi najveci clan.

{ ZAGLAVLJE PROGRAMA -- naziv programa i fajla u kojem je smjesten }
PROGRAM primjer_01a;

{ DEKLARACIJA KONSTANTI I PROMJENLJIVIH }
CONST
	n = 4;                         // broj clanova niza
VAR
	i,                             // pomocna varijabla
	max : integer;                 // maksimalni element
	niz : ARRAY [1..n] OF integer; // deklaracija niza

{ pocetak tijela programa }
BEGIN
	{ UNOS PODATAKA / clanova niza }
	writeln('Unesi elemente niza od ', n, ' clan(ov)a:');
	writeln; // prazna linija

	{
		za prethodno zadati broj clanova niza, izvrsimo inicijalizaciju tog
		niza koristeci neku od ciklickih struktura, na primjer FOR petlju:
	}
	FOR i := 1 TO n DO
		BEGIN
			write('niz[', i, '] = ');
			readln(niz[i]);
		END;

	{ OBRADA / p r o c e s s i n g / IZRACUNAVANJE / c o m p u t i n g }
	{ nadjimo najveci clan niza, pretpostavljajuci da je to npr. prvi (1.) clan }
	max := niz[1];
	FOR i := 2 TO n DO
		BEGIN
			IF niz[i] > max THEN
				max := niz[i]
		END;

	writeln; // prazna linija
	writeln('~- ~- ~- ~- ~- ~- ~- ~-'); { malo ukra$a(vanja) :-) }
	writeln; // prazna linija

	{ ispis rezultata obrade / najveci clan niza }
	writeln('Najveci clan niza je: ', max);
	readln;
END.

{
	primjer_01a, Pascal - rextester
	https://rextester.com/DIRYV16572
}
