#! /bin/perl -w
#
# store.pl
#
# sample file name : store.pl

use strict;
use Storable;

my $file = "possible";

my $possible = {
    Robin => {
        birthday => "1993-03-15",
        hometown => "Boston",
    },
    
    Akkyan => {
        birthday => "1992-10-19",
        hometown => "Kanagawa",
    },

    Moririn => {
        birthday => "1989-11-05",
        hometown => "Saitama",
    },

    Kaepyon => {
        birthday => "1991-04-29",
        hometown => "Chiba",
    },

    Hashimon => {
        birthday => "1992-09-04",
        hometown => "Kanagawa",
    },

    Gotoo => {
        birthday => "1993-03-15",
        hometown => "Kanagawa",
    },
};

store ($possible, $file);

