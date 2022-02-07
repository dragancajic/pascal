{
	Treba izracunati vrijednosti izraza u kojima figurise PI:
	2PI, sin(2PI), cos(2PI) = ?
	Rezultate prikazati u eksponencijalnoj formi i u formi realnog broja.
}

PROGRAM dvapi;

BEGIN
	writeln(2*pi, sin(2*pi), cos(2*pi));
	writeln(2*pi:8:2, sin(2*pi):8:2, cos(2*pi):8:2);

	writeln; // prazna linija

	writeln(2*pi:10);
	writeln(2*pi:10:4);

	writeln; // prazna linija

	writeln(pi:10);
	writeln(pi:10:4);

	readln;
END.
