-module(p5).
-export([get_longest_str/1]).
-export([get_longest_binary_str/1]).

get_longest_str(InputStrs) ->
    Fn = fun
        (Input, Longest) when length(Input) > length(Longest) ->
            Input;
        (_Input, Longest) ->
            Longest
    end,
    lists:foldl(Fn, "", InputStrs).

get_longest_binary_str(InputStrs) ->
    Fn = fun
        (Input, Longest) when byte_size(Input) > byte_size(Longest) ->
            Input;
        (_Input, Longest) ->
            Longest
    end,
    lists:foldl(Fn, <<"">>, InputStrs).
