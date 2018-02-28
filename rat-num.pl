my $x = 1/0;
say $x.WHAT; # (Rat)

# say $x; # Error

my $y = $x.Num;
say $y.WHAT; # (Num)

say $y; # Inf