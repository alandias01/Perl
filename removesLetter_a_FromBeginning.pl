#!/perl/bin/perl

@files=<*>;


$ctr=1000;
foreach $file (@files)
{		
	if( (-f $file) && ($file=~/^(a.)/) ) #ext has 3-4 letter extension
	{
		@fname=split(/^a/, $file);
		print $fname[1]."\n";
		rename ($file, $fname[1]);
		
		
		
	}
}

print "***************-----***************\n";
print "               Done!\n";
print "***************-----***************\n";

$tmp=<>;
