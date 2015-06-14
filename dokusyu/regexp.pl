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

print "banan.:\t";
foreach $value (@array){
    print "$value," if ($value =~ /banan./);    
}

print "\n^d:\t";
foreach $value (@array){
    print "$value," if ($value =~ /^d/);    
}

print "\nna\$:\t";
foreach $value (@array){
    print "$value," if ($value =~ /na$/);    
}

print "\n^ba.*na\$:\t";
foreach $value (@array){
    print "$value," if ($value =~ /^ba.*na$/);    
}

print "\na*land:\t";
foreach $value (@array){
    print "$value," if ($value =~ /a+land/);    
}

print "\n^ban.?\$:\t";
foreach $value (@array){
    print "$value," if ($value =~ /^ban.?$/);    
}

print "\nband|dance:\t";
foreach $value (@array){
    print "$value," if ($value =~ /band|dance/);    
}
print "\n";













