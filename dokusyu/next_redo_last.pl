#! /bin/perl -w
# next_redo_last.pl

while (1) {
	print "while loop\n";
	for($i = 0; $i < 100; $i++){
		print "for loop count : $i\n";

		print "1.next 2.redo 3.last 4.exit :";
		$type = <STDIN>;
		chomp($type);

		if ($type == 1) {
			next;
		} elsif ($type == 2){
			redo;
		} elsif ($type == 3){
			last;
		} elsif ($type == 4){
			exit(0);
		}
	}
}