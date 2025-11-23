-module(p3).
-export([sum_even/1]).

sum_even(InputNums) ->
    lists:sum([Num || Num <- InputNums, Num rem 2 =:= 0]).
