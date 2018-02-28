my $str = 'Hello, World';
my $int = 42;
my $rat = ¾;
my @array = <alpha beta>;
my %hash = GB => 'London', FR => 'Paris';

say $str; # Hello, World
say $int; # 42
say $rat; # 0.75
say @array; # [alpha beta]
say %hash; # {FR => Paris, GB => London}

$str.say; # Hello, World
$int.say; # 42
$rat.say; # 0.75
@array.say; # [alpha beta]
%hash.say; # {FR => Paris, GB => London}



class C {
    has $.x;
}
my $c = C.new(x => 10);

say $c; # C.new(x => 10)
$c.say; # C.new(x => 10)


say $str.perl; # "Hello, World"
say $int.perl; # 42
say $rat.perl; # 0.75
say @array.perl; # ["alpha", "beta"]
say %hash.perl; # {:FR("Paris"), :GB("London")}

say $c.perl; # C.new(x => 10)

dd $str; # Str $str = "Hello, World"
dd $int; # Int $int = 42
dd $rat; # Rat $rat = 0.75
dd @array; # Array @array = ["alpha", "beta"]
dd %hash; # Hash %hash = {:FR("Paris"), :GB("London")}
dd $c; # C $c = C.new(x => 10)

say "\nWHAT";
say $str.WHAT; # (Str)
say $int.WHAT; # (Int)
say $rat.WHAT; # (Rat)
say @array.WHAT; # (Array)
say %hash.WHAT; # (Hash)
say $c.WHAT; # (C)

