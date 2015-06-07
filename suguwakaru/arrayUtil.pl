#
# arrayUtil.pl
#
# sample file name : arrayUtil.pl
use strict;

package arrayUtil;

our $version = "3.0";

sub uniq {
	my %out = ();
	for(@_){
		$out{$_} = 1;
	}
	return keys %out;
}

1;