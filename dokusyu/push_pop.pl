#! /bin/perl -w
# push_pop.pl

@array = (1..7);
print "original : @array\n";

push(@array, 0);
print "push 0 : @array\n";

print "get ",pop(@array)," by pop\n";
print "poped : @array\n";


