#! /bin/perl -w
# config_load.pl

$name = "anonymous";

if(-r "config"){
    require("config");
}

print "hello, $name\n";
