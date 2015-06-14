#! /bin/perl 
# parent.pl

if ("abcdef" =~ /.(((.).)(.).)./){
    print "1=$1 2=$2 3=$3 4=$4\n"
}
# a(((b)c)(d)e)f
#a b bc d bcde f
