my $r1 = 0.1 + 0.2 - 0.3;
say $r1.WHAT; # (Rat)
say $r1.fmt('%.25f');

my $r2 = 1e-1 + 2e-1 - 3e-1;
say $r2.WHAT; # (Num)
say $r2.fmt('%.35f');


say (0.1 + 0.2).WHAT; # (Rat)
say (1e-1 + 2e-1).WHAT; # (Num)
say (0.1 + 1E-1).WHAT;  # (Num)
