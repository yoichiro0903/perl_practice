#! /bin/perl -w
# sqrt.pl

print "input number:";
$number = <STDIN>;
chomp($number);

eval("\$sqrt = sqrt(\$number)");

if ($@){
	print "error : $@"
	} else {
	print "sqrt : $sqrt";
	}

