#! /bin/perl -w
#
# arrayRef4.pl
#
# sample file name: arrrayRef4.pl

@month = ('jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul',
	'aug', 'sep', 'oct', 'nov', 'dec');

$refMonth = \@month;

print "refMonth : $refMonth -> @$refMonth No.5 : $refMonth->[4] \n";