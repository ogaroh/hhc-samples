/**
 * @file formatNumberShort.c
 * @author Erick Ogaro (erick.ogaro@sibasi.ltd)
 * @brief
 * @version 0.1
 * @date 2022-08-11
 *
 * @copyright Copyright (c) 2022
 *
 * to run execute: gcc -o formatNumberShort formatNumberShort.c && ./formatNumberShort
 */

#include <stdio.h>
#include <locale.h>

int main(void)
{
    setlocale(LC_ALL, ""); /* use user selected locale */

    double number;

    // reads and stores input from user
    printf("Enter a non-negative number: ");
    scanf("%lf", &number);

    if (number >= 0)
    {
        printf("%'lf", number);
    }
    else
    {
        // negative number
        printf("The number you entered (%lf) is negative. Please try again.", number);
    }

    return 0;
}