#! /bin/perl -w
#
# hello.pl
#
# sample file name : hello.pl

print "What is your name? \n";
print "First name? : ";
$firstName = <STDIN>;
print "Last name? : ";
$lastName = <STDIN>;
chomp($firstName);
chomp($lastName);
print "hello $firstName $lastName san !!";

