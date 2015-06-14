#! /bin/perl -w
# echo.pl

do {
    $string = <STDIN>;
    print $string; 
   } until ($string =~ /QUIT/);
