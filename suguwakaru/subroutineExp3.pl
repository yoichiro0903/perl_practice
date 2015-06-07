#! /bin/perl -w
#
# subroutineExp3.pl
#
# sample file name: subroutineExp3.pl

$codeRef = sub {
	my ($joutei, $katei, $takasa) = @_;
	my $menseki = ($joutei + $katei)* $takasa/2;
	return $menseki;
};

$menseki = $codeRef->(3,4,5);

print "menseki ha $menseki, codeRef : $codeRef";

