/**
 * @file formatNumber.c
 * @author Erick Ogaro (erick.ogaro@sibasi.ltd)
 * @brief
 * @version 0.1
 * @date 2022-08-11
 *
 * @copyright Copyright (c) 2022
 *
 * to run execute: gcc -o formatNumber formatNumber.c && ./formatNumber
 */

#include <stdio.h>
#include <string.h>

int main(void)
{
    double number;

    // reads and stores input from user
    printf("Enter a non-negative number: ");
    scanf("%lf", &number);

    if (number >= 0)
    {
        static char result[64];        // result string
        char *result_pointer = result; // pointer to the result string characters
        char separator = ',';
        size_t tail;

        snprintf(result, sizeof(result), "%.2f", number); // convert the number to string

        while (*result_pointer != 0 && *result_pointer != '.')
            result_pointer++;

        tail = result + sizeof(result) - result_pointer;

        while (result_pointer - result > 3)
        {
            result_pointer -= 3;
            memmove(result_pointer + 1, result_pointer, tail);
            *result_pointer = separator;
            tail += 4;
        }
        printf("%s", result);
    }
    else
    {
        // negative number
        printf("The number you entered (%lf) is negative. Please try again.", number);
    }

    return 0;
}