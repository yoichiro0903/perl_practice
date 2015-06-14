#! /bin/perl -w
# replace.pl

print "input 2 words with space";
$word = <STDIN>;
chomp($word);

$word =~ s/(\w+)\s+(\w+)/$2 $1/;
print "$word\n";
