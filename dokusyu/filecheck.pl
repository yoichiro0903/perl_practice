#! /bin/perl -w
# filecheck.pl

print "input filename:";
$filename = <STDIN>;
chomp($filename);

open (F, "$filename") || die "cannot open file : $filename";
@content = <F>;
close(F);

foreach(@content){
    print $_,"\n";
    if ($_ =~ /perl/){
        print "got perl\n";
        exit;
    }
}
print "no perl in the file\n";
