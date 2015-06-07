#! /bin/perl -d
#
# scalarRef.pl
#
# sample file name: scalarRef.pl

$age = 14;
$refAge = \$age;
$deref = $$refAge;

++$$refAge;

print "age is $age, and refAge is $refAge, deref is $deref\n";

