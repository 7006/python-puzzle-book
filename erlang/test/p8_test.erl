-module(p8_test).
-include_lib("eunit/include/eunit.hrl").

filter_type_str_test_() ->
    [
        ?_assertEqual(["hello", "www"], p8:filter_type_str(["hello", 1, 2, "www"])),
        ?_assertEqual([], p8:filter_type_str([])),
        ?_assertEqual([], p8:filter_type_str([1, 2, 3, 4, 5]))
    ].

filter_type_binary_str_test_() ->
    [
        ?_assertEqual([<<"hello">>, <<"www">>], p8:filter_type_str([<<"hello">>, 1, 2, <<"www">>])),
        ?_assertEqual([], p8:filter_type_str([])),
        ?_assertEqual([], p8:filter_type_str([1, 2, 3, 4, 5]))
    ].
