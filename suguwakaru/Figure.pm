#
# Figure.pm
#
# sample file name : Figure.pm

package Figure;

sub AUTOLOAD {
	my ($class, @rest) = @_;
	our $AUTOLOAD;
	warn "you are about to invoke $AUTOLOAD using the argment",
	join(',', @rest),"\n";
	return "UNKNOWN";
}

sub DESTROY {
	my $self = shift;
	warn "you are about to destroy $self \n";
}


1;