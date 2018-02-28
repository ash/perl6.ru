my @a = < alpha beta gamma delta >;

say 1;
for @a {
    say $_;
}

say 2;
.say for @a;

say 3;
for @a -> $x {
    say $x;
}

say 4;
for @a -> $x, $y {
    say "$x $y";
}
