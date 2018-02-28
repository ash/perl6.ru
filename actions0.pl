grammar DateStr {
    token TOP {
        [
        | <year> <sep> <month> <sep> <day>
        | <day>  <sep> <month> <sep> <year>
        ] {
            printf "--> %4i-%02i-%02i\n", $<year>, $<month>, $<day>
        }
    }
    token year {
        \d ** 4
    }
    token month {
        \d ** 1..2
    }
    token day {
        \d ** 1..2
    }
    token sep {
        <[-./]>
    }
}

my @tests = <
    2018-02-26
    2018-2-26
    26.02.2018
>;

for @tests -> $t {    
    print "$t\t";
    my $r = DateStr.parse($t);
}