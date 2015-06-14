#! /bin/perl -w
# copy2.pl

print "input original file path :";
$original = <STDIN>;
chomp($original);

print "input copied file path :";
$copied = <STDIN>;
chomp($copied);

open(O, "$original") || die "cannot open $original";
open(F, ">$copied") || die "cannot create file $copied\n";

while(<O>){
    print F "$_";
}

close(F);
close(O);
