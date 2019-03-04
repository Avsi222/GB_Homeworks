//
//  Engine.h
//  Task1
//
//  Created by Арсений Дорогин on 04/03/2019.
//  Copyright © 2019 Арсений Дорогин. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface Engine : NSObject

- (instancetype) initWithModel:(NSString *)model;

@property (nonatomic, strong) NSString *model;

@end


NS_ASSUME_NONNULL_END
