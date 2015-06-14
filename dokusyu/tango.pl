#! /bin/perl -w
# tango.pl

print "input sentense : ";
$sentense = <STDIN>;
chomp($sentense);

print "tango:\t$&\n" while ($sentense =~ /\w+/g);

