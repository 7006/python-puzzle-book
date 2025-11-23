-module(p5_test).
-include_lib("eunit/include/eunit.hrl").

get_longest_string_test_() ->
    [
        ?_assertEqual(
            "lizard",
            p5:get_longest(["cat", "dog", "bird", "lizard"])
        ),
        ?_assertEqual(
            "bird",
            p5:get_longest(["cat", "dog", "bird", "wolf"])
        ),
        ?_assertEqual(
            "a",
            p5:get_longest(["a", "b", "c", "d"])
        )
    ].

get_longest_binary_string_test_() ->
    [
        ?_assertEqual(
            <<"lizard">>,
            p5:get_longest([<<"cat">>, <<"dog">>, <<"bird">>, <<"lizard">>])
        ),
        ?_assertEqual(
            <<"bird">>,
            p5:get_longest([<<"cat">>, <<"dog">>, <<"bird">>, <<"wolf">>])
        ),
        ?_assertEqual(
            <<"a">>,
            p5:get_longest([<<"a">>, <<"b">>, <<"c">>, <<"d">>])
        )
    ].
