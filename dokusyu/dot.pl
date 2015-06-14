#! /bin/perl -w
# dot.pl

print "input word :";
$word = <STDIN>;
chomp($word);

@stairs = split(//,$word);
print join(",",@stairs), "\n";
