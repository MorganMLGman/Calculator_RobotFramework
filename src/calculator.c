#include "calculator.h"
#include <stdio.h>
#include <math.h>

EXPORT float add(float num_a, float num_b)
{
    return num_a + num_b;
}

EXPORT float sub(float num_a, float num_b)
{
    return num_a - num_b;
}

EXPORT float mul(float num_a, float num_b)
{
    return num_a * num_b;
}

EXPORT float div(float num_a, float num_b)
{
    if(num_b == 0)
    {
        //printf("Dividing by 0 is not possible!\n");
        return 0;
    }
    else
    {
        return num_a / num_b;
    }
}

EXPORT float mod(float num_a, float num_b)
{
    return fmod(num_a, num_b);
}

EXPORT float calculator(char operator, float num_a, float num_b)
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