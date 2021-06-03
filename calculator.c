#include "calculator.h"
#include <stdio.h>

EXPORT double add(double num_a, double num_b)
{
    return num_a + num_b;
}

EXPORT double sub(double num_a, double num_b)
{
    return num_a + num_b;
}

EXPORT double mul(double num_a, double num_b)
{
    return num_a * num_b;
}

EXPORT double div(double num_a, double num_b)
{
    if(num_b == 0)
    {
        printf("Dividing by 0 is not possible!\n");
        return 0;
    }
    else
    {
        return num_a / num_b;
    }
}

EXPORT int mod(double num_a, double num_b)
{
    return (int)num_a % (int)num_b;
}

EXPORT double calculator(char operator, double num_a, double num_b)
{
    switch (operator)
    {
    case '+':
        return add(num_a, num_b);
    case '-':
        return sub(num_a, num_b);
    case '*':
        return mul(num_a, num_b);
    case '/':
        return div(num_a, num_b);
    case '%':
        return mod(num_a, num_b);
    
    default:
        printf("Operator %c in not correct", operator);
        break;
    }
}