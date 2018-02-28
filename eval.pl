use MONKEY-SEE-NO-EVAL;
#use MONKEY;

#EVAL('say 123');
#EVAL('say {456}');
#EVAL("say {789}");

#EVAL "say { 5 + 5 }";

EVAL {say 123};

#{say 123}.WHAT.say;

# eval('say 42');

# sub eval($x) {
#     say "!!";
# }