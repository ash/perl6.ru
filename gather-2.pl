my @a = gather {
    take 'a';
    f('b');
}

sub f($x) {
    take $x;
}

say @a; # [a b]
