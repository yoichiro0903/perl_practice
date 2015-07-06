#! /usr/bin/perl -w
#
# op.pl
#
# sample file name : op.pl

print "Value 1 : ";
$value1 = <STDIN>;
print "Value 2 : ";
$value2 = <STDIN>;
chomp($value1);
chomp($value2);

print "+\t", ($value1 + $value2), "\n";
print "-\t", ($value1 - $value2), "\n";
print "*\t", ($value1 * $value2), "\n";
print "/\t", ($value1 / $value2), "\n";
print "%\t", ($value1 % $value2), "\n";
print "**\t", ($value1 ** $value2), "\n";
print ".\t", ($value1 . $value2), "\n";
print "x\t", ($value1 x $value2), "\n";
