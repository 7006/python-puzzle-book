import pytest
from _2 import *


@pytest.mark.parametrize(
    "num_one, num_two, num_sum",
    [
        (20, 20, 40),
        (20, 30, None),
        (20, 100, None),
    ],
)
def test_sum_if_less_than_fifty(
    num_one: int, num_two: int, num_sum: int | None
) -> None:
    assert sum_if_less_than_fifty(num_one, num_two) == num_sum
