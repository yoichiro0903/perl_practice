#! /bin/perl -w
# timer.pl

print "nazonazo\n";

($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = gmtime();

while (1){
	($sec2, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = gmtime();	
	if($sec2 >= $sec + 5){
		print "answer";
		exit;
	}
}