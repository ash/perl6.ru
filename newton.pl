my $N = 100;
my @x = Rat.new(1, 1), 
        -> $x { $x - ($x ** 2 - $N) / (2 * $x) } ... *;
.say for @x[^10];
