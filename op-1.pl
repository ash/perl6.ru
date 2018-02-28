sub prefix:<§>($str) {
    $str.uc
}


sub prefix:<🔊>(Str $str) {
    $str.uc
}

say §'hello, world!';
say 🔊'hello, world!';

