#! /bin/perl -w
#
# quiz.pl
#
# sample file name : quiz.pl

print "2 + 3 = ?";
$answer = <STDIN>;
chomp($answer);

if($answer == 5){
    print "you got right answer";
} else {
    print "That is wrong answer";
}
