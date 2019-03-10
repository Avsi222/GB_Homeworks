//
//  Calculate.m
//  Task1
//
//  Created by Арсений Дорогин on 10/03/2019.
//  Copyright © 2019 Арсений Дорогин. All rights reserved.
//

#import "Calculate.h"

@implementation Calculate

CalculateBlock sum = ^(int a, int b) {
    return a + b;
};

CalculateBlock Razn = ^(int a, int b) {
    return a - b;
};

CalculateBlock Proizv = ^(int a, int b) {
    return a * b;
};

CalculateBlock Del = ^(int a, int b) {
    if (b != 0) {
        return a / b;
    }
    return 0;
};

CalculateBlock Stepen = ^(int a, int b) {
    int c = pow(a,b);
    return c;
};

CalculateBlock sumSquares = ^(int a, int b) {
    return a * a + b * b;
};


+ (int)beginWithOperation: (OperationBlock) operation firstNumber: (int)firstNumber secondNumber: (int)secondNumber
{
    switch (operation) {
        case 1:
            return sum(firstNumber, secondNumber);
            break;
        case 2:
            return Razn(firstNumber, secondNumber);
            break;
        case 3:
            return Proizv(firstNumber, secondNumber);
            break;
        case 4:
            return Del(firstNumber, secondNumber);
            break;
        case 5:
            return Stepen(firstNumber, secondNumber);
            break;
        case 6:
            return sumSquares(firstNumber, secondNumber);
            break;
        default:
            NSLog(@"Action is invalid or not supported");
            return 0;
            break;
    }
};

@end
