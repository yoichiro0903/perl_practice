#! /bin/perl -w
#
# chinaOlympic.pl
#
# sample file name : chinaOlympic.pl

use myCalendar;

my $today = myCalendar->today; #Calendar->today->convert_to_Gregorian;
my $olydate = myCalendar->new(8,8,2008);
 #Calendar->new_from_Gregorian(8, 8, 2008);
my $diff = $olydate - $today;

print "Today is $today \n";
print "Beijing Olympic will be hold at $olydate \n";
print "There is $diff days until Beijing Olympic \n";

