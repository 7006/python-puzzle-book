-module(p1_test).
-include_lib("eunit/include/eunit.hrl").

filter_strings_containing_a_list_test_() ->
    [
        {
            "string list",
            ?_assertEqual(
                ["apple", "banana", "date"],
                p1:filter_strings_containing_a(["apple", "banana", "cherry", "date"])
            )
        },
        {
            "string non match list",
            ?_assertEqual(
                [],
                p1:filter_strings_containing_a(["bbbb", "cccc"])
            )
        },
        {
            "empty list",
            ?_assertEqual([], p1:filter_strings_containing_a([]))
        }
    ].

filter_strings_containing_a_binary_test_() ->
    [
        {
            "binary list",
            ?_assertEqual(
                [<<"apple">>, <<"banana">>, <<"date">>],
                p1:filter_strings_containing_a([<<"apple">>, <<"banana">>, <<"cherry">>, <<"date">>])
            )
        },
        {
            "binary non match list",
            ?_assertEqual(
                [],
                p1:filter_strings_containing_a([<<"bbbb">>, <<"cccc">>])
            )
        }
    ].
