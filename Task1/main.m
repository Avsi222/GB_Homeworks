//
//  main.m
//  Task1
//
//  Created by Арсений Дорогин on 12/02/2019.
//  Copyright © 2019 Арсений Дорогин. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int first = 0;
        int second = 0;
        int third = 0;
        
        printf("Первое число: ");
        scanf("%d", &first);
        printf("Второе число: ");
        scanf("%d", &second);
        printf("Результат сложения: %d, Результат вычитания: %d, Результат деления:  %d, Результат умножения: %d \n", first + second,first - second,first / second,first * second);
        
        printf("Среднее арифметическое трех чисел \n");
        printf("Введите три числа через пробел \n");
        
        scanf("%d %d %d", &first,&second,&third);
        int AVG = (first+second+third)/3;
        printf("Среднее арифметическое = %d \n",AVG);
        
    }
    return 0;
}
