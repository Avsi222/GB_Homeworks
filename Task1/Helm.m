//
//  Helm.m
//  Task1
//
//  Created by Арсений Дорогин on 04/03/2019.
//  Copyright © 2019 Арсений Дорогин. All rights reserved.
//

#import "Helm.h"

@implementation Helm

- (instancetype)initWithModel:(NSString *)model {
    self = [super init];
    if (self) {
        [model retain];
        [model release];
        _model = model;
        NSLog(@"Model helm - %@", model);
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Dealloc helm - %@", _model);
    [_model release];
    [super dealloc];
}

@end
