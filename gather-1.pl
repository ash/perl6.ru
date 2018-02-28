my @data = gather {
    take 'a';
    take 'b';
    take 'c';
};
say @data; # [a b c]

(gather {
    take 'a';
    take 'b';
    take 'c';
}).WHAT.say; # (Seq)

