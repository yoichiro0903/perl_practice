#! /bin/perl -w
# match.pl

print "what is your name";
$string = <STDIN>;
chomp($string);

print "$`\t$&\t$'\n" if ($string =~ /yoichiro/);
 
