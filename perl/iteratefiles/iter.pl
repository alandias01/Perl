#!/usr/bin/perl -w
use File::Basename;

open(j,">r.txt");
@files = <*>;

foreach $file (@files) 
{	
	$fname="$file";
	if($fname=~m/\.(cs|config|txt)$/)
	{
		print j "-------------------".$fname."-----------------\n";
		open(tmp,$file);
		@lines=<tmp>;

		foreach $line(@lines)
		{
		while($line=~m/(connectionString)/ig)
		{
			print j $line."\n";
		}
		#print j $line;		
		}
	}
}

close(J);