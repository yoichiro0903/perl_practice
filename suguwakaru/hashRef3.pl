#! /bin/perl -d
#
# hashRef3.pl
#
# sample file name: hashRef3.pl

my $str = "book is 2045yen";

if ($str =~ /(\d+)(yen)/){
  print "$1\n";
  print "$2\n";
}


while (<DATA>) {
	chomp;
	if(/^\[(.*)\]$/){
		$category = $1;
	} elsif(/^(.*)=(.*)$/){
		$conf{$category}{$1} = $2;
	}
}

print "conf(File)(file1) : $conf{File}{file1} \n";
print "conf(Internet)(ftp) : $conf{Internet}{ftp} \n";

__DATA__
[File]
perl_root=C:\Perl
tmp=C:\tmp
file1=file1.txt
file2=file2.txt
file3=file3.txt
[Internet]
web=http://www.gihyo.co.jp/
ftp=ftp://www.gihyo.co.jp/