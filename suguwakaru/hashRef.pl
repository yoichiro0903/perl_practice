#! /bin/perl -w
#
# hashRef.pl
#
# sample file name: hashRef.pl

%month = (
	jan => 1,
	feb => 2,
	mar => 3,
	apr => 4,
	may => 5,
	jun => 6,
	jul => 7,
	aug => 8,
	sep => 9,
	oct => 10,
	nov => 11,
	dec => 12,
	);
$refMonth = \%month;
print "ref to month hash : $refMonth \n";

@sorted_key = sort keys %$refMonth;
print "sorted key : @sorted_key \n";

print "jan is month No. $refMonth->{jan} \n";


