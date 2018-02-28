proto sub f(|) {*}
multi sub f(Str) { say 'Str' }
multi sub f(Int) { say 'Int' }
multi sub f(Int, Str) { say 'Int/Str' }

f(42);
f('42');
f(42, '42');


# vs.

# proto sub f($) {*}
# multi sub f(Str) { say 'Str' }
# multi sub f(Int) { say 'Int' }
# multi sub f(Int, Str) { say 'Int/Str' }

# f(42);
# f('42');
# f(42, '42');
