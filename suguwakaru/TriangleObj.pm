#
# triangleObj.pm
#
# sample file name : triangleObj.pm

package TriangleObj;
use Carp qw(croak);
use Storable;
use base Figure;

my $file = "Triangle";

use overload
	qw("") => "toString",
	qw(0+) => "toNumber",
    qw(*) => "multiply",
	;

$subSpace = sub  {
	my ($a, $b, $c) = @_;
	my $s = ($a + $b + $c) / 2;
	my $inRoot = $s * ($s - $a) * ($s - $b) * ($s - $c);

	if ($inRoot >= 0){
		return sqrt($inRoot);
	} else {
		#die "Died";
		croak "Died in croak";
	}
};

sub new {
	my ($class, $a, $b, $c) = @_;
    unless ($a and $b and $c){
        bless retrieve($file);
    } else {
	    my $self = {a => $a, b => $b, c =>$c, r => $subSpace->($a,$b,$c)};
	    bless $self, $class;
    }
}

sub DESTROY {
    store(shift, $file);
}


sub space {
	my ($self) = shift;#@_;
	warn "you are about to calculate the space of ", ref($self), "\n";
	return $self->{r};
	# my ($a, $b, $c) = ($self->{a}, $self->{b}, $self->{c});
	# my $s = ($a + $b + $c) / 2;
	# my $space = sqrt($s * ($s - $a) * ($s - $b) * ($s - $c));
	# return $space;
}

sub sides {
	my $self = shift;
	unless(@_){
		return ($self->{a},$self->{b},$self->{c});
	} else {
		my ($a, $b, $c) = @_;
		$self->{a} = $a;
		$self->{b} = $b;
		$self->{c} = $c;
		$self->{r} = $subSpace->($a, $b, $c);
	}
}

sub toString {
	my $self = shift;
	my $a = $self->{a};
	my $b = $self->{b};
	my $c = $self->{c};
	return ("($a, $b, $c)");
}

sub toNumber {
	my $self = shift;
	return $self->{r};
}

sub multiply {
    my ($self, $x) = @_;
    (ref $x or $x =~ /[^\.0-9]/) and croak "$x must be numeric value";
    my $a = $self->{a} * $x;
    my $b = $self->{b} * $x;
    my $c = $self->{c} * $x;
    bless { a => $a, b => $b, c => $c, r => $subSpace->($a,$b,$c)};
}


1;
