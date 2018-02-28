use nqp;

# class Person {
#     has $name;
#     has $!age;
# }

# my $p := Person.new(name => 'John', age => 30);

# say nqp::getattr($p, Str, '$!name');
#say nqp::getattr($p, Person, '$!age');


class A { 
    has $!attr;

    method set_attr($value) {
        $!attr = $value;
    }
}

my $a := nqp::create(A);
$a.set_attr('my value');
nqp::say(nqp::getattr($a, A, '$!attr'));



class B { 
    has $.attr is rw;
}

my $b := nqp::create(B);
$b.attr = 'other value';
nqp::say(nqp::getattr($b, B, '$!attr'));

