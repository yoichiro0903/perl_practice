#! /bin/perl -w
# label.pl



# LOOP1: while (1) {
# 	print "LOOP1 starts\n";

# 	LOOP2: while (1) {
# 		print "LOOP2 starts\n";
# 		LOOP3: while (1) {
# 			print "LOOP3 starts\n";
# 			print "select LOOP number :";
# 			$number = <STDIN>;
# 			chomp($number);
# 			if($number == 1){
# 				next LOOP1;
# 			} elsif($number == 2){
# 				next LOOP2;
# 			} elsif($number == 3){
# 				next LOOP3;
# 			} else {
# 				last LOOP1;
# 			}
# 		}
# 	}
# }