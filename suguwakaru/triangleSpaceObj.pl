#! /bin/perl -w
#
# triangleSpaceObj.pl
#
# sample file name : triangleSpaceObj.pl

use TriangleObj;

my $tri = TriangleObj->new(3,4,5);
my $space = $tri->space;
print "sides are ", join(",", $tri->sides), "\n";
print "Triangle is ",$tri," and its space is $space \n";

my ($a, $b, $c) = $tri->sides;
$tri->sides($b,$a,$c);
$space = $tri->space;
print "sides are ", join(",", $tri->sides), "\n";
print "Triangle is ",$tri," and its space is $space \n";

$tri->sides($b,$a,400);
$space = $tri->space;
print "sides are ", join(",", $tri->sides), "\n";
print "Triangle is ",$tri," and its space is $space \n";

# for my $key (sort keys %$tri){
# 	print "key is $key and val is ", $tri->{$key}, "\n";
# }


