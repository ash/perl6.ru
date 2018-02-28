my %h = alpha => 'a', beta => 'b', 
        gamma => 'c', delta => 'd';

for %h.kv -> $greek, $latin {
    say "$greek=$latin";
}
