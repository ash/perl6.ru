sub postcircumfix:<¿ ?>(Str $question, Str $answer) {
    say "Q: $question";
    say "A: $answer";
}

"Hello"¿"World"?;
