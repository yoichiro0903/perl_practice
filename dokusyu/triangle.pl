#! /bin/perl -w
# tirangle.pl

$base = 15;
$height = 20;

$area = sub{
        my($areas) = $base * $height /2;
        return $areas;
    };

print "&$area\n";
