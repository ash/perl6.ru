my @a = 'a' .. 'z';

say @a.pick; # b
say @a.roll; # u

say @a.pick(5); # (b i c x v)
say @a.roll(5); # (c k m c f)


my @b = 'a' .. 'd';

say @b.pick(10); # (c a b d)
say @b.roll(10); # (a c a c c a b a b b)

say pick(3, @a); # (g v d)
say roll(3, @a); # (j w r)