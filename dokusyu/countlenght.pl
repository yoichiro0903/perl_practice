#! /bin/perl -w
# countlength.pl

@wordlist = (
    "perl",
    "ugly",
    "goblin",
    "oral",
    "saimultiniously",
);

foreach (@wordlist){
    $count += length($_);
}

print $count;
