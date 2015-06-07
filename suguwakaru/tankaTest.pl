#! /bin/perl -w
#
# tankaTest.pl
#
# sample file name: tankaTest.pl

@tanka = (100, 200, 300);
@kosuu = (3,2,1);

print &uriage(\@tanka, \@kosuu);

sub uriage{
	my ($ref_tanka, $ref_kosuu) = @_;
	my $uriage = 0;
	for my $tanka (@$ref_tanka){
		my $kosuu = shift @$ref_kosuu;
		$uriage += $tanka * $kosuu;
	}
	return $uriage;
}