#retrieves ETB file from GS - File is removed from server once it it downloaded.

use Net::FTP;
use File::Copy;
use Time::localtime;

# $hostname = '12.26.53.30';
#$username = 'u60343';
#$password = 'maple0114';
$tm = localtime;
($day, $month, $year) = ($tm->mday, $tm->mon, $tm->year);
$localfilename = sprintf("\\\\rutherford\\dfs\\Dailyfiles\\ETB\\ETB%04d%02d%02d.txt", $year+1900,$month+1, $day);



# Hardcode the directory and filename to get
$home = '/';
$filename = 'easytoborrowlist.txt';


# Open the connection to the host
$ftp = Net::FTP->new($hostname);         # construct object
$ftp->login($username, $password);       # log in

$ftp->cwd($home),"\n";                   # change directory
print $ftp->ls($home),"\n";        

# Now get the file and leave
$ftp->get($filename, $localfilename); 
$ftp->quit;


print "done";