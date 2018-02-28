proto sub f($x) {*}

multi sub f(Int $x) {
    return -$x;
}
multi sub f(Str $x) {
    return $x.flip;
}

say f(42);
say f('Hello');

multi sub f($a, $b) {
    return $a + $b;
}
say f(1, 2);
