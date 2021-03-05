// Program sabira odabrani broj proizvoljno unesenih sabiraka.

PROGRAM saberi;

VAR
	i, no, sabirak, suma : integer;
BEGIN
	write(' unesi broj sabiraka: ');
	read(no);
	suma := 0;
	writeln(' unesi redom sabirke [sabirak, pa ENTER, ...]:');
	FOR i := 1 TO no DO
		BEGIN
			readln(sabirak);
			suma := suma + sabirak;
		END;
	writeln(' zbir je: ', suma);
	readln;
END.
