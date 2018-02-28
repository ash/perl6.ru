role R {
    has $.value;
    
    method add($b) {
        $.value + $b.value
    }

    method div($b) {
        $.value / $b.value
    }
}

class C does R {}

my C $x = C.new(value => 10);
my C $y = C.new(value => 3);
say $x.add($y).WHAT; # (Int)
say $x.div($y).WHAT; # (Rat)
