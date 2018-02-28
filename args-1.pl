sub f($x is copy) {
    $x++;
    say $x;
}

sub g($x is rw) {
    $x++;
    say $x;
}

my $v = 42;
f($v);  # 43
say $v; # 42

g($v);  # 43
say $v; # 43

f(42);
#g(42);

sub h($x is raw) {
    $x++;
    say $x;
}
my $n = 42;
h($n); # 43
say $n; # 43
# h(42);
