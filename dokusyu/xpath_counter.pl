#! /bin/perl -w
# xpath_counter.pl


use XML::XPath;
$xpath = new XML::XPath(filename => $ARGV[0]);
if($xpath->exists($ARGV[1])){
    $nodeset = $xpath->find($ARGV[1]);
    print "path $ARGV[1] is ". $nodeset->size(). " exists\n";
} else {
    print "path $ARGV[1] does not exists\n";
}
