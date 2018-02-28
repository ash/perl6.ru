proto sub g(Int $x, Int $y) {*}

multi sub g(Int $x, Int $y) {
    return $x + $y;
}
multi sub g(Int $x, Int $y where {$y > 1_000_000 * $x}) {
    return $y;
}

say g(1, 2);
say g(3, 10_000_000);

say g(pi, e);
