import pytest
from _8 import *


@pytest.mark.parametrize(
    "output_list, input_list",
    [
        (["hello", "www"], ["hello", 1, 2, "www"]),
        ([], []),
        ([], [1, 2, 3, 4, 5]),
    ],
)
def test_filter_type_str(output_list: list[str], input_list: list[str | int]) -> None:
    assert output_list == filter_type_str(input_list)
