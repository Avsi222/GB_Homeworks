//
//  main.m
//  Task1
//
//  Created by Арсений Дорогин on 12/02/2019.
//  Copyright © 2019 Арсений Дорогин. All rights reserved.
//

#import <Foundation/Foundation.h>




int calculate(NSString *method, int a, int b) {
    
    if ([method isEqualToString:@"+"]) {
        return calculate_sum(a,b);
    }
    else if ([method isEqualToString:@"-"]) {
        return calculate_razn(a,b);
    }
    else if ([method isEqualToString:@"*"]) {
        return calculate_proiz(a,b);
    }
    else if ([method isEqualToString:@"/"]) {
        return calculate_del(a,b);
    }
    else {
        NSLog(@"Функция не знает переданный метод");
        return 0;
    }
    
    return a + b;
    
}


int calculate_sum(int a, int b) {
    return a + b;
}

int calculate_razn(int a, int b) {
    return a - b;
}

int calculate_proiz(int a, int b) {
    return a * b;
}

int calculate_del(int a, int b) {
    return a / b;
}

enum Operat {
    slozh,
    razn,
    del,
    proiz
};

typedef enum Operat Operat;


int ChechSymbol(Operat oper,int a,int b){
    
    if (oper == slozh) {
        return calculate_sum(a, b);
    }
    if (oper == razn) {
        return calculate_razn(a, b);
    }
    if (oper == proiz) {
        return calculate_proiz(a, b);
    }
    if (oper == del) {
        return calculate_del(a, b);
    }
    return 0;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //TASK 1: Программа которая будет выводить список введенных пользователй значений
        
        NSString *inputChar;
        printf("Введите значения: \n");
        scanf("%s", &inputChar);
        printf("%s \n",&inputChar);
        
        //TASK 2: Калькулятор с перечислениями
        

        int a = 10,b = 5;
        char symb;
        printf("a = %i, b = %i \n",a,b);
        
        Operat operation = slozh;
        NSLog(@"Сложение  = %i",ChechSymbol(operation, a, b));
        
        
        operation = razn;
        NSLog(@"Разность  = %i",ChechSymbol(operation, a, b));
        
        operation = proiz;
        NSLog(@"Умножение  = %i",ChechSymbol(operation, a, b));
        
        operation = del;
        NSLog(@"Деление  = %i",ChechSymbol(operation, a, b));
        
        
        
        

        
        
    }
    return 0;
}
