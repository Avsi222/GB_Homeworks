//
//  main.m
//  Task1
//
//  Created by Арсений Дорогин on 12/02/2019.
//  Copyright © 2019 Арсений Дорогин. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Wheel.h"
#import "Engine.h"
#import "Car.h"
#import "Helm.h"

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
        /*
        int a = 10,b = 5;
        printf("a = %i, b = %i \n",a,b);
        
        Operat operation = slozh;
        NSLog(@"Сложение  = %i",ChechSymbol(operation, a, b));
        
        
        operation = razn;
        NSLog(@"Разность  = %i",ChechSymbol(operation, a, b));
        
        operation = proiz;
        NSLog(@"Умножение  = %i",ChechSymbol(operation, a, b));
        
        operation = del;
        NSLog(@"Деление  = %i",ChechSymbol(operation, a, b));
        
        */
        Car *car = [[Car alloc] init];
        
        // Создание первого колеса
        Wheel *wheel1 = [[Wheel alloc] initWithNumber:@1];
        // Создание второго колеса
        Wheel *wheel2 = [[Wheel alloc] initWithNumber:@2];
        // Создание третьего колеса
        Wheel *wheel3 = [[Wheel alloc] initWithNumber:@3];
        // Создание четвертого колеса
        Wheel *wheel4 = [[Wheel alloc] initWithNumber:@4];
        // Создание пятого колеса
        Wheel *wheel5 = [[Wheel alloc] initWithNumber:@5];
        // Создание шестого колеса
        Wheel *wheel6 = [[Wheel alloc] initWithNumber:@6];
        
        
        // Создание массива колес
        NSArray *wheels = [[NSArray alloc] initWithObjects:wheel1, wheel2, wheel3, wheel4,wheel5,wheel6, nil];
        // Создание двигателя
        Engine *engine = [[Engine alloc] initWithModel:@"BMW X5M 400x"];
        //Создание руля
        Helm *helm = [[Helm alloc]initWithModel:@"BMW M SPORT РУЛЬ"];
        // Конфигурация автомобиля с созданными компонентами
        [car configWithEngine:engine andhelm:helm andWheels:wheels];
        
        // Освобождение автомобиля и удаление компонентов
        [car release]; 
        
    }
    return 0;
}
