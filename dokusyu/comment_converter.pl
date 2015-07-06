#! /bin/perl -w
# comment_converter.pl

#use encoding "utf8", STDOUT=>"euc-jp";
use XML::Parser;

$parser = 
    new XML::Parser(
        Handlers =>
            {
                Start => \&element_start,
                Char => \&cdata,
                Comment => \&comment,
                End => \&element_end
            }
    );
eval ("\$parser->parsefile(\@ARGV[0]);");

if($@){
    chomp($@);
    $@ =~ s/^\n//;
    $@ =~ s/ at (?:[A-Z]:)?\/.*//;
    print @ARGV[0]. " is incorrect xml $@\n";
}

sub element_start{
    my($expat, $name, %attributes) = @_;
    print "<$name";
    if(%attributes){
        foreach(keys(%attributes)){
            print "$_=\"".$attributes{$_}."\"";
        }
    }
    print ">";
}

sub element_end{
   my($exapt, $name) = @_;
   print "</$name>\n";
}

sub cdata{
    my($exapt, $context) = @_;
    print $context if ($context !~ /^\s+$/);
}

sub comment{
    my($exapt, $context) = @_;
    $context =~ s/\&/\&amp;/g;
    $context =~ s/</\&lt;/g;
    $context =~ s/>/\&gt;/g;
    print "<comment>$context</comment>\n" if($context !~ /^\s+$/);
}
