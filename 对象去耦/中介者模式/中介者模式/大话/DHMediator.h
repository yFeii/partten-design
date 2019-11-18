//
//  DHMediator.h
//  中介者模式
//
//  Created by yFeii on 2019/9/29.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 * 中介者基类
 */
NS_ASSUME_NONNULL_BEGIN

@class Country;
@interface DHMediator : NSObject

- (void)declare:(NSString *)msg country:(Country *)country;

@end

NS_ASSUME_NONNULL_END
