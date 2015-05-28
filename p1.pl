use File::Copy;
use LWP::Simple;

$FDFileDir="d1/";
$FDFileName="file1.txt";
$FDFileDirAndName=$FDFileDir.$FDFileName;

if (-f "file1.txt") 
{
	if (!-d "d1") {
		mkdir("d1");
	}
}

# if ( ) {
# 	# body...
# } elsif () {
# 	# elsif...
# } else {
# 	# else...
# }
copy("file1.txt", "d1/file1.txt");

open(I,">output.txt");

my $page = get("yahoo.com") or die "cannot\n";

print I $page;
close(I);