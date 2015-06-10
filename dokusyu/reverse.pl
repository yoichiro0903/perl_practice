#! /bin/perl -w
# reverse.pl

@array = (1..7);

while (@array){
	push(@reverse, pop(@array));
}

print "@reverse";