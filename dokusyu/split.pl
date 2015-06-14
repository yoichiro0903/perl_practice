#! /bin/perl -w
# split.pl

print "please input sentense :";
$string = <STDIN>;
chomp($string);

@words = split(/\s+/, $string);
foreach (@words){
    print "word : $_\n";
}
