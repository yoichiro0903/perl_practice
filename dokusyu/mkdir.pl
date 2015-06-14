#! /bin/perl -w
# mkdir.pl

print "input dirname you make :";
$dirname = <STDIN>;
chomp($dirname);

if (!-d $dirname){
    mkdir($dirname, 0755) || die "cannot make dir $dirname";
} else {
    print "already exists $dirname";
}
