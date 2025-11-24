-module(p9).
-export([string_to_morse_code/1]).

string_to_morse_code(<<>>) ->
  <<>>;
string_to_morse_code(<<Char:8>>) ->
  morse(Char);
string_to_morse_code(<<Char:8, Bin/binary>>) ->
    <<(morse(Char))/binary, " ", (string_to_morse_code(Bin))/binary>>.

morse($A) -> <<".-">>;
morse($a) -> <<".-">>;
morse($B) -> <<"-...">>;
morse($b) -> <<"-...">>;
morse($C) -> <<"-.-.">>;
morse($c) -> <<"-.-.">>;
morse($D) -> <<"-..">>;
morse($d) -> <<"-..">>;
morse($E) -> <<".">>;
morse($e) -> <<".">>;
morse($F) -> <<"..-.">>;
morse($f) -> <<"..-.">>;
morse($G) -> <<"--.">>;
morse($g) -> <<"--.">>;
morse($H) -> <<"....">>;
morse($h) -> <<"....">>;
morse($I) -> <<"..">>;
morse($i) -> <<"..">>;
morse($J) -> <<".---">>;
morse($j) -> <<".---">>;
morse($K) -> <<"-.-">>;
morse($k) -> <<"-.-">>;
morse($L) -> <<".-..">>;
morse($l) -> <<".-..">>;
morse($M) -> <<"--">>;
morse($m) -> <<"--">>;
morse($N) -> <<"-.">>;
morse($n) -> <<"-.">>;
morse($O) -> <<"---">>;
morse($o) -> <<"---">>;
morse($P) -> <<".--.">>;
morse($p) -> <<".--.">>;
morse($Q) -> <<"--.-">>;
morse($q) -> <<"--.-">>;
morse($R) -> <<".-.">>;
morse($r) -> <<".-.">>;
morse($S) -> <<"...">>;
morse($s) -> <<"...">>;
morse($T) -> <<"-">>;
morse($t) -> <<"-">>;
morse($U) -> <<"..-">>;
morse($u) -> <<"..-">>;
morse($V) -> <<"...-">>;
morse($v) -> <<"...-">>;
morse($W) -> <<".--">>;
morse($w) -> <<".--">>;
morse($X) -> <<"-..-">>;
morse($x) -> <<"-..-">>;
morse($Y) -> <<"-.--">>;
morse($y) -> <<"-.--">>;
morse($Z) -> <<"--..">>;
morse($z) -> <<"--..">>;
morse($0) -> <<"-----">>;
morse($1) -> <<".----">>;
morse($2) -> <<"..---">>;
morse($3) -> <<"...--">>;
morse($4) -> <<"....-">>;
morse($5) -> <<".....">>;
morse($6) -> <<"-....">>;
morse($7) -> <<"--...">>;
morse($8) -> <<"---..">>;
morse($9) -> <<"----.">>;
morse($,) -> <<"--..--">>;
morse($.) -> <<".-.-.-">>;
morse($:) -> <<"---...">>;
morse($?) -> <<"..--..">>;
morse($') -> <<".----.">>;
morse($-) -> <<"-....-">>;
morse($/) -> <<"-..-.">>;
morse($() -> <<"-.--.">>;
morse($)) -> <<"-.--.-">>;
morse($") -> <<".-..-.">>;
morse($@) -> <<".--.-.">>;
morse($=) -> <<"-...-">>;
morse($+) -> <<".-.-.">>;
morse($!) -> <<"-.-.--">>;
morse($\s) -> <<"/">>;
morse(_) -> <<>>.
