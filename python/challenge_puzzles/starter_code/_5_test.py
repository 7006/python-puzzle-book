import pytest
from _5 import *


@pytest.mark.parametrize(
    "output_str, input_strs",
    [
        ("lizard", ["cat", "dog", "bird", "lizard"]),
        ("bird", ["cat", "dog", "bird", "wolf"]),
        ("a", ["a", "b", "c", "d"]),
    ],
)
def test_get_longest_string(output_str, input_strs: list[str]) -> None:
    assert output_str == get_longest_string(input_strs)
