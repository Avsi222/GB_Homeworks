//
//  main.m
//  Task1
//
//  Created by Арсений Дорогин on 12/02/2019.
//  Copyright © 2019 Арсений Дорогин. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Task 1. Придумать 6 блоков
        // Task 2. Use separate queues to print resulsts
        int firstNumber = 10;
        int secondNumber = 5;
        
        int sum = [Calculate beginWithOperation:1 firstNumber:firstNumber secondNumber:secondNumber];
        int Razn = [Calculate beginWithOperation: 2 firstNumber:firstNumber secondNumber:secondNumber];
        int Proizv = [Calculate beginWithOperation: 3 firstNumber:firstNumber secondNumber:secondNumber];
        int Del = [Calculate beginWithOperation: 4 firstNumber:firstNumber secondNumber:secondNumber];
        int Stepen = [Calculate beginWithOperation: 5 firstNumber:firstNumber secondNumber:secondNumber];
        int sumSquares = [Calculate beginWithOperation: 6 firstNumber:firstNumber secondNumber:secondNumber];
        
        //QOS_CLASS_USER_INTERACTIVE задания, которые взаимодействуют с пользователем и занимают мало времени
        dispatch_queue_t asyncQueue = dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0);
        dispatch_async(asyncQueue, ^{
            NSLog(@"Just 1");
            NSLog(@"Just 2");
            NSLog(@"Just 3");
            NSLog(@"Just 4");
            NSLog(@"Just 5");
            NSLog(@"Just 6");
            NSLog(@"Just 7");
            NSLog(@"Just 8");
            NSLog(@"Just 9");
        });
        
        //concurrent queue
        dispatch_queue_t consecutiveQueue = dispatch_get_global_queue(QOS_CLASS_UTILITY, 0);
        dispatch_sync(consecutiveQueue, ^{
            NSLog(@"%d + %d = %d", firstNumber, secondNumber, sum);
            NSLog(@"%d - %d = %d", firstNumber, secondNumber, Razn);
        });
        
        dispatch_suspend(consecutiveQueue);
        
        // Create another queue
        dispatch_queue_t anotherQueue = dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0);
        dispatch_async(anotherQueue, ^{
            NSLog(@"%d * %d = %d", firstNumber, secondNumber, Proizv);
            NSLog(@"%d / %d = %d", firstNumber, secondNumber, Del);
        });
        
        //NSOperationQueue
        NSOperationQueue *operationQueue = [NSOperationQueue new];
        [operationQueue addOperationWithBlock:^{
            NSLog(@"%d ^ %d = %d", firstNumber, secondNumber, Stepen);
        }];
        [operationQueue addOperationWithBlock:^{
            NSLog(@"%d^2 + %d^2 = %d", firstNumber, secondNumber, sumSquares);
        }];
        
        dispatch_resume(consecutiveQueue);
        
    }
    return 0;
}
