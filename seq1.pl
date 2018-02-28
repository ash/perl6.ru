.say for 1, 3 ... 11;

.say for 1, 2, 4 ... 64;

.say for 1, 3 ... 10;

(1...*).is-lazy.say;
(1..10).is-lazy.say;


for 1, 2, 4 ... * -> $n {
    last if $n > 1000;
    say $n;
}

.say for 1, {$_ * 3} ... 243;

#.say for 1, -* ... *;