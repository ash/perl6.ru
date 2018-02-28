sub h(:$value) {
    say $value;
}

h(:value<10>); #
h(:value(11)); # 
h(:value[12]); # 
#h(:value\ {13}); # 
h(:value<>); # 
