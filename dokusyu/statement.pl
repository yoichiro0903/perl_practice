#! /bin/perl -w
# statement.pl

print "set number : ";
$number = <STDIN>;
chomp($number);

print "over 5\n" if ($number > 5);
print "not 0\n" unless ($number == 0);
print ("increment", $number++, "\n") while ($number < 10);
print ("decrement", $number--, "\n") until ($number < 5);
