

# convert an integer to its corresponding roman numeral
def convert_to_roman(number: int):
    arabic_numerals = [1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000]
    roman_numerals = ["I", "IV", "V", "IX", "X", "XL",
               "L", "XC", "C", "CD", "D", "CM", "M"]

    # the index to be used for reference. `[i = len(roman_numerals) - 1]` can also be used
    i = len(arabic_numerals) - 1

    roman_numeral = ""

    while number:
        div = number // arabic_numerals[i]
        number %= arabic_numerals[i]

        while div:
            roman_numeral = roman_numeral + roman_numerals[i] # append the roman numeral(s) to the string
            div -= 1
        i -= 1

    return roman_numeral.upper()


# function trigger
test = convert_to_roman(1824)
print(test)
