{ Program izracunava ukupnu sumu novca i kamate koju ce korisnik kredita otplatiti
  ako dize kredit u iznosu koji se zadaje i uz kamatnu stopu koja se takodje zadaje.
  Program napisati u interaktivnom obliku. <-- POSTIZANJE INTERAKTIVNOSTI!!!
}

PROGRAM kredit;
{ program racuna kamatu i total kredita }

VAR
	iznos, { iznos kredita }
	kamata, { kamata u procentu }
	decimalno_kamata, { KAMATA DECIMALNO }
	iznos_kamate, { IZNOS KAMATE }
	total : real; { UKUPAN IZNOS PLACANJA }
BEGIN
	// unos podataka
	write('iznos kredita? ');
	readln(iznos);
	write('kamata u procentu? ');
	readln(kamata);

	writeln; // prazna linija

	// obrada
	decimalno_kamata := kamata / 100.0;
	iznos_kamate := iznos * decimalno_kamata;
	total := iznos + iznos_kamate;
	writeln('iznos kamate je ', iznos_kamate:5:2);
	writeln('puni iznos je ', total:8:2);
	readln;
END.
