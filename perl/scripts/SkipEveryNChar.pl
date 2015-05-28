$FileName="ECI5239";
$FileNameToEdit=$FileName."txt";

open(F,$FileName);
$data=<F>;
close(F);

open(N, ">$FileNameToEdit");

$data=~ s/(.{1,1000})/$1\n/g;

print N $data;

close(N);