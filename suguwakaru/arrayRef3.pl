#! /bin/perl -w
#
# arrayRef3.pl
#
# sample file name: arrayRef3.pl

$rm1 = 'jan';
$rm2 = 'feb';
$rm3 = 'mar';
$rm4 = 'apr';
$rm5 = 'may';
$rm6 = 'jun';
$rm7 = 'jul';
$rm8 = 'aug';
$rm9 = 'sep';
$rm10 = 'oct';
$rm11 = 'nov';
$rm12 = 'dec';
@refMonth = (\$rm1,\$rm2,\$rm3,\$rm4,\$rm5,\$rm6,
\$rm7,\$rm8,\$rm9,\$rm10,\$rm11,\$rm12, );

print "${$refMonth[4]} \n";
