#! /bin/perl -w
#
# subroutineExp.pl
#
# sample file name: subroutineExp.pl

$codeRef = \&daikeimenseki;
$menseki = $codeRef->(3,4,5);
print "menseki ha $menseki, codeRef : $codeRef";

sub daikeimenseki{
	my ($joutei, $katei, $takasa) = @_;
	my $menseki = ($joutei + $katei)* $takasa/2;
	return $menseki;
}