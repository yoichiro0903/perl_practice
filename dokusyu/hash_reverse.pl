#! /bin/perl -w
# hash_reverse.pl

%hash = (
    "a" => 1,
    "b" => 2,
    "c" => 3,
);

%rev_hash = &hash_reverse(%hash);

print %rev_hash,"\n";

sub hash_reverse{
    my(%hash) = @_;
    %rev_hash = reverse(%hash);
    return %rev_hash;
}

