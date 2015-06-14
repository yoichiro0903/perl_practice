#! /bin/perl -w
# saiki.pl

print "input number :";
$number = <STDIN>;
chomp($number);

@temp = ($number);

$answer = &kaijou($number);
print "$answer\n";


sub kaijou{
    my($k) = @_;
    if($k > 1){
        $t = $k - 1;
        push(@temp,$t);
        &kaijou($t);
    } else {
        $a = 1;
        print "@temp\n";
        foreach(@temp){           
            $a *= $_;
        }
        return $a;
    } 
}
