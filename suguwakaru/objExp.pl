#! bin/perl 
# 
# objExp.pl
#
# sample file name : objExp.pl

package myPerson;

use overload
	qw("") => "toString",
;

sub new {
	my ($class, $name) = @_;
	bless {name => $name}, $class;
}

sub toString {
	my $self = shift;
	return $self->{name};
}

sub callYourself {
	my $self = shift;
	print "I am $self \n";
}

sub DESTROY {
	my $self = shift;
	print "$self is dying";
}

####

package main;

my $man = myPerson->new("Jack");
$man->callYourself;
print "He may be $man \n";
