#! /bin/perl -w
# hello_anonymous.pl

$string = 
    sub {
        return("hello , i am $name \n");        
    };

$name = "hanako";
print &$string;
