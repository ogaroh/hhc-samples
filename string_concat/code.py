from ast import Str
from typing import List


s = "obaraerickogaronameogaroerickobaranonameogaroerickobara"
words = ["ogaro", "erick", "obara"]


def find_starting_indices(input_string,  input_words):
    concat_string = ''.join(input_words)

    input_words.reverse()
    concat_string_reversed = ''.join(input_words)

    index_1 = input_string.find(concat_string)

    all_indices = []

    if index_1 != -1:
        indices = [indices, index_1]
        all_indices.append(indices)
        print(indices)
    else:
        indices = []

    index_2 = input_string.find(concat_string_reversed)
    if index_2 != -1:
        indices = [indices, index_2]
        all_indices.append(indices)
        print(indices)
    else:
        indices = []

    print(all_indices)

    # subStringStartIndex = combineIndex != -1 ? [...subStringStartIndex, combineIndex] : subStringStartIndex


find_starting_indices(s, words)
