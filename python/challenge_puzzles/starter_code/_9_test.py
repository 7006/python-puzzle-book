import pytest
from _9 import *


@pytest.mark.parametrize(
    "morse_code, input_str",
    [
        (
            ".... . .-.. .-.. --- --..-- . .-- --- .-. .-.. -.. -.-.–",
            "HELLO, WORLD!",
        ),
        (
            ".- -... -.-. -.. . ..-. --. .... .. .--- -.- .-.. -- -. --- .--. --.- .-. ... - ..- ...- .-- -..- -.-- --.. --..-- .-.-.- ---... ..--.. .----. -....- -..-. -.--. -.--.- .-..-. .--.-. -...- .-.-. -.--",
            "abcdefghijklmnopqrstuvwxyz,.:?'-/()\"@=+!",
        ),
        ("", ""),
    ],
)
def test_filter_type_str(morse_code: str, input_str: str) -> None:
    assert morse_code == string_to_morse_code(input_str)
