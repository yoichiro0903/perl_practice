#! /bin/perl -w
# foreach.pl

@array = (1..10);

foreach(@array){
	$_ *= 2;
	# if($_ > 5){
	# 	print $_ , "\n";
	# } else {
	# 	print "this is under 6\n";
	# }
}

print @array , "\n";
print @array *2, "\n";