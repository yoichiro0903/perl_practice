#! /bin/perl -w
# time.pm

package time;

BEGIN {
    my $times = time();
    my ($sec,$min,$hour,$mday,$month,$year,$wday,$stime) = localtime($times);
    print "start -> $hour : $min : $sec\n"
}

END {
    my $times = time();
    my ($sec,$min,$hour,$mday,$month,$year,$wday,$stime) = localtime($times);
    print "end -> $hour : $min : $sec\n"
}
1;

