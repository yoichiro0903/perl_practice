#! /bin/perl -w
#
# uniqTest.pl
#
# sample file name : uniqTest.pl
use strict;

my %uniq = ();

#require "arrayUtil.pl";
use ArrayUtil 2.0;

print "ArrayUtil $ArrayUtil::VERSION requiered \n";

my @in = (1,2,3,4,5,2,3,4,5,3,2,3);

for my $in (uniq(@in)){
	if(&main_uniq($in)){
		print "$in is unique \n";
	} else {
		print "$in is not unique \n";
	}
}

sub main_uniq {
	my $in = shift;
	if (not $uniq{$in}){
		$uniq{$in} = 1;
		1;
	} else {
		0;
	}
}