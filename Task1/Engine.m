//
//  Engine.m
//  Task1
//
//  Created by Арсений Дорогин on 04/03/2019.
//  Copyright © 2019 Арсений Дорогин. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (instancetype)initWithModel:(NSString *)model {
    self = [super init];
    if (self) {
        [model retain];
        [model release];
        _model = model;
        NSLog(@"Model engine - %@", model);
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Dealloc Enging - %@", _model);
    [_model release];
    [super dealloc];
}

@end
