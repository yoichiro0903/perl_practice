#! /bin/perl -w
#
#findName.pl
#
#sample file name: findName.pl

use File::Find;

find(\&fileProc, '.');

sub fileProc {
	return unless -f $_; #escape if $_ is not file
	open IN, $_;
	while(<IN>){
		if (/<title>/i){
			print "$File::Find::name($.): $_";
		}
	}
	close IN;
	#print "$File::Find::name\n";
}
