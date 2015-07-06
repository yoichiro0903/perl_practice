package Animal;

sub speak {
    my $class = shift;
    print "a $class goes ", $class->sound, "\n";
}

sub sound {
    die "you have to define sound() in a subclass";
}
1;
