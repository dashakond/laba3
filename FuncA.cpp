// FuncA.cpp
#include "FuncA.h"
#include <cmath>

double FuncA::calculate() {
    int n = 3;
    double sum = 0.0;
    for (int i = 0; i < n; ++i) {
        sum += (pow(-1, i) * pow(x, 2 * i)) / tgamma(2 * i + 1);
    }
    return sum;
}

