-module(p6_test).
-include_lib("eunit/include/eunit.hrl").

filter_even_length_strings_test_() ->
    [
        ?_assertEqual(["fish", "elephant"], ["cat", "dog", "fish", "elephant"]),
        ?_assertEqual([], ["q", "w", "e", "r", "t", "y"]),
        ?_assertEqual(["qq", "ww", "ee", "rr", "yy"], ["qq", "ww", "ee", "rr", "t", "yy"])
    ].
