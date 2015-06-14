#! /bin/perl -w
# chopreverse.pl

print "input something :";
$word = <STDIN>;
chomp($word);
@reverse = ();

while(length($word)>0){
    $i = chop($word);
    push(@reverse, $i);
 }

 print join("",@reverse) ,"\n";
