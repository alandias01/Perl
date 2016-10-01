open(J,">","data.txt");

recSearch("start");


sub recSearch
{
	my @items= <$_[0]/*>;
	
	foreach $item(@items)
	{
		if(-d $item)
		{
			recSearch($item);
		}
		elsif(-f $item)
		{
			print J $item."\n";
		}
		
	}
}

close(J);
