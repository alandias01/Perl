use LWP::Simple; 

main();

sub main
{
$FileName="webpage.txt";
$website_content = get("http://www.togotutor.com/index.php"); 

open(i,">$FileName"); 

print i $website_content; 

close(i);
}

