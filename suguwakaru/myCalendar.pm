#
# myCalendar.pm
#
# sample file name : myCalendar.pm


package myCalendar;
use base 'Calendar';

sub new {
    my ($class, @arg) = @_;
    $class->new_from_Gregorian(@arg);
}

sub today {
    shift->SUPER::today->convert_to_Gregorian;
}

1;
