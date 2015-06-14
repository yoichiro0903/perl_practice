#! /bin/perl -w
# cwd.pl

use Cwd;

$pwd = cwd();
chomp($pwd);
print "now you are in $pwd\n";
