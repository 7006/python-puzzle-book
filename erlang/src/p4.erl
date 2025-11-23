-module(p4).
-export([remove_vowels/1]).

remove_vowels(InputStr) ->
    [Char || Char <- InputStr, not is_vowel(Char)].

is_vowel($a) -> true;
is_vowel($e) -> true;
is_vowel($i) -> true;
is_vowel($o) -> true;
is_vowel($u) -> true;
is_vowel($A) -> true;
is_vowel($E) -> true;
is_vowel($I) -> true;
is_vowel($O) -> true;
is_vowel($U) -> true;
is_vowel(_Char) -> false.
