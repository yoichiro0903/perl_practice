#! /bin/perl -w
#
# hear.pl
#
# sample file name : hear.pl

print "input please";
$input = <STDIN>;

$text = << "EOT"
    $input
EOT
;
print $text x 5;

