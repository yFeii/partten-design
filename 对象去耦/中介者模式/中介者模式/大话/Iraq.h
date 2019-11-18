//
//  Iraq.h
//  中介者模式
//
//  Created by yFeii on 2019/9/29.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "Country.h"

NS_ASSUME_NONNULL_BEGIN

@interface Iraq : Country
- (void)declare:(NSString *)msg;
- (void)getMsg:(NSString *)msg;

@end

NS_ASSUME_NONNULL_END
