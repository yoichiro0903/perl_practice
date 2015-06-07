#! /bin/perl -w
#
# retrieve.pl
#
# sample file name : retrieve.pl
#

use strict;
use Storable;
use Data::Dumper;

my $file = "possible";
my $possible = retrieve($file);
print Dumper($possible);

#for my $member (sort keys %$possible) {
#    print "${member}'s birthday is ", $possible->{$member}->{birthday},
#    " and hometown is ", $possible->{$member}->{hometown}, "\n";
#}
