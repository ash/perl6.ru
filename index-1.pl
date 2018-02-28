my @a = <a b c>;
say @a[* - *];         # a
say @a[* - * + * - 1]; # c
