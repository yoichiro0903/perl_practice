#! /bin/perl -w
#
# scalarRef2.pl
#
# sample file name: scalarRef2.pl

use strict;

#my $age = 14;

my $refAge = \14;#\$age;

my $refjikken1 = $refAge;

my $refjikken1What = ref $refjikken1;

print "refjikken1: $refjikken1 -> $$refjikken1 
:ref = $refjikken1What\n";

