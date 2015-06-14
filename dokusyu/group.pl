#! /bin/perl -w
# group.pl

@array = (
    "beginner",
    "feminine",
    "tin",
    "tininess",
    "tinny",
    "panini"
);

print "in+[^in] :\t";
foreach $value (@array){
    print "$value," if ($value =~ /in+[^in]/);    
}
print "\n";

print "(in)+[^in] :\t";
foreach $value (@array){
    print "$value," if ($value =~ /(in)+[^in]/);
}

print "\n";

