open(I,"SQLQuery6.sql");
@lines=<I>;
close(I);

open(J,">sqlnew.sql");

for($count=0;$count<$#lines;$count++)
{
	if($lines[$count]=~/values/i)
	{
		last;
	}
}

$PositionOfSplit=$count;

for($i=$PositionOfSplit+1;$i<$#lines;$i++)
{
	$tmp=$lines[$i];
	$tmp=~s/\(?,?</@/;
	$tmp=~s/, / /;
	$tmp=~s/,>/,/;
	push(@part1,$tmp);
}

#try and replace with direct access
for($i=0;$i<=$#part1;$i++)
{
	if($part1[$i]=~/^GO$/)
	{
		$part1[$i-1]=~s/,\)$/\)/;
		$part1[$i]=~s/^GO$//;
	}	
}

print J "USE []\n";
print J "GO\n";
print J "SET ANSI_NULLS ON\n";
print J "GO\n";
print J "SET QUOTED_IDENTIFIER ON\n";
print J "GO\n\n\n";

print J "CREATE PROCEDURE [dbo].[]\n";
print J "(\n";

print J @part1;

print J "AS\n";
print J "BEGIN\n";
print J "	SET NOCOUNT ON;\n\n\n";

for($i=0;$i<=$PositionOfSplit;$i++)
{
	push(@part2,$lines[$i]);
}

print J @part2;
print J "(\n";

for($i=0;$i<$#part1;$i++)
{
	if($part1[$i]=~/(@.*?) .*?,?$/i)
	{		
		push(@part3,$1);
	}
}

foreach $part3line(@part3)
{
	push(@part4,$part3line.",\n");
}

$part4[$#part4]=~s/,$/\)/;

print J @part4;
print J "END\n\n\n";

close(J);