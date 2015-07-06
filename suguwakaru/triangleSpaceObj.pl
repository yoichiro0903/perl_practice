#! /bin/perl -w
#
# triangleSpaceObj.pl
#
# sample file name : triangleSpaceObj.pl

use TriangleObj;

my $tri = TriangleObj->new(3,4,5);
for my $key (sort keys %$tri){
    print "key is $key and its value is ", $tri->{$key},"\n ";
}
my $space = $tri->space;
print "sides are ", join(",", $tri->sides), "\n";
print "Triangle is ",$tri," and its space is $space \n";

my ($a, $b, $c) = $tri->sides;
$tri->sides($b,$a,$c);
$space = $tri->space;
print "sides are ", join(",", $tri->sides), "\n";
print "Triangle is ",$tri," and its space is $space \n";


my $tri2 = TriangleObj->new(4,5,3)->space;
print "the space of \$tri2 is $tri2\n";


$tri->sides($b,$a,400);
$space = $tri->space;
print "sides are ", join(",", $tri->sides), "\n";
print "Triangle is ",$tri," and its space is $space \n";



