#ifndef __CALCULATOR_H
#define __CALCULATOR_H

#define EXPORT __declspec(dllexport)

EXPORT double add(double num_a, double num_b);
EXPORT double sub(double num_a, double num_b);
EXPORT double mul(double num_a, double num_b);
EXPORT double div(double num_a, double num_b);
EXPORT int mod(double num_a, double num_b);
EXPORT double calculator(char operator, double num_a, double num_b);

#endif