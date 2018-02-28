my $str = 'Perl 5';
$str ~~ s{5}{6};
say $str;

# ===SORRY!=== Error while compiling /Users/ash/Books/Perl 6 Inside Out/s-2.pl
# Unsupported use of brackets around replacement; in Perl 6 please use assignment syntax
# at /Users/ash/Books/Perl 6 Inside Out/s-2.pl:2
# ------> $str ~~ s{5}⏏{6};