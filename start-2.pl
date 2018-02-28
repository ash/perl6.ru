my @promises;
for 1..10 -> $n {
    push @promises, start {
        say "Done $n";
    }
}

say 'Waiting...';
await @promises;
