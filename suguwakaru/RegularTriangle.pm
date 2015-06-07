#
# RegularTriangle.pm
#
# sample file name : RegularTriangle.pm

package RegularTriangle;
use base 'Triangle';

sub space {
	my ($class, $a) = @_;
	$class->SUPER::space($a, $a, $a);
}

1;


