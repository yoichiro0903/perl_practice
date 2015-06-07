#! /bin/perl -w
#
# invoice.pl
#
# sample file name : invoice.pl

use strict;
use Heppoko_all;

my $class = 'Kosame';

my ($kaisyaMei, $tenmei, $shachou, $juusho, $denwa, $bank, $web) =
	#(Heppoko->kaisyaMei, Heppoko->shachou, Heppoko->juusho, Heppoko->denwa, Heppoko->bank);
	map {$class->$_} qw(kaisyaMei tenmei shachou juusho denwa bank web);

print <<EOD;

$kaisyaMei
$tenmei
$juusho
$denwa
$bank
$shachou
$web

EOD
