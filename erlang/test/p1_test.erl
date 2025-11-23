-module(p1_test).
-include_lib("eunit/include/eunit.hrl").

filter_strings_containing_a_test_() ->
    [
        {
            "filter_strings_containing_a: string list",
            ?_assertEqual(
                ["apple", "banana", "date"],
                pzl:filter_strings_containing_a([
                    "apple", "banana", "cherry", "date"
                ])
            )
        },
        {
            "filter_strings_containing_a: binary list",
            ?_assertEqual(
                [<<"apple">>, <<"banana">>, <<"date">>],
                pzl:filter_strings_containing_a([
                    <<"apple">>, <<"banana">>, <<"cherry">>, <<"date">>
                ])
            )
        },
        {
            "filter_strings_containing_a: empty list",
            ?_assertEqual(
                [],
                pzl:filter_strings_containing_a([])
            )
        }
    ].
