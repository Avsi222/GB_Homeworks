//
//  Car.h
//  Task1
//
//  Created by Арсений Дорогин on 04/03/2019.
//  Copyright © 2019 Арсений Дорогин. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"
#import "Helm.h"

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject

- (void)configWithEngine:(Engine *)engine andhelm:(Helm*)helm andWheels:(NSArray *)wheels;

@property (nonatomic, strong) Engine *engine;
@property (nonatomic, strong) NSArray *wheels;
@property (nonatomic, strong) Helm *helm;

@end


NS_ASSUME_NONNULL_END
