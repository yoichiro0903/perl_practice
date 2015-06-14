#! /bin/perl -w
# local_my.pl

&local_my();

sub local_my{
    local($local_value) = "taro";
    my($my_value) = "hanako";
    &echo_local_my();
}

sub echo_local_my{
    print "local : $local_value\n";
    print "my : $my_value\n";
    
}
