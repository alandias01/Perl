use File::Copy;

f1();

sub f1()
{
	$tmpdir="tmp";
	$fileread="file.txt";
	$filewrite="newfile1.txt";
	
	open(I,$fileread);
	@data=<I>;
	close(I);

	open(J,">>$filewrite");
	print J @data;
	close(J);

	if(!-d "tmp") 
	{
		mkdir "tmp";	
	}

	if(-d $tmpdir)
	{
		copy($fileread,$tmpdir);
	}
	
}

