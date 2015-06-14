#! /bin/perl -w
# youbi.pl

@youbi = qw(sun mon tue wed thu fri sat);
print "type 0-6 as youbi :";
$key = <STDIN>;
chomp($key);


print (($key >= 0 && $key <= 6) ? "$youbi[$key]\n" : "youbi should be 0-6\n")
