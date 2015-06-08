#! /bin/perl -w
#
# logical.pl
#
# sample file name : logical.pl

print "please input 1st number";
$number1 = <STDIN>;
chomp($number1);
print "please input 2nd number";
$number2 = <STDIN>;
chomp($number2);

$number1 += 0;
$number2 += 0;

print ("AND : ", ($number1 & $number2), "\n");
print ("OR : ", ($number1 | $number2), "\n");
print ("XOR : ", ($number1 ^ $number2), "\n");
