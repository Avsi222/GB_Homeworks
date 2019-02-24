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
        
        //NSString *inputChar;
        //printf("Введите значения: \n");
        //scanf("%s", &inputChar);
        //printf("%s \n",&inputChar);
        
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
        
        
        
        //TASK 3: Создадим структуру пользователя. И добавим в нее список пользователей.
        
        struct Users {
            NSString *name;
            int   user_id;
        };
        
        int Count_Users = 0;
        printf("Введите количество пользователей: \n");
        scanf("%i",&Count_Users);
        
        struct Users Users_mass[Count_Users];
        
        
        for (int i = 0; i<Count_Users; i++) {
            printf("Введите имя пользователя: \n");
           
            char str[50] = {0};
            scanf("%s", str);
            NSString *lastName = [NSString stringWithUTF8String:str];
            Users_mass[i].user_id = i;
            Users_mass[i].name = lastName;
        }
        
        for (int i = 0; i<Count_Users; i++) {
            NSLog(@"Пользователь %i с именем %@",Users_mass[i].user_id,Users_mass[i].name);
        }
        

        
        
    }
    return 0;
}
