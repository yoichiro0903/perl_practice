#! /bin/perl -w
# sum.pl

$sum = 10;
&sum1();
print "sum : $sum\n";

sub sum1{
    $sum++;
    print "in sum1:$sum\n";
    {
        local ($sum);
        $sum++;
        print "in block:$sum\n";
        &sum2();
        print "after sum2:$sum\n";
    }
    &sum3();
}

sub sum2{
    $sum++;
    print "in sum2:$sum\n";
}

sub sum3{
    my($sum);
    $sum++;
    print "in sum3:$sum\n";
}
