#! /bin/perl -w
#
# triTest.pl
#
# sample file name : triTest.pl

my ($a, $b, $c) = @ARGV;

use TriangleObj;
use RegularTriangleObj;

my $tri;

if (not $a) {
    $tri = TriangleObj->new;    
} elsif (not $b) {
    $tri = RegularTriangleObj->new($a);
} elsif (not $c) {
    die "please specify three sides";    
} else {
    $tri = TriangleObj->new($a, $b, $c);
}

printf "Triangle is %s and its space is %g \n", $tri, $tri;

