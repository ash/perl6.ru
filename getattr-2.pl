use nqp;

class C { 
    has $.attr is rw;
}

my $o := nqp::create(C);
$o.attr = 'other value';
nqp::say(nqp::getattr($o, C, '$!attr'));

nqp::getattr($o, C, '$!attr').WHAT.say;
