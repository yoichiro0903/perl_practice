#! /bin/perl -w
#
# arrayRef5.pl
#
# sample file name: arrrayRef5.pl

@month = (['jan',31],['feb',28],['mar',31],['apr',30],
	['may',31],['jun',30],['jul',31],['aug',31],['sep',30],
	['oct',31],['nov',30],['dec',31],);

print "the 4th month is $month[3]->[0] and 
it has $month[3]->[1] days \n";

