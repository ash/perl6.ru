my @lines = './hw.pl'.IO.lines;

for @lines {
    next if /^ '=' begin/ ff /^ '='     end/;
    .say;
}