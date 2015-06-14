#! /bin/perl -w
# block.pl

$value = "global";
print "before subroutine : $value\n";
&block();
print "after subroutine : $value\n";

sub block {
    my($value) = "local";
    print "\tbefore block : $value\n";
    {
        my($value) = "block";
        print "\tin block : $value\n";
    }
    print "\tafter block : $value\n";
}
