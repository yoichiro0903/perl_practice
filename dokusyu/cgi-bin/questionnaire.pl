#! /usr/bin/perl -w
# questionnaire.cgi

use CGI;
$query = new CGI;

if(-f "data/statistic.log"){
    open(F, "data/statistic.log") || &error("cannot open file $!\n");
    while(<F>){
        chomp();
        ($name, $os) = split(/\t/);
        push(@nametotal, $name);
        $ostotal{$os}++;
    }
    close(F);
}


$name = $query->param('name');
$name =~ s/\t//g;
foreach(@nametotal){
    if($_ eq $name){
        &error("name $name is already registered.\n");
    }
}

$ostotal{$query->param('os')}++;
open(F,">>data/statistic.log") || &error("cannot write to file $!\n");
print F $name, "\t", $query->param('os'), "\n";
close(F);

print $query->header(-charset=>'Shift_JIS'),$query->start_html(-title=>"result");
print "<h2>os used</h2>\n";
print "<ul>\n";
print 
"<li><strong>$os</strong>: 
$count</li>\n" while (($os, $count) = each(%ostotal));
print "</ul>\n";
print $query->end_html();

sub error {
    my ($message) = @_;
    print $query->header(-charset=>'Shift_JIS'),$query->start_html(-title=>"error");
    print "<h1>error occured</h1>\n";
    print $message;
    print $query->end_html();
    exit(1);    
}
