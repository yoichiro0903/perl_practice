#
# America.pm
#
# sample file name : America.pm

use strict;
package America;
use Exporter;
our @ISA = qw(Exporter);

our @EXPORT = qw(beef orange car);
our @EXPORT_OK = qw(cd dvd);
our @EXPORT_FAIL = "oil";
our %EXPORT_TAGS = (
	round => [qw(orange cd dvd)],
	hard => [qw(car cd dvd)],
	liquid => [qw(oil)],
	);

sub beef {
	print "I am American beef \n";
}

sub orange {
	print "I am American orange \n";
}

sub car {
	print "I am American CAR \n";
}

sub cd {
	print "I am American cd \n";
}

sub dvd {
	print "I am American dvd \n";
}

sub oil {
	print "I am American oil \n";
}