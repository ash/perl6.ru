sub add(\a, \b) {
    a++;
    b++;
    return a + b;
}

my $a = 10;
my $b = 20;
say add($a, $b); # 32
say $a; # 11
say $b; # 21

say add(3, 4);
# Cannot resolve caller postfix:<++>(Int); the following candidates
# match the type but require mutable arguments:
#     (Mu:D $a is rw)
#     (Int:D $a is rw)

# The following do not match for other reasons:
#     (Bool:D $a is rw)
#     (Bool:U $a is rw --> Bool::False)
#     (Mu:U $a is rw)
#     (Num:D $a is rw)
#     (Num:U $a is rw)
#     (int $a is rw)
#     (num $a is rw --> num)
#   in sub add at bind-1.pl line 2
#   in block <unit> at bind-1.pl line 13

