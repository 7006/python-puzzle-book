-module(p4_test).
-include_lib("eunit/include/eunit.hrl").

remove_vowels_test_() ->
    [
        {"mixed", ?_assertEqual("Hll, Wrld!", p4:remove_vowels("Hello, World!"))},
        {"only vowels", ?_assertEqual("", p4:remove_vowels("aeiouAEIOU"))},
        {"no vowels", ?_assertEqual("zzccbbnnLLKKJJHH", p4:remove_vowels("zzccbbnnLLKKJJHH"))}
    ].
