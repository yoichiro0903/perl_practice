#! /bin/perl -w
# copy.pl

use File::Copy;

if (@ARGV != 2){
    &usage();
}

copy($ARGV[0], $ARGV[1]);

print "error while copying($!)\n" if ($!);

sub usage{
    print "copy.pl : coping file\n
    copy.pl original_file copied_file\n";
    exit(1);
}
