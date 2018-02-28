sub f($a, @b, $c) {
    say "a = $a";
    say "b = @b[]";
    say "c = $c";
}

my @arr = <5 7 9>;
f(10, @arr, 20);

# a = 10
# b = 5 7 9
# c = 20