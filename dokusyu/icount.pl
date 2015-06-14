#! /bin/perl -w
# icount.pl

print "please input something : ";
$input = <STDIN>;
$icount =0;
while ($input =~ /i/g ){
    $icount++;
}
while ($input =~ /I/g){
    $icount++;
}

print "i or I coutains $icount\n";

