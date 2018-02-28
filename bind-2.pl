sub add($a is raw, $b is raw) {
    $a++;
    $b++;
    return $a + $b;
}

my $a = 10;
my $b = 20;
say add($a, $b); # 32
say $a; # 11
say $b; # 21

say add(3, 4);

