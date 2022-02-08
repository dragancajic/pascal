// Primjer 02. Nadji najmanji element niza, njegov indeks i ispisi ih.

{ ZAGLAVLJE PROGRAMA -- naziv programa i fajla u kojem je smjesten }
PROGRAM primjer_02;

{ DEKLARACIJA KONSTANTI I PROMJENLJIVIH }
CONST
	n = 4;                         // broj clanova niza
VAR
	i,                             // pomocna varijabla
	imin,                          // indeks minimalnog elementa
	min : integer;                 // minimalni element
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
	{ nadjimo najmanji element niza, pretpostavljajuci da je to npr. prvi (1.) element }
	min := niz[1];
	imin := 1; { sacuvajmo indeks 1. elementa, uz pretpostavku da je minimalni element }
	FOR i := 2 TO n DO
		BEGIN
			IF niz[i] < min THEN
				BEGIN // bez BEGIN and END, necemo dobiti tacan indeks minimuma! ZASTO?
					min := niz[i]; // Koliko linija koda imamo u IF-THEN iskazu, a koliko
					imin := i; // smo imali u prethodnom primjeru -> PROGRAM primjer_01a;
				END; // kada smo trazili maksimalni element niza? OBRATI PAZNJU! <- LOOK!
		END;

	writeln; // prazna linija
	writeln('~- ~- ~- ~- ~- ~- ~- ~- ~- ~- ~- ~-~'); { malo ukra$a(vanja) :-) }
	writeln; // prazna linija

	{ ISPIS REZULTATA OBRADE / najmanji element niza i njegov indeks }
	writeln('Najmanji element niza je: ', min);
	writeln('Indeks najmanjeg elementa niza je: ', imin);
	readln;
END.

{
	primjer_02, Pascal - rextester
	https://rextester.com/JVU83104
}
