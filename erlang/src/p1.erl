-module(p1).

-export([filter_strings_containing_a/1]).

filter_strings_containing_a(InputStrs) ->
    [InputStr || InputStr <- InputStrs, is_string_containing_a(InputStr)].

is_string_containing_a(InputStr) when is_list(InputStr) ->
    lists:member($a, InputStr);
is_string_containing_a(InputStr) when is_binary(InputStr) ->
    binary:match(InputStr, <<"a">>) =/= nomatch.
