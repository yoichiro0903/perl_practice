use Cow;
use Horse;
use Sheep;

my @pasture = qw(Cow Cow Horse Sheep Horse);
foreach my $beast(@pasture){
    use strict 'refs';
    $beast->speak;
}



