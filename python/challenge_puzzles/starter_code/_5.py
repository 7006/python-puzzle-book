def get_longest_string(input_strs: list[str]) -> str:
    longest_str = ""
    for input_str in input_strs:
        if len(input_str) > len(longest_str):
            longest_str = input_str
    return longest_str
