//
//  Calculate.h
//  Task1
//
//  Created by Арсений Дорогин on 10/03/2019.
//  Copyright © 2019 Арсений Дорогин. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef int (^CalculateBlock) (int a, int b);

typedef enum OperationBlock {
    OperationSum = 1,
    OperationRazn = 2,
    OperationProizv = 3,
    OperationDel = 4,
    OperationStepen = 5,
    OperationSumSquares = 6
} OperationBlock;


@interface Calculate : NSObject

+ (int)beginWithOperation: (OperationBlock) operation firstNumber: (int)firstNumber secondNumber: (int)secondNumber;

@end

NS_ASSUME_NONNULL_END
