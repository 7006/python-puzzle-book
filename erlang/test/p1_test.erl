-module(p1_test).
-include_lib("eunit/include/eunit.hrl").

filter_strings_containing_a_test_() ->
    [
        ?_assertEqual(
            ["apple", "banana"],
            p1:filter_strings_containing_a(["apple", "banana", "cherry"])
        ),
        ?_assertEqual(
            [],
            p1:filter_strings_containing_a(["bbbb", "cccc"])
        ),
        ?_assertEqual(
            [],
            p1:filter_strings_containing_a([])
        )
    ].

filter_binary_strings_containing_a_test_() ->
    [
        ?_assertEqual(
            [<<"apple">>, <<"banana">>],
            p1:filter_strings_containing_a([<<"apple">>, <<"banana">>, <<"cherry">>])
        ),
        ?_assertEqual(
            [],
            p1:filter_strings_containing_a([<<"bbbb">>, <<"cccc">>])
        )
    ].
