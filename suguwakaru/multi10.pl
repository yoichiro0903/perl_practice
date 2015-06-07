#! /bin/perl -w
#
# multi10.pl
#
# sample file name : multi10.pl

$multi = 1;

for $i (1..10){
	$multi *= $i;
}

print $main::multi;
