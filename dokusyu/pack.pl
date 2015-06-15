#! /bin/perl -w
# pack.pl
print "input number :";
$number = <STDIN>;
chomp($number);


$packed = pack("i", $number);
$unpack = unpack("H16", $packed);

print "$packed\t$unpack\n";
