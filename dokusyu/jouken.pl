#! /bin/perl -w
#
# jouken.pl
#
# sample file name : jouken.pl

print "number 1 : ";
$number1 = <STDIN>;
chomp($number1);
$number1 += 0;

print "number 2 : ";
$number2 = <STDIN>;
chomp($number2);
$number2 += 0;

print "operand : ";
$operand = <STDIN>;
chomp($operand);

if ($operand eq "+"){
    $answer = $number1 + $number2;
    print "+ : $answer";    
} elsif ($operand eq "-" ){
    $answer = $number1 - $number2;
    print "- : $answer";    
} elsif ($operand eq "*" ){
    $answer = $number1 * $number2;
    print "* : $answer";    
} elsif ($operand eq "/" ){
    $answer = $number1 / $number2;
    print "/ : $answer";    
} elsif ($operand eq "%" ){
    $answer = $number1 % $number2;
    print "% : $answer";    
}
