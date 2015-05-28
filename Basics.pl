
use File::Copy; 
use LWP::Simple;



if (-e $File) { }	#if File exists
if (-f $File) { }	#if its a File 
if (-d $File) { }	#if its a Directory

# copy($file1, $file2);
# rename($file1, $file2);
# mkdir $reportdiryear or die print l DateTimeString().": ERROR: Can't create dir ".$reportdiryear."\n";
# unlink $so or die print l DateTimeString().": ERROR: Couldn't delete spool file\n";



# --------------------- s/pattern/replace with/g  Search and replace 	---------------------

# open(F,$FileName);  
# $data=<F>; 
# close(F);
# open(N, ">$FileNameToEdit");
# $data=~ s/(.{1,1000})/$1\n/g;



# --------------------- Working with Files ---------------------

# open(I,"SQLQuery6.sql");
# @lines=<I>;	Puts into array
# $data=<I>; Puts into string
# close(I);



sub DateTimeString()
{
  (my $sec, my $min, my $hour, my $mday, my $mon, my $year, my $wday, my $yday, my $isdst)
    = localtime();

  $mon = $mon + 1; #month is from 0 to 11.
  $year = $year + 1900; # number of years since 1900.

  return ("$mon-$mday-$year--$hour$min$sec");  
}

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







