proto sub f($x) {
    if $x.Str eq '3' {
        return {*}
    }
    say "proto f($x)";
}

multi sub f($x) {
    say "f($x)"
}

multi sub f(Int $x) {
    say "f(Int $x)"
}

multi sub f(Str $x) {
    say "f(Str $x)"
}

f(2);
f('2');
f(3);
f('3');
