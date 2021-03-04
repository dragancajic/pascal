// Napisi program koji za unesene stranice a i b racuna obim i povrsinu pravougaonika.

program zadatak_1_2;
var a, b : integer;
begin
	writeln('Unesite stranice pravougaonika:');
	
	readln(a, b);
	//writeln('Obim pravougaonika je : ', 2*(a+b));
	//writeln('Povrsina pravougaonika je ', a*b);
	writeln('Za stranice ', a, ' i ', b, ' obim pravougaonika je ', 2*(a+b), '.');
	writeln('Za stranice ', a, ' i ', b, ' povrsina pravougaonika je ', a*b, '.');
	readln(); // potrebno staviti prilikom rada u Dev-Pascal v1.9.2!
end.

{
	zadatak_1_2, Pascal - rextester
	https://rextester.com/JMXGA21101
}
