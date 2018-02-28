my Bool $f = False;
my Bool $t = True;
my Bool $u;

say $f.pred; # False
say $t.pred; # False
say $u.pred; # False
say False.pred; # False
say True.pred; # False

say $f.succ; # True
say $t.succ; # True
say $u.succ; # True
say False.succ; # True
say True.succ; # True
