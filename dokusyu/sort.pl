#! /bin/perl -w
# sort.pl

print "input numbers with space :";
$numbers = <STDIN>;
chomp($numbers);

print join(",", sort{$b <=> $a} (split(/\s+/,$numbers)));
