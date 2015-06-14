#! /bin/perl -w
# warizan.pl

print "number1 :";
$number1 = <STDIN>;
chomp($number1);
print "number2 :";
$number2 = <STDIN>;
chomp($number2);

print (($number2 != 0) ? $number1/$number2 : "number2 cannot 0");


