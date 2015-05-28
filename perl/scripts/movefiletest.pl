#File gets stored in base folder
#if file doesn't exist, exit
#Set origfiledir,spool dir, report dir, origfilename and newfilename

#if original file doesn't exist, exit
#if directories don't exist, Create report dir, spool dir
#del spool file and copy orig file to there
#copy new file to report dir.  New file is orig with new name
#del orig file

use DBI;
use File::Copy;

open(l,'>>log.txt');

$origdir="c:/temp";
$spooldir=$origdir."/spool a";


$reportdir="c:/temp/report b";
$reportdiryear=$reportdir."/".GetYearString();
$reportdiryearmonth=$reportdiryear."/".GetMonthString();

$origfilename="5DollarCollateralTracking.xls";

$lasttradedate=GetLastTradeDate();
$newfilename="5DollarCollateralTracking_".$lasttradedate.".xls";

#First check if file exists, else quit

if(!-e $origdir."/".$origfilename)
{
	my $fn=$origdir."/".$origfilename;
	print l DateTimeString().": ERROR: File not found: $fn\n";
	exit;
}

#----------------------------------For Testing Purposes Only----------------------------------
mkdir "c:/temp/report b";
#----------------------------------For Testing Purposes Only----------------------------------


if(!-d $spooldir)	#if directory doesn't exist
{
	print l DateTimeString().": Creating dir: ".$spooldir."\n";
	mkdir $spooldir or die print l DateTimeString().": ERROR: Can't create dir ".$spooldir." \n";
}

if(!-d $reportdiryear)	#if directory doesn't exist
{
	print l DateTimeString().": Creating dir: ".$reportdiryear."\n";
	mkdir $reportdiryear or die print l DateTimeString().": ERROR: Can't create dir ".$reportdiryear."\n";
}

if(!-d $reportdiryearmonth)	#if directory doesn't exist
{
	print l DateTimeString().": Creating dir: ".$reportdiryearmonth."\n";
	mkdir $reportdiryearmonth or die print l DateTimeString().": ERROR: Can't create dir ".$reportdiryearmonth."\n";
}

#first delete file in spool if it's there
if(-e $spooldir."/".$origfilename)
{
	my $so=$spooldir."/".$origfilename;
	print l DateTimeString().": Deleting old spool file ".$so."\n";
	unlink $so or die print l DateTimeString().": ERROR: Couldn't delete spool file\n";
}

# Copy file to spool directory
print l DateTimeString().": Copying ".$origdir."/".$origfilename." to ".$spooldir."/".$origfilename."\n";
copy($origdir."/".$origfilename, $spooldir."/".$origfilename) or die print l DateTimeString().": ERROR: Spool Copy failed : $!\n";

# Copy file to report directory
print l DateTimeString().": Copying ".$origdir."/".$origfilename." to ".$reportdiryearmonth."/".$newfilename."\n";
copy($origdir."/".$origfilename, $reportdiryearmonth."/".$newfilename) or die print l DateTimeString().": ERROR: Report Copy failed : $!\n";

my $orf=$origdir."/".$origfilename;
print l DateTimeString().": Deleting original file ".$orf."\n";
unlink $orf;


close(l);

sub GetYearString()
{
	(my $sec, my $min, my $hour, my $mday, my $mon, my $year, my $wday, my $yday, my $isdst)= localtime();
	$year = $year + 1900; # number of years since 1900.
	return $year;
}

sub GetMonthString()
{
	(my $sec, my $min, my $hour, my $mday, my $mon, my $year, my $wday, my $yday, my $isdst) = localtime();

	my $monthnum = $mon + 1;
	 
	my %monthname = (
					  1 => 'Jan',
					  2 => 'Feb',
					  3 => 'Mar',
					  4 => 'Apr',
					  5 => 'May',
					  6 => 'Jun',
					  7 => 'Jul',
					  8 => 'Aug',
					  9 => 'Sep',
					 10 => 'Oct',
					 11 => 'Nov',
					 12 => 'Dec',
	);
	return $monthname{$monthnum};
}

sub DateTimeString()
{
  (my $sec, my $min, my $hour, my $mday, my $mon, my $year, my $wday, my $yday, my $isdst)
    = localtime();

  $mon = $mon + 1; #month is from 0 to 11.
  $year = $year + 1900; # number of years since 1900.

  return ("$mon-$mday-$year--$hour$min$sec");  
}

sub GetLastTradeDate()
{
	my $conn="DBI:ODBC:Driver={sql server}; server=maplesqldev; database=alanprac; trusted_connection=yes";
	my $dbh=DBI->connect($conn) or die print l DateTimeString(). "DBCONNECT ERROR: $!\n";

	my $sql="exec spPrevBusinessDay";

	my $sth=$dbh->prepare($sql) or die print l DateTimeString(). "DBPREPARE ERROR: $!\n";
	$sth->execute() or die print l DateTimeString(). "DBEXECUTE ERROR: $!\n";
	
	my $msg = $sth ->fetchrow_array;
	$sth->finish();
	
	#date from stored proc comes in this format 2014-06-24 00:00:00.000
		
	@datepartarr = split(/ /, $msg);	#First we split into array where the space is to get the datepart
		
	$datepartarr[0]=~s/-//gi;	#Then we remove the hyphens
	return $datepartarr[0];
}







