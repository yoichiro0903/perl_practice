#! /bin/perl -w
#
# countdown_while.pl
#
# sample file name : countdown_while.pl

print "please input password";
$pw = <STDIN>;
chomp($pw);

until($pw eq "secret") {
	print "wrong password \n";
	print "input again \n";
	$pw = <STDIN>;
	chomp($pw);
}

# print "please input default";
# $number = <STDIN>;
# chomp($number);

# until($number > 16) {
# 	print "number : $number \n";
# 	$number += $number;
# }