-module(p7_test).
-include_lib("eunit/include/eunit.hrl").

reverse_elements_test_() ->
    [
        ?_assertEqual([5, 4, 3, 2, 1], p7:reverse_elements([1, 2, 3, 4, 5])),
        ?_assertEqual([], p7:reverse_elements([])),
        ?_assertEqual([0, 5, 30, 10, 25, 15, 20], p7:reverse_elements([20, 15, 25, 10, 30, 5, 0]))
    ].
