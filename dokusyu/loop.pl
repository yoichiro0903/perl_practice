#! /bin/perl -w
# loop.pl

print "set number : ";
$number = <STDIN>;
chomp($number);

for($i =1; $i <= $number; $i++){
    if($i == 4 || $i == 13){
        next;
    }
    print "$i\n";
}
