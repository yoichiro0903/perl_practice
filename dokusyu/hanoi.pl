#! /bin/perl -w
# hanoi.pl

&hanoi(3,"left","center","right");

sub hanoi {
	my ($disk, $bar1, $bar2, $bar3) = @_;
	if ($disk > 0) {
		hanoi($disk - 1, $bar1, $bar3, $bar2);
		print "move $disk disk $bar1 to $bar2 \n";
		hanoi($disk-1, $bar3, $bar2, $bar1);
	}
}
