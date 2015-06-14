#! /bin/perl -w
# print.pl

$_ = "hello. \n";
print;

open(F, "> print.txt");

print F;
close(F);

print ("my","name","is","yoichiro\n");

@list = ("are","you","hanako","desuka?\n");

print @list;

