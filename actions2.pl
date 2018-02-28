grammar DateStr {
    token TOP {
        | <year> <sep> <month> <sep> <day>
        | <day>  <sep> <month> <sep> <year>
        | <n>    <sep> <month> <sep> <nn>
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
    token n {
        \d ** 1..2
    }
    token nn {
        \d ** 2
    }
}

class DateStrActions {
    has %date;

    method TOP($/) {
        if %date<nn> {
            if %date<nn> > 35 {
                %date<year> = 1900 + %date<nn>;
            }
            else {
                %date<year> = 2000 + %date<nn>;
            }
            %date<day> = %date<n>;
        }
        printf "--> %4i-%02i-%02i\n", %date<year>, %date<month>, %date<day>
    }
    method year($/) {
        %date<year> = ~$/;
    }
    method month($/) {
        %date<month> = ~$/;
    }
    method day($/) {
        %date<day> = ~$/;
    }
    method nn($/) {
        %date<nn> = ~$/;
    }
    method n($/) {
        %date<n> = ~$/;
    }
}

my @tests = <
    2018-02-26
    2019-3-27
    28.04.2020
    30.05.21
    15.06.99
>;

for @tests -> $t {    
    print "$t\t";
    my $r = DateStr.parse($t, :actions(DateStrActions.new()));
}
