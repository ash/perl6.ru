use nqp;

class C { 
    has $!attr;

    method set_attr($value) {
        $!attr = $value;
    }
}

my $o := nqp::create(C);
$o.set_attr('my value');
nqp::say(nqp::getattr($o, C, '$!attr'));
