#! /bin/perl -w
#
# arrayRef.pl
#
# sample file name: arrrayRef.pl

@month = ('jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul',
	'aug', 'sep', 'oct', 'nov', 'dec');

$refMonth = \@month;
$refMonthWhat = ref $refMonth;

print "refMonth: $refMonth -> @$refMonth
refMonthWhat: $refMonthWhat \n";
