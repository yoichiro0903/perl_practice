# 
# sample file name: RegularTriangleObj.pm

package RegularTriangleObj;
use base 'TriangleObj';

sub new {
	my ($class, $a) = @_;
	$class->SUPER::new($a, $a, $a);#呼び出し元のクラス（インボカント）を明示 
}

sub sides {
	my $self = shift;
	unless (@_) {
		return $self->{a};
	} else {
		my $a = shift;
		$self->SUPER::sides($a, $a, $a);
	}
}
1;