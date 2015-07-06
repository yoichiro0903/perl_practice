#! /bin/perl -w
# xml-perse.pl

use XML::Parser;
$parser = new XML::Parser();
eval ( "\$parser->parsefile(\@ARGV[0]);");

if($@){
    print @ARGV[0] . " is incorrect xml document. error : $@";
} else {
    print @ARGV[0] . " is correct xml document\n";
}


