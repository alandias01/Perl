use DBI;

$db_s="maplesqldev";
$db_n="alanprac";
$db_u="dia";
$dbh=DBI->connect("DBI:ODBC:Driver={SQL Server}; Server=$db_s; Database=$db_n; $UID=$db_u; trusted_connection=yes");

$sql="select * from positions";

$sth=$dbh->prepare($sql);
$sth->execute();

my($a, $b, $c);

$sth->bind_columns(\$a, \$b, \$c);

open(I,">aa.txt");

while($sth->fetch())
{
push(@c1, $a);
push(@c2, $b);
push(@c3, $c);
}

print I "$c1[0], $c2[0], $c3[0] \n";
print I "$c1[1], $c2[1], $c3[1]";

close(I);