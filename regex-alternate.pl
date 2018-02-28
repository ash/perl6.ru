use Grammar::Debugger;

'abcd' ~~ / 
    | a     { say 'a'   }
    | ab    { say 'ab'  }
    | abc   { say 'abc' }
/;

'abcd' ~~ /
    || a    { say 'a'   }
    || ab   { say 'ab'  }
    || abc  { say 'abc' }
/;
