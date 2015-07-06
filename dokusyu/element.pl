#! /bin/perl -w
# element.pl

use XML::Parser;

$parser = 
    new XML::Parser(
            Handlers => 
            {
                Start => \&element_start,
                End => \&element_end
            }
    );

$level = 0;

eval ("\$parser->parsefile(\@ARGV[0]);");

if($@){
    chomp($@);
    $@ =~ s/^\n//;
    $@ =~ s/ at (?:[A-Z]:)?\/.*//;
    print @ARGV[0] . " is incorrect XML dox. error : $@ \n";
}

sub element_start{
    my ($expat, $name, %attributes) = @_;
    print " " x $level;
    print $name;
    print " expat-> " . $expat;
    if(%attributes){
        print ": ";
        foreach(keys(%attributes)){
            print "$_=".$attributes{$_}. " ";
        }
    }
    print "\n";
    $level++;    
}

sub element_end{
    $level--;
}
