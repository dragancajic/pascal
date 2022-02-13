// Primjer 10. Ispisi broj parnih elemenata niza i njihovu sumu.

{ ZAGLAVLJE PROGRAMA -- naziv programa i fajla u kojem je smjesten }
PROGRAM primjer_10;

{ DEKLARACIJA KONSTANTI I PROMJENLJIVIH }
CONST
	n = 4;                         // broj clanova niza
VAR
	i,                             // pomocna varijabla
	bparnih,                       // broj parnih elemenata niza
	sparnih : integer;             // suma parnih elemenata niza
	niz : ARRAY [1..n] OF integer; // deklaracija niza

{ pocetak tijela programa }
BEGIN
	{ UNOS PODATAKA / elemenata niza }
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

	writeln; // prazna linija
	writeln('`` `` `` `` `` `` `` `` `` ``'); { malo ukra$a(vanja) :-) }
	writeln; // prazna linija

	{ OBRADA / p r o c e s s i n g / IZRACUNAVANJE / c o m p u t i n g }
	{ broj MOD 2 = 0 (ostatak dijeljenja, u ovom slucaju sa 2, je 0) -> paran broj }
	bparnih := 0;
	sparnih := 0;
	writeln('Parni elementi niza su:');
	FOR i := 1 TO n DO
		BEGIN
			IF niz[i] MOD 2 = 0 THEN
				BEGIN
					writeln('niz[', i, '] = ', niz[i]);
					bparnih := bparnih + 1;
					sparnih := sparnih + niz[i];
				END;
		END;
	
	writeln; // prazna linija
	writeln('~- ~- ~- ~- ~- ~- ~- ~- ~- ~-'); { malo ukra$a(vanja) :-) }
	writeln; // prazna linija

	{ ISPIS REZULTATA OBRADE / broj i suma parnih elemenata niza }
	writeln('Broj parnih elemenata niza: ', bparnih);
	writeln('Suma parnih elemenata niza: ', sparnih);

	readln;
END.

{
	primjer_10, Pascal - rextester
	https://rextester.com/YHAIM74313
}
