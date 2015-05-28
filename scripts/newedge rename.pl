#EasyBorrowQuantity.xls

$origfile="eb1.xls";
$NewFile="EasyBorrowQuantity.xls";

if(-e $origfile)
{
	rename($origfile,$NewFile);
}