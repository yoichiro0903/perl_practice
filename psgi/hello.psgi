#! /bin/perl -w

use strict;
use warnings;

my $app = sub {
    my $env = shift;
    return [
        200,
        ['Content-Type' => 'text/plain'],
        ["hello world psgi"],
    ];
};

return $app;
