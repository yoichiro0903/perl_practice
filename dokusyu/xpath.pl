#! /bin/perl -w
# xpath.pl

use XML::XPath;

$xpath = new XML::XPath(filename => $ARGV[0]);

$nodeset = $xpath->find($ARGV[1]);

foreach($nodeset->get_nodelist()){
    print $_->toString()."\n";
}
