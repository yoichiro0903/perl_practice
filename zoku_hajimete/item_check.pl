#! /bin/perl -w
# item_check.pl


sub check_required_items {
    my $who = shift;
    my $items = shift;

    my %whos_items = map {$_ , 1} @{$items};

    my @required = qw(preserver sunscreen water_bottle jacket);
    for my $item (@required) {
        unless ($whos_items{$item}){
            print "$who is missing $item.\n";
        }
    }
}


my @skipper = qw(blue_shirt hat jacket preserver sunscreen);
check_required_items("The Skipper" , \@skipper);

my @professor = qw(blue_shirt slide_rule radio water_bottle sunscreen);
check_required_items("The Professor" , \@professor);

