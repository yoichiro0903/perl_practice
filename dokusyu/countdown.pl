#! /bin/perl -w
# countdown.pl

print "please set default number : ";
$number = <STDIN>;
chomp($number);

while ($number >= 0){
    print "number : $number \n";
    $number--;    
}

