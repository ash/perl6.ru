say 5 min 10; # 5
say 5 max 10; # 10

say 4 min 2 min 10 min 5 min 3; # 2
say 4 max 2 max 10 max 5 max 3; # 10

say [min] 4, 2, 10, 5, 3; # 2
say [max] 4, 2, 10, 5, 3; # 10

say (4, 2, 10, 5, 3).min; # 2
say (4, 2, 10, 5, 3).max; # 10

say <one two three four five six>.min;
say <one two three four five six>.max;