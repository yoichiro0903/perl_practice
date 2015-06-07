#! /bin/perl -w
#
# subroutineExp4.pl
#
# sample file name: subroutineExp4.pl

$SIG{'INT'} = sub {print "you pushed ctr+c \n";}

for (1..10000){
	print "hello \n";
}