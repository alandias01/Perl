use dbi;

open(I,'>>log.txt');

@a=LoadData("select * from Positions");

foreach $item(@a)
{
	print I $item." eee\n";
}

sub LoadData()
{
	$conn="DBI:ODBC:Driver={sql server}; server=maplesqldev; database=alanprac; trusted_connection=yes";
	$dbh=DBI->connect($conn) or die print I "CONNECT ERROR: $!\n";

	$sql=$_[0];	#this just takes in sql from the argument
	#$sql="exec spPrevBusinessDay";
	
	$sth=$dbh->prepare($sql) or die print I "PREPARE ERROR:. $!\n";
	$sth->execute() or die print I "EXECUTE ERROR: $!\n";
	
	#or instead of loop so you get 1 value $msg = $sth ->fetchrow_array;
	while(my @row=$sth->fetchrow_array())
	{
		push(@collection,$row[0]);
	}
	
	
	
	$sth->finish();
	return @collection;
}
close(I);

