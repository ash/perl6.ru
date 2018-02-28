sub f($x) is pure {
    say "f($x) called";
    return rand;
}

say f(10);
say f(10);
say f(5);
