#! /bin/perl -w
# readdir.pl

opendir(DIR, "..") || die "cannot open .. : $!\n";
@files = readdir(DIR);
closedir(DIR);

foreach (@files){
    chomp($_);
    if($_ !~ /\.{1,2}/){
        print "$_\n";
    }
}

