#
# Triangle.pm
#
# sample file name : Triangle.pm

package Triangle;
use base 'Figure';

sub space {
	my ($class, $a, $b, $c) = @_;
	warn "you are about to calculate the space of $class \n";
	my $s = ($a + $b + $c) / 2;
	my $space = sqrt($s * ($s - $a) * ($s - $b) * ($s - $c));
	return $space;
}

1;


