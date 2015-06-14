#! /bin/perl -w
# hash.pl

%array = (
            "Last name"     => "Watanabe",
            "First name"    => "Yoichiro",
            "Age"           => "26",    
         );
print "key list: \n";
foreach $key (keys(%array)){
    print "\t$key\n";    
}

print "value :";
foreach $value (values(%array)){
    print "\t$value\n";    
}

print "pair :";
print "\t$key -> $value\n" while (($key, $value) = each(%array));





# @array = (1..100);

# foreach(@array){
# 	$amari2 = $_ % 2;
# 	$amari3 = $_ % 3;
# 	$amari5 = $_ % 5;
# 	if($amari2 == 0){
# 		$count{'2'}++;
# 	}
# 	if($amari3 == 0){
# 		$count{'3'}++;
# 	}
# 	if($amari5 == 0){
# 		$count{'5'}++;
# 	}
# 	unless($amari2 == 0 || $amari3 == 0 || $amari5 == 0){
# 		$count{'xx'}++;
# 	}
# }

# print "has 2 as common divisor :", $count{'2'}, "\n";
# print "has 3 as common divisor :", $count{'3'}, "\n";
# print "has 5 as common divisor :", $count{'5'}, "\n";
# print "has not 2,3,5 as common divisor :", $count{'xx'}, "\n";
