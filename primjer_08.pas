// Primjer 08. Ispisi sumu parnih elemenata niza vecih od aritmeticke sredine.

{ ZAGLAVLJE PROGRAMA -- naziv programa i fajla u kojem je smjesten }
PROGRAM primjer_08;

{ DEKLARACIJA KONSTANTI I PROMJENLJIVIH }
CONST
	n = 4;                         // broj clanova niza
VAR
	i,                             // pomocna varijabla
	suma : integer;                // suma elemenata niza
	asr : real;                    // aritmeticka sredina
	bpvecih,                       // broj parnih elemenata niza vecih od aritmeticke sredine
	spvecih : integer;             // suma parnih elemenata niza vecih od aritmeticke sredine
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
	
	{ OBRADA I ISPIS REZULTATA MEDJUOBRADE / parni elementi veci od aritmeticke sredine }
	bpvecih := 0;
	spvecih := 0;
	writeln('Parni elementi veci od aritmeticke sredine su:');
	FOR i := 1 TO n DO
		BEGIN
			IF (niz[i] > asr) AND (niz[i] MOD 2 = 0) THEN
				BEGIN
					writeln('niz[', i, '] = ', niz[i]);
					bpvecih := bpvecih + 1;
					spvecih := spvecih + niz[i];
				END;
		END;
	
	writeln; // prazna linija
	writeln('^` ^` ^` ^` ^` ^` ^` ^` ^` ^`'); { malo ukra$a(vanja) :-) }
	writeln; // prazna linija

	{ ISPIS REZULTATA FINALNE OBRADE / TRAZENIH PODATAKA }
	{ broj i suma parnih elemenata niza vecih od aritmeticke sredine }
	writeln('Broj parnih elemenata niza vecih od aritmeticke sredine: ', bpvecih);
	writeln('Suma parnih elemenata niza vecih od aritmeticke sredine: ', spvecih);

	readln;
END.

{
	primjer_08, Pascal - rextester
	https://rextester.com/WJXG50451
}
