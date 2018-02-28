await gather for 1..10 -> $n {
    take start {
        say "Done $n";
    }
}

say 'Waiting...';
