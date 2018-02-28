grammar DateStr {
    token TOP {
        [
        | <year> <sep> <month> <sep> <day>
        | <day>  <sep> <month> <sep> <year>
        | <nn>   <sep> <month> <sep> <n>
        | <n>    <sep> <month> <sep> <nn>
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
    token n {
        \d ** 1..2
    }
    token nn {
        \d ** 2
    }
    token sep {
        <[-./]>
    }
}

my @tests = <
    2018-01-02
    2018-1-1
    01.02.2018
    1.2.18
    31-12-98
>;

for @tests -> $t {    
    my $r = DateStr.parse($t);
    say "$t " ~ ($r ?? 'OK' !! 'Not OK');
}