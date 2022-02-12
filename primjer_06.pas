// Primjer 06. Ispisi broj elemenata niza vecih od aritmeticke sredine i njihovu sumu.

{ ZAGLAVLJE PROGRAMA -- naziv programa i fajla u kojem je smjesten }
PROGRAM primjer_06;

{ DEKLARACIJA KONSTANTI I PROMJENLJIVIH }
CONST
	n = 4;                         // broj clanova niza
VAR
	i,                             // pomocna varijabla
	suma : integer;                // suma elemenata niza
	asr : real;                    // aritmeticka sredina
	bvecih,                        // broj elemenata niza vecih od aritmeticke sredine
	svecih : integer;              // suma elemenata niza vecih od aritmeticke sredine
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

	{ OBRADA / p r o c e s s i n g / IZRACUNAVANJE / c o m p u t i n g }
	{ nadjimo prvo zbir elemenata, pa ga podijelimo s brojem elemenata -> aritmeticka sredina }
	suma := 0;
	asr := 0.0;
	FOR i := 1 TO n DO
		suma := suma + niz[i];
	
	asr := suma * 1.0 / n;
	
	writeln; // prazna linija
	writeln('~- ~- ~- ~- ~- ~- ~- ~- ~- ~-'); { malo ukra$a(vanja) :-) }
	writeln; // prazna linija

	{ ISPIS REZULTATA MEDJUOBRADE / suma elemenata i aritmeticka sredina }
	writeln('Suma elemenata niza je: ', suma);
	writeln('Aritmeticka sredina je: ', asr:5:2);

	writeln; // prazna linija
	writeln('`` `` `` `` `` `` `` `` `` ``'); { malo ukra$a(vanja) :-) }
	writeln; // prazna linija
	
	{ OBRADA I ISPIS REZULTATA MEDJUOBRADE / elementi veci od aritmeticke sredine }
	bvecih := 0;
	svecih := 0;
	writeln('Elementi veci od aritmeticke sredine su:');
	FOR i := 1 TO n DO
		BEGIN
			IF niz[i] > asr THEN
				BEGIN
					writeln('niz[', i, '] = ', niz[i]);
					bvecih := bvecih + 1;
					svecih := svecih + niz[i];
				END;
		END;
	
	writeln; // prazna linija
	writeln('^` ^` ^` ^` ^` ^` ^` ^` ^` ^`'); { malo ukra$a(vanja) :-) }
	writeln; // prazna linija

	{ ISPIS REZULTATA FINALNE OBRADE / TRAZENIH PODATAKA }
	{ broj i suma elemenata niza vecih od aritmeticke sredine }
	writeln('Broj elemenata niza vecih od aritmeticke sredine: ', bvecih);
	writeln('Suma elemenata niza vecih od aritmeticke sredine: ', svecih);

	readln;
END.

{
	primjer_06, Pascal - rextester
	https://rextester.com/MHKG87655
}
