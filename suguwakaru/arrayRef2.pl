#! /bin/perl -w
#
# arrayRef2.pl
#
# sample file name: arrayRef2.pl

@month = ('jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul',
	'aug', 'sep', 'oct', 'nov', 'dec');

$refMonth = \@month;

print "refMonth: $refMonth -> @$refMonth No5 : ${$refMonth}[4] \n";