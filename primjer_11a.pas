// Primjer 11a. Nadji sumu elemenata niza s parnim i sumu s neparnim indeksima.

{ ZAGLAVLJE PROGRAMA -- naziv programa i fajla u kojem je smjesten }
PROGRAM primjer_11a;

{ DEKLARACIJA KONSTANTI I PROMJENLJIVIH }
CONST
	n = 4;                         // broj clanova niza
VAR
	i,                             // pomocna varijabla
	biparni,                       // broj elemenata niza s parnim indeksima
	siparni,                       // suma elemenata niza s parnim indeksima
	bineparni,                     // broj elemenata niza s neparnim indeksima
	sineparni : integer;           // suma elemenata niza s neparnim indeksima
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
	writeln('`` `` `` `` `` `` `` `` `` `` `` `` ``'); { malo ukra$a(vanja) :-) }
	writeln; // prazna linija

	{ OBRADA / p r o c e s s i n g / IZRACUNAVANJE / c o m p u t i n g }
	{ index MOD 2 = 0  (ostatak dijeljenja, u ovom slucaju sa 2, je 0) ---> paran index }
	biparni := 0;
	siparni := 0;
	writeln('Elementi niza sa parnim indeksima su:');
	FOR i := 1 TO n DO
		BEGIN
			IF i MOD 2 = 0 THEN
				BEGIN
					writeln('niz[', i, '] = ', niz[i]);
					biparni := biparni + 1;
					siparni := siparni + niz[i];
				END;
		END;
	
	writeln; // prazna linija
	writeln('`` `` `` `` `` `` `` `` `` `` `` `` ``'); { malo ukra$a(vanja) :-) }
	writeln; // prazna linija

	{ OBRADA / p r o c e s s i n g / IZRACUNAVANJE / c o m p u t i n g }
	{ index MOD 2 <> 0 (ostatak dijeljenja, u ovom slucaju sa 2, nije 0) -> neparan index }
	bineparni := 0;
	sineparni := 0;
	writeln('Elementni niza s neparnim indeksima su:');
	FOR i := 1 TO n DO
		BEGIN
			IF i MOD 2 <> 0 THEN
				BEGIN
					writeln('niz[', i, '] = ', niz[i]);
					bineparni := bineparni + 1;
					sineparni := sineparni + niz[i];
				END;
		END;

	writeln; // prazna linija
	writeln('~- ~- ~- ~- ~- ~- ~- ~- ~- ~- ~- ~- ~-'); { malo ukra$a(vanja) :-) }
	writeln; // prazna linija

	{ ISPIS REZULTATA OBRADE / suma elemenata niza sa parnim indeksima }
	writeln('Broj elemenata niza sa parnim indeksima: ', biparni);
	writeln('Suma elemenata niza sa parnim indeksima: ', siparni);

	writeln; // prazna linija

	{ ISPIS REZULTATA OBRADE / suma elemenata niza s neparnim indeksima }
	writeln('Broj elemenata niza s neparnim indeksima: ', bineparni);
	writeln('Suma elemenata niza s neparnim indeksima: ', sineparni);

	readln;
END.

{
	primjer_11a, Pascal - rextester
	https://rextester.com/JLMD67176
}
