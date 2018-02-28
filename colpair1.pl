sub f($x, :$print = 1) {
    say $x if $print;
    say $print;
}

f(3);
f(4, :!print);
#f(5, :print(1));