#! /bin/perl -w
#
# triangleSpace.pl
#
# sample file name : triangleSpace.pl

use Triangle;
use RegularTriangle;

my $a = 3;
my $b = 4;
my $c = 5;

$space = Triangle->space($a, $b, $c);
print "triangle : $space \n";
$space = Triangle->inscribedCircleSpace($a, $b, $c);
print "Triangle's inscribedCircleSpace is $space\n";

$a = 6;
$space = RegularTriangle->space($a);
print "RegularTriangle : $space \n";
$space = RegularTriangle->inscribedCircleSpace($a);
print "RegularTriangle's inscribedCircleSpace is $space\n";




