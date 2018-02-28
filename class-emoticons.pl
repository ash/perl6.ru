class 人 {
    has $.name;
    has $.sex;
    has $.phone is rw;
    
    method gist {
        "$.sex $.name"
    }
}

sub prefix:<👨>($name) {
    人.new(name => $name, sex => '👨')
}

sub prefix:<👩>($name) {
    人.new(name => $name, sex => '👩')
}

sub infix:<☎️>(人 $人 is rw, $phone) {
    $人.phone = $phone;
}

sub prefix:<📲>(人 $人) {
    print "Звоним +{$人.phone}";
    for 1..5 {
        sleep ½;
        '.'.print;
    }
    say "\n— Алло, {$人.name}?";
}

sub prefix:<🔊>(人 $人) {
    $人.say
}

my $X = 👨('Иван Петров');
my $Y = 👩('Лиза Смирнова');

$X ☎️ +79031234567;

🔊$X;
🔊$Y;

📲 $X;
