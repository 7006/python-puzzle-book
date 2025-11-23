import pytest
from _3 import *


@pytest.mark.parametrize(
    "num_sum, input_nums",
    [
        (30, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]),
        (150, [10, 20, 30, 40, 50]),
        (0, [9, 7, 5, 3, 1]),
    ],
)
def test_sum_even(num_sum: int, input_nums: list[int]) -> None:
    assert num_sum == sum_even(input_nums)
