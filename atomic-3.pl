my atomicint $c = 1;

my $x = ⚛$c;  $x = atomic-fetch($c);
$c ⚛= $x;     atomic-assign($c, $x);
$c⚛++;        atomic-fetch-inc($c);
$c⚛--;        atomic-fetch-dec($c);
++⚛$c;        atomic-inc-fetch($c);
--⚛$c;        atomic-dec-fetch($c);
$c ⚛+= $x;    atomic-fetch-add($c,$x);

say $x; # 1
say $c; # 3