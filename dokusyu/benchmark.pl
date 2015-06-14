#! /bin/perl -w
# benchmark.pl

use Benchmark;

$before_time = new Benchmark;
&recursive(50000);
$after_time = new Benchmark;
$diff = timediff($after_time, $before_time);

print "result :",timestr($diff),"\n";

sub recursive{
    my($number) = @_;
    &recursive(--$number) if ($number);    
}
