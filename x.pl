my $base = q:to/END/;
    окна
    пластиковые окна
    подоконники
    END

my $tags = q:to/END/;
    установка
    замер
    замер и установка
    изготовление
   END

my $location = q:to/END/;

    москва
    московская область
   END

my @keywords = $base.lines X~ $tags.lines X~ $location.lines;
.say for @keywords;
