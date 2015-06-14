#! /bin/perl -w
# addtext.pl

print "input line:";
$add = <STDIN>;
chomp($add);

open(F, ">>test.txt") || die "cannot add text\n";
print F "$add\n";

close(F);

