// Primjer 04. Nadji sumu reciprocnih vrijednosti clanova niza.

{ ZAGLAVLJE PROGRAMA -- naziv programa i fajla u kojem je smjesten }
PROGRAM primjer_04a;

{ DEKLARACIJA KONSTANTI I PROMJENLJIVIH }
CONST
	n = 4;                         // broj clanova niza
VAR
	i : integer;                   // pomocna varijabla <-- LOOK!
	suma : real;                   // suma elemenata niza
	nule : boolean;                // svi elementi niza su nule??
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
	suma := 0.0;
	nule := true;
	FOR i := 1 TO n DO
		BEGIN
			write('niz[', i, '] = ');
			readln(niz[i]);

			IF niz[i] <> 0 THEN
				BEGIN
					suma := suma + 1.0 / niz[i];
					nule := false;
				END
			ELSE
				BEGIN
					writeln('NULA (0) nije dozvoljeni element!');
					writeln('Dijeljenje nulom nije dozvoljeno!');
				END;
		END;

	{ OBRADA / p r o c e s s i n g / IZRACUNAVANJE / c o m p u t i n g }
	{ nadjimo sumu u kojoj cemo uzimati inverzne/reciprocne elemente niza kao sabirke }
	{
	suma := 0.0;
	FOR i := 1 TO n DO
		suma := suma + 1.0 / niz[i];
	}
	writeln; // prazna linija
	writeln('~- ~- ~- ~- ~- ~- ~- ~- ~- ~- ~- ~- ~-~'); { malo ukra$a(vanja) :-) }
	writeln; // prazna linija

	{ ISPIS REZULTATA OBRADE / suma reciprocnih vrijednosti clanova niza }
	IF nule = false THEN
		writeln('Suma reciprocnih clanova niza je: ', suma:5:2)
	ELSE
		writeln('SUMA NEPOZNATA jer su clanovi niza nule!');
	readln;
END.

{
	primjer_04a, Pascal - rextester
	https://rextester.com/OOLYU57161
}
