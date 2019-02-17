//
//  main.m
//  Task1
//
//  Created by Арсений Дорогин on 12/02/2019.
//  Copyright © 2019 Арсений Дорогин. All rights reserved.
//

#import <Foundation/Foundation.h>

void checkSymbol(char inputChar) {
    
    char array[] = {'a','b','c','d','e','f','g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q','r', 's', 't', 'u', 'v', 'w', 'x', 'y','z'};
    int count = strlen(array);
    int i;
    int flag = 0;
    
    for (i = 0; i < count; i++){
        //printf("@%c,@%c",array[i],inputChar);
        if (array[i] == inputChar){
            flag = 1;
            break;
        }
    }
    
    if (flag == 1){
        printf("Данная буква входит в английский алфавит \n");
    }else{
        printf("Данная буква не входит в английский алфавит \n");
    }
}


int calculate(NSString *method, int a, int b) {
    
    if ([method isEqualToString:@"+"]) {
        return a + b;
    }
    else if ([method isEqualToString:@"-"]) {
        return a - b;
    }
    else if ([method isEqualToString:@"*"]) {
        return a * b;
    }
    else if ([method isEqualToString:@"/"]) {
        return a / b;
    }
    else if ([method isEqualToString:@"%"]) {
        return a % b;
    }
    else {
        NSLog(@"Функция не знает переданный метод");
        return 0;
    }
    
    return a + b;
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char inputChar;
        
        printf("Введите букву: ");
        scanf("%c", &inputChar);
        
        checkSymbol(inputChar);
        
    }
    return 0;
}
