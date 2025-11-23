def sum_even(input_nums: list[int]) -> int:
    iterable = (i for i in input_nums if i % 2 == 0)
    return sum(iterable, start=0)
