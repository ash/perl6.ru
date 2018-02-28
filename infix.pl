sub infix:<≈>($a, $b) {
    abs($a) - abs($b) < 1
}

say 3.14 ≈ pi; # True
