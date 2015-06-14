#! /bin/perl -w
# division.pl

print "input n1:";
$n1 = <STDIN>;
chomp($n1);

print "input n2:";
$n2 = <STDIN>;
chomp($n2);

if ($n2 == 0){
    print "ERR\n";
    exit;    
}

$ans = &division($n1,$n2);
print $ans,"\n";

sub division{
    my($k1,$k2) = @_;
    return $k1/$k2;
}
