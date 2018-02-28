my $c = 0;

await do for 1..10 {
    start {
        $c++ for 1 .. 1_000_000
    }
}

say $c;

# $ perl6 atomic-2.pl 
# 3141187
# $ perl6 atomic-1.pl 
# 3211980
# $ perl6 atomic-1.pl 
# 3174944
# $ perl6 atomic-1.pl 
# 3271573
