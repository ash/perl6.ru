my %distance = 
    Архангельск => 1261,
    Астрахань => 1411,
    Владимир => 185,
    Волгоград => 1000,
    Калининград => 1227,
    Мурманск => 1895,
    Новосибирск => 3550;

say %distance.sort({
#    say $^a.key ~ ', ' ~ $^a.value ~ ' vs. ' ~ $^b.key ~ ', ' ~ $^b.value;
    $^a.value <=> $^b.value
});

say %distance.sort( -> $город1, $город2 {
    $город1.value <=> $город2.value
});