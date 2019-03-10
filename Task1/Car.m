//
//  Car.m
//  Task1
//
//  Created by Арсений Дорогин on 04/03/2019.
//  Copyright © 2019 Арсений Дорогин. All rights reserved.
//

#import "Car.h"
#import "Engine.h"
#import "Wheel.h"

@implementation Car

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Create car");
    }
    return self;
}
- (void)configWithEngine:(Engine *)engine andhelm:(Helm*)helm andWheels:(NSArray *)wheels {
    [engine retain];
    [engine release];
    _engine = engine;
    NSLog(@"Add engine for car");
    
    [wheels retain];
    [wheels release];
    _wheels = wheels;
    for (Wheel *wheel in wheels) {
        NSLog(@"Add wheel (%@) for car", wheel.number);
    }
    
    [helm retain];
    [helm release];
    NSLog(@"Add Helm for car");
}
- (void)remove {
    NSLog(@"Remove engine,helm and wheels from car");
    for (Wheel *wheel in _wheels) {
        [wheel release];
    }
    [_wheels release];
    [_engine release];
    [_helm release];
}
- (void)dealloc {
    [self remove];
    NSLog(@"Dealloc car");
    [super dealloc];
}
@end
