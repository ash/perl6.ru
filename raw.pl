sub f($x is raw) {
    say $x.WHAT;
}

my $n = 42;
f($n);
f(42);


sub g($y is rw) {
    say "g is called with $y";
    say $y.WHAT;
}

my $m = 42;
g($m);
g(42); # error
