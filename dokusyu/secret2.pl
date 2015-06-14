#! /bin/perl -w
# secret2.pl

print "password : ";
$pw = <STDIN>;
chomp($pw);

print (($pw eq "SECRET") ? "true" : "false");
