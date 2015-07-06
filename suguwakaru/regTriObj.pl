#! bin/perl -w
#
# regTriObj.pl
#
# sample file name: regTriObj.pl

use RegularTriangleObj;

my $rt = RegularTriangleObj->new(1);
print "side is ", $rt->sides, "\n";
printf "Triangle is %s and its space is %g \n", $rt, $rt;
$rt *= 2;
warn "You are about to end the program $0 \n";



