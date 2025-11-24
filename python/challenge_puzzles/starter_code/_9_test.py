import pytest
from _9 import *


@pytest.mark.parametrize(
    "morse, input_str",
    [
        (
            ".... . .-.. .-.. --- --..-- / .-- --- .-. .-.. -.. -.-.--",
            "HELLO, WORLD!",
        ),
        (
            ".- -... -.-. -.. . ..-. --. .... .. .--- -.- .-.. -- -. --- .--. --.- .-. ... - ..- ...- .-- -..- -.-- --.. --..-- .-.-.- ---... ..--.. .----. -....- -..-. -.--. -.--.- .-..-. .--.-. -...- .-.-. -.-.--",
            "abcdefghijklmnopqrstuvwxyz,.:?'-/()\"@=+!",
        ),
        ("", ""),
    ],
)
def test_filter_type_str(morse: str, input_str: str) -> None:
    assert morse == string_to_morse_code(input_str)
