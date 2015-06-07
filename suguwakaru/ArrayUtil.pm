#
# arrayUtil.pl
#
# sample file name : arrayUtil.pl
use strict;

package ArrayUtil;

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(uniq);

our $VERSION = "3.0";

sub uniq {
	my %out = ();
	for(@_){
		$out{$_} = 1;
	}
	return keys %out;
}

1;