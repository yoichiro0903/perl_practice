#! /bin/perl -w
# our_scope.pl

@global_val = (1,2,3);

&modify_my();
print "[after my]", @global_val, "\n";

&modify_our();
print "[after our]", @global_val, "\n";

sub modify_my{
    my(@global_val);
    print "[my]", @global_val, "\n";
    @global_val = ("a","b","c");
    print "[modify my]",@global_val,"\n";
}

sub modify_our{
    our(@global_val);
    print "[our]",@global_val,"\n";
    @global_val = ("a","b","c");
    print "[modify our]",@global_val,"\n";
}
