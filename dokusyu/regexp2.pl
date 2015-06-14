#! /bin/perl -w
# regexp.pl

@array = (
    "ban",
    "banal",
    "banana",
    "bananaland",
    "banana land",
    "banana race",
    "band",
    "bandana",
    "bandit",
    "bangle",
    "dongle",
    "dance",
    "island",
    "sabanna",
    "Vienna",
    100,
    0,
    -1,
    "Perl is No.1",
    "Perl is No.one",
);

print "ban[d-g]:\t";
foreach $value (@array){
    print "$value," if ($value =~ /ban[d-g]/);    
}

print "\nban[^d-g]:\t";
foreach $value (@array){
    print "$value," if ($value =~ /ban[^d-g]/);    
}

print "\n^[0-9]+\$:\t";
foreach $value (@array){
    print "$value," if ($value =~ /^[0-9]+$/);    
}

print "\n[A-Z]:\t";
foreach $value (@array){
    print "$value," if ($value =~ /[A-Z]/);    
}

print "\n[A-Z0-9]:\t";
foreach $value (@array){
    print "$value," if ($value =~ /[A-Z0-9]/);    
}

print "\n";













