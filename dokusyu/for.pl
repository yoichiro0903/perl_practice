#! /bin/perl -w

# $number2 = 0;
# $number3 = 1;

# for ($number1 = 1; $number2 <= 50; $number3 += 3) {
# 	$number2 += $number1 * $number3;
# 	print "1 : $number1\t2: $number2\t3:$number3\n";
# 	$number1++;
# }

# print "input number: ";
# $max = <STDIN>;
# chomp($max);

# for($number = 1; $number <= $max; $number++){
# 	print "$number \n";
# }

print "input number: ";
# $max = <STDIN>;
# chomp($max);
$number = 1;

until ($number >= 64){
	print "$number\n";
	$number = $number * 2;
}

# for($number = 1; $number <= $max; $number++){
# 	if ($number == 4 || $number == 13) {
# 		print "Oh you got unlucky number \n";
# 	} else {
# 		print "$number \n";
# 	}
# }