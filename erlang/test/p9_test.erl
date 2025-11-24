-module(p9_test).
-include_lib("eunit/include/eunit.hrl").

string_to_morse_code_test_() ->
    [
        ?_assertEqual(
            <<".... . .-.. .-.. --- --..-- / .-- --- .-. .-.. -.. -.-.--">>,
            p9:string_to_morse_code(<<"HELLO, WORLD!">>)
        ),
        ?_assertEqual(
            <<".- -... -.-. -.. . ..-. --. .... .. .--- -.- .-.. -- -. --- .--. --.- .-. ... - ..- ...- .-- -..- -.-- --.. --..-- .-.-.- ---... ..--.. .----. -....- -..-. -.--. -.--.- .-..-. .--.-. -...- .-.-. -.-.--">>,
            p9:string_to_morse_code(<<"abcdefghijklmnopqrstuvwxyz,.:?'-/()\"@=+!">>)
        ),
        ?_assertEqual(
            <<"">>,
            p9:string_to_morse_code(<<"">>)
        )
    ].
