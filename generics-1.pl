role R[::T] {
    has T $.value;
    
    method add($b) {
        T.new($.value + $b.value)
    }

    method div($b) {   
        T.new($.value / $b.value)
    }
}

class N does R[Int] {}

my N $i = N.new(value => 10);
my N $j = N.new(value => 3);
say $i.add($j);
say $i.div($j);


class F does R[Num] {}

my F $x = F.new(value => 10e0);
my F $y = F.new(value => 3e0);
say $x.add($y).WHAT;
say $x.div($y).WHAT;


# class C {
#     has Int $.value;
    
#     method add($b) {
#         Int.new($.value + $b.value)
#     }

#     method div($b) {   
#         Int.new($.value / $b.value)
#     }
# }
# my C $c = C.new(value => 10);
# my C $d = C.new(value => 3);
# say $c.div($d);
