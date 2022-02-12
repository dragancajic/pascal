// Primjer 07. Ispisi aritmeticku sredinu clanova niza koji su manji od aritmeticke
// sredine svih clanova niza.

{ ZAGLAVLJE PROGRAMA -- naziv programa i fajla u kojem je smjesten }
PROGRAM primjer_07;

{ DEKLARACIJA KONSTANTI I PROMJENLJIVIH }
CONST
	n = 4;                         // broj clanova niza
VAR
	i,                             // pomocna varijabla
	suma : integer;                // suma elemenata niza
	asr : real;                    // aritmeticka sredina svih elemenata niza
	bmanjih,                       // broj elemenata niza manjih od aritmeticke sredine
	smanjih : integer;             // suma elemenata niza manjih od aritmeticke sredine
	asrmanjih : real;              // aritmeticka sredina elemenata manjih od asr <- LOOK!
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
	
	{ OBRADA I ISPIS REZULTATA MEDJUOBRADE / elementi manji od aritmeticke sredine }
	bmanjih := 0;
	smanjih := 0;
	writeln('Elementi manji od aritmeticke sredine su:');
	FOR i := 1 TO n DO
		BEGIN
			IF niz[i] < asr THEN
				BEGIN
					writeln('niz[', i, '] = ', niz[i]);
					bmanjih := bmanjih + 1;
					smanjih := smanjih + niz[i];
				END;
		END;
	
	writeln; // prazna linija
	writeln('^` ^` ^` ^` ^` ^` ^` ^` ^` ^`'); { malo ukra$a(vanja) :-) }
	writeln; // prazna linija

	{ ISPIS REZULTATA MEDJUOBRADE / POMOCNI PODACI }
	{ broj i suma elemenata niza manjih od aritmeticke sredine }
	writeln('Broj elemenata niza manjih od aritmeticke sredine: ', bmanjih);
	writeln('Suma elemenata niza manjih od aritmeticke sredine: ', smanjih);

	{ FINALNO IZRACUNAVANJE I ISPIS TRAZENOG PODATKA }
	{ aritmeticka sredina elemenata manjih od aritmeticke sredine svih elemenata }
	asrmanjih := smanjih * 1.0 / bmanjih;
	writeln('Aritmeticka sredina clanova manjih od ukupne aritmeticke sredine:');
	writeln('asrmanjih = ', asrmanjih:5:2);

	readln;
END.

{
	primjer_07, Pascal - rextester
	https://rextester.com/DVL67436
}
