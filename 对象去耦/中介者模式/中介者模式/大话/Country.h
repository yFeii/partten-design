//
//  Country.h
//  中介者模式
//
//  Created by yFeii on 2019/9/29.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DHMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface Country : NSObject

@property (nonatomic, weak) DHMediator *mediator;

@end

NS_ASSUME_NONNULL_END
