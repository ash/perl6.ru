my @data = lazy gather {
    take f('a');
    take f('b');
    take f('c');
}

sub f($x) {
    say "Taking $x";
    return $x;
}

say @data[2];
