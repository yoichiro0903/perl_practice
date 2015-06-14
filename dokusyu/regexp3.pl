#! /bin/perl 
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
#
#print "\\d+:\t";
#foreach $value (@array){
#    print "$value," if ($value =~ /\d+/);    
#}
#
#print "\nPerl is No\\.\\D:\t";
#foreach $value (@array){
#    print "$value," if ($value =~ /Perl is No\.\D/);    
#}
#
#print "\n\\s:\t";
#foreach $value (@array){
#    print "$value," if ($value =~ /\s/);    
#}
#
#print "\nbanana\\S:\t";
#foreach $value (@array){
#    print "$value," if ($value =~ /banana\S/);    
#}
#
foreach $value (@array){
    print "$1, $2, $3, $4\n" if ($value =~ /(\w+)\W+(\w+)\.(\w+)/);    
}
print "\n";













