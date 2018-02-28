my atomicint $c = 0;

await do for 1..10 {
    start {
        $c⚛++ for 1 .. 1_000_000
    }
}

say $c; # 10000000

# Atom Symbol U+269B
