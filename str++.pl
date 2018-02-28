#use v5.10;
my $s = 'World';

$s++;
say $s; # Worle

$s--;
say $s; # World


my $n = 'n98';
#say $n.WHAT;

say --$n; 
say ++$n;
say ++$n;


my $filename = 'data000.csv';
say $filename++ for 1..5;

# data000.csv
# data001.csv
# data002.csv
# data003.csv
# data004.csv