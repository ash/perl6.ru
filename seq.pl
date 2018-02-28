.say for 1...5;
.say for 1..5;

(1...5).WHAT.say; # (Seq)
(1..5).WHAT.say; # (Range)

(1...*).is-lazy.say; # (Seq)
(1..*).is-lazy.say; # (Range)

