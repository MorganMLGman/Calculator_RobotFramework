#ifndef __CALCULATOR_H
#define __CALCULATOR_H

#define EXPORT __declspec(dllexport)

EXPORT float add(float num_a, float num_b);
EXPORT float sub(float num_a, float num_b);
EXPORT float mul(float num_a, float num_b);
EXPORT float div(float num_a, float num_b);
EXPORT float mod(float num_a, float num_b);
EXPORT float calculator(char operator, float num_a, float num_b);

#endif