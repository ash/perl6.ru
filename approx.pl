say 3.14159265358979323 =~= pi; # True
say 3.14 =~= pi; # False


{
    my $*TOLERANCE = 0.1;
    say pi =~= 3.14; # True
}

say 1E-14 =~= 0; # False
say 1E-16 =~= 0; # True
